//------------------------------------------------------------
//
// Name:     ea.cpp
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Base class for extended attributes. The "engine" in
//           YEAH.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------

#include <IString.hpp>
#include <string.h>
#include "YEA.H"


#define INCL_DOSFILEMGR
#include <os2.h>

#include <strstrea.h>
#include <fstream.h>
#include <IExcBase.hpp>

//////////////
//
// Prototypes of static functions.
//
//////////////

IEXCLASSIMPLEMENT(EAError, IException);
IEXCLASSIMPLEMENT(EAReadError, EAError);
IEXCLASSIMPLEMENT(EAWriteError, EAError);
IEXCLASSIMPLEMENT(EATypeMismatchError, EAError);

static EA::CreatorMap defaultEAInit(void);
void setupGEA(EAOP2* peaop2, const IString& name);
EA* createFrom(EAOP2* peaop2, const EA::CreatorMap& cm);
static char* prepareFEA(EAOP2* peaop2, const IString& name);
static EA::NameSet nameset(ULONG type, PVOID p);
static void defaultErrorHandler(EA::Error, ULONG);

//////////////
//
// Definition of class static variables
//
/////////////

inline EA::CreatorMap defaultEAInit(void)
{
  return EA::CreatorMap();
}

EA::CreatorMap EA::defaultCreatorMap = defaultEAInit();
void (*EA::errorHandler)(EA::Error, ULONG) = defaultErrorHandler;

/////////////
//
// Public methods
//
/////////////

EA::~EA(void)
{
}

void EA::getFrom(const IString& file, const IString& name)
{
  peaop2 = new EAOP2;
  peaop2->fpGEA2List = (GEA2LIST*)new char[500];
  peaop2->fpFEA2List = (FEA2LIST*)new char[65536];
  ::setupGEA(peaop2, name);
  APIRET rc = DosQueryPathInfo(file, FIL_QUERYEASFROMLIST, peaop2, sizeof(*peaop2));
  if (rc)
  {
    delete peaop2->fpGEA2List;
    delete peaop2->fpFEA2List;
    delete peaop2;
    peaop2 = 0;
    errorHandler(ReadError, rc);
    return;
  }
  feaproc();
  delete peaop2->fpGEA2List;
  delete peaop2->fpFEA2List;
  delete peaop2;
  peaop2 = 0;
}

void EA::getFrom(fstreambase& file, const IString& name)
{
  peaop2 = new EAOP2;
  peaop2->fpGEA2List = (GEA2LIST*)new char[500];
  peaop2->fpFEA2List = (FEA2LIST*)new char[65536];
  ::setupGEA(peaop2, name);
  APIRET rc = DosQueryFileInfo(file.rdbuf()->fd(), FIL_QUERYEASFROMLIST, peaop2, sizeof(*peaop2));
  if (rc)
  {
    delete peaop2->fpGEA2List;
    delete peaop2->fpFEA2List;
    delete peaop2;
    peaop2 = 0;
    errorHandler(ReadError, rc);
    return;
  }
  feaproc();
  delete peaop2->fpGEA2List;
  delete peaop2->fpFEA2List;
  delete peaop2;
  peaop2 = 0;
}

void EA::storeTo(const IString& file, const IString& name)
{
  peaop2 = new EAOP2;
  peaop2->fpGEA2List = (GEA2LIST*)new char[500];
  peaop2->fpFEA2List = (FEA2LIST*)new char[65536];

  setupFEA(name);
  APIRET rc = DosSetPathInfo(file, FIL_QUERYEASIZE, peaop2, sizeof(*peaop2), 0);

  delete peaop2->fpGEA2List;
  delete peaop2->fpFEA2List;
  delete peaop2;
  peaop2 = 0;

  if (rc)
  {
    errorHandler(WriteError, rc);
  }
}

void EA::storeTo(fstreambase& file, const IString& name)
{
  peaop2 = new EAOP2;
  peaop2->fpGEA2List = (GEA2LIST*)new char[500];
  peaop2->fpFEA2List = (FEA2LIST*)new char[65536];

  setupFEA(name);
  APIRET rc = DosSetFileInfo(file.rdbuf()->fd(), FIL_QUERYEASIZE, peaop2, sizeof(*peaop2));

  delete peaop2->fpGEA2List;
  delete peaop2->fpFEA2List;
  delete peaop2;
  peaop2 = 0;

  if (rc)
  {
    errorHandler(WriteError, rc);
  }
}


/////////////
//
// Protected methods
//
/////////////

EA::EA(EA::Identifier anId)
 : id(anId),
   flags(0),
   peaop2(0)
{
}

EA::EA(const EA& e)
  : id(e.id),
    flags(e.flags),
    peaop2(0)
{
}

const EA& EA::operator=(const EA& e)
{
  id = e.id;
  flags = e.flags;
  return *this;
}

/////////////
//
// Private methods
//
/////////////

void EA::setupFEA(const IString& name)
{
  char* p = ::prepareFEA(peaop2, name);
  EAOP2& eaop2 = *peaop2;
  ostrstream os(p, 65536-((char*)eaop2.fpFEA2List-p));
  os.write((char*)&id, sizeof(id));
  writeTo(os);
  os.seekp(0, ios::end);
  unsigned long length = os.tellp();
  eaop2.fpFEA2List->list[0].cbValue = (USHORT)length;
  eaop2.fpFEA2List->list[0].fEA = flags;
  eaop2.fpFEA2List->cbList = length + p-(char*)eaop2.fpFEA2List;
  if (eaop2.fpFEA2List->cbList % 4)
  {
    eaop2.fpFEA2List->cbList+= 4-(eaop2.fpFEA2List->cbList % 4);
  }
}


void EA::feaproc(void)
{
  EAOP2& eaop2 = *peaop2;

  if (eaop2.fpFEA2List->list[0].cbValue == 0)
  {
    errorHandler(NoSuchEAError, 0);
    return;
  }
  istrstream is(eaop2.fpFEA2List->list[0].szName+eaop2.fpFEA2List->list[0].cbName+1,
                eaop2.fpFEA2List->list[0].cbValue);

  Identifier type;
  is.read((char*)(&type), sizeof(type));
  if (type != id)
  {
    errorHandler(TypeMismatchError, type);
    return;
  }
  flags = eaop2.fpFEA2List->list[0].fEA;
  readFrom(is);
}


/////////////
//
// Static methods
//
/////////////

void EA::remove(const IString& file, const IString& name)
{
  EAOP2 eaop2;
  eaop2.fpFEA2List = (FEA2LIST*)new char[1024];
  eaop2.fpGEA2List = 0;
  eaop2.oError = 0;
  char* p = ::prepareFEA(&eaop2, name);
  eaop2.fpFEA2List->list[0].cbValue = 0;
  eaop2.fpFEA2List->list[0].fEA = 0;
  eaop2.fpFEA2List->cbList = p-(char*)eaop2.fpFEA2List;
  if (eaop2.fpFEA2List->cbList % 4)
  {
    eaop2.fpFEA2List->cbList+= 4-(eaop2.fpFEA2List->cbList % 4);
  }
  APIRET rc = DosSetPathInfo(file, FIL_QUERYEASIZE, &eaop2, sizeof(eaop2), 0);
  delete eaop2.fpFEA2List;
  if (rc)
  {
    errorHandler(WriteError, rc);
  }
}

void EA::remove(fstreambase& file, const IString& name)
{
  EAOP2 eaop2;
  eaop2.fpFEA2List = (FEA2LIST*)new char[1024];
  eaop2.fpGEA2List = 0;
  eaop2.oError = 0;
  char* p = ::prepareFEA(&eaop2, name);
  eaop2.fpFEA2List->list[0].cbValue = 0;
  eaop2.fpFEA2List->list[0].fEA = 0;
  eaop2.fpFEA2List->cbList = p-(char*)eaop2.fpFEA2List;
  if (eaop2.fpFEA2List->cbList % 4)
  {
    eaop2.fpFEA2List->cbList+= 4-(eaop2.fpFEA2List->cbList % 4);
  }
  APIRET rc = DosSetFileInfo(file.rdbuf()->fd(), FIL_QUERYEASIZE, &eaop2, sizeof(eaop2));
  delete eaop2.fpFEA2List;
  if (rc)
  {
    errorHandler(WriteError, rc);
  }
}


EA* EA::newFrom(const IString& file, const IString& name, const CreatorMap& cm)
{
  EAOP2 eaop2;
  eaop2.oError = 0;
  eaop2.fpFEA2List = (FEA2LIST*)new char[500];
  eaop2.fpGEA2List = (GEA2LIST*)new char[65536];
  ::setupGEA(&eaop2, name);
  APIRET rc = DosQueryPathInfo(file, FIL_QUERYEASFROMLIST, &eaop2, sizeof(eaop2));
  if (rc)
  {
    delete eaop2.fpFEA2List;
    delete eaop2.fpGEA2List;
    errorHandler(ReadError, rc);
    return 0;
  }
  EA* pea = createFrom(&eaop2, cm);
  delete eaop2.fpFEA2List;
  delete eaop2.fpGEA2List;
  return pea;
}

EA* EA::newFrom(fstreambase& file, const IString& name, const CreatorMap& cm)
{
  EAOP2 eaop2;
  eaop2.oError = 0;
  eaop2.fpFEA2List = (FEA2LIST*)new char[500];
  eaop2.fpGEA2List = (GEA2LIST*)new char[65536];
  ::setupGEA(&eaop2, name);
  APIRET rc = DosQueryFileInfo(file.rdbuf()->fd(), FIL_QUERYEASFROMLIST, &eaop2, sizeof(eaop2));
  if (rc)
  {
    delete eaop2.fpFEA2List;
    delete eaop2.fpGEA2List;
    errorHandler(ReadError, rc);
    return 0;
  }
  EA* pea = createFrom(&eaop2, cm);
  delete eaop2.fpFEA2List;
  delete eaop2.fpGEA2List;
  return pea;
}

EA::NameSet EA::namesIn(const IString& name)
{
  return nameset(ENUMEA_REFTYPE_PATH, (PVOID)(char*)name);
}

EA::NameSet EA::namesIn(fstreambase& file)
{
  return nameset(ENUMEA_REFTYPE_FHANDLE, (PVOID)(file.rdbuf()->fd()));
}

////////////
//
// Static functions
//
////////////

static EA::NameSet nameset(ULONG type, PVOID p)
{
  DENA2* pdena = (DENA2*)new char[65364];
  pdena->oNextEntryOffset = 0;
  pdena->cbValue = 0;
  pdena->cbName = 0;
  pdena->fEA = 0;
  LONG count = -1;
  APIRET rc = DosEnumAttribute(type, p, 1, (PVOID)pdena, 65364, (PULONG)(&count), ENUMEA_LEVEL_NO_VALUE);
  if (rc)
  {
    delete pdena;
    EA::errorHandler(EA::ReadError, rc);
    return EA::NameSet();
  }
  EA::NameSet nameSet;
  DENA2* pWalker = pdena;
  while (count--)
  {
    nameSet.add(EA::Name(IString(pWalker->szName, unsigned(pWalker->cbName)), (EA::Flagset)(pWalker->fEA)));
    pWalker = (DENA2*)((char*)pWalker + pWalker->oNextEntryOffset);
  }
  delete pdena;
  return nameSet;
}


void setupGEA(EAOP2* peaop2, const IString& name)
{
  EAOP2& eaop2 = *peaop2;
  eaop2.oError = 0;
  eaop2.fpGEA2List->list[0].oNextEntryOffset = 0;
  eaop2.fpGEA2List->list[0].cbName = (BYTE)name.length();
  strcpy(eaop2.fpGEA2List->list[0].szName, name);
  eaop2.fpGEA2List->cbList = name.length()
    + sizeof(eaop2.fpGEA2List->list[0].oNextEntryOffset)
    + sizeof(eaop2.fpGEA2List->list[0].cbName)
    + sizeof(eaop2.fpGEA2List->cbList);
  if (eaop2.fpGEA2List->cbList % 4)
  {
    eaop2.fpGEA2List->cbList+= 4-(eaop2.fpGEA2List->cbList % 4);
  }
  eaop2.fpFEA2List->cbList = 65536;
}


EA* createFrom(EAOP2* peaop2, const EA::CreatorMap& cm)
{
  EAOP2& eaop2 = *peaop2;

  if (eaop2.fpFEA2List->list[0].cbValue == 0)
  {
    EA::errorHandler(EA::NoSuchEAError, 0);
    return 0;
  }
  istrstream is(eaop2.fpFEA2List->list[0].szName+eaop2.fpFEA2List->list[0].cbName+1,
                eaop2.fpFEA2List->list[0].cbValue);
  EA::Identifier type;
  is.read((char*)(&type), sizeof(type));
  streampos beginning = is.tellg();
  EA::CreatorMap::Cursor cur(cm);
  EA* pea = cm.locateElementWithKey(type, cur) ? cur.element().c(is,cur.element().pSubMap) : 0;
  if (pea)
  {
    is.seekg(beginning);
    pea->setCreatorMap(&cm);
    pea->readFrom(is);
  }
  return pea;
}


static char* prepareFEA(EAOP2* peaop2, const IString& name)
{
  EAOP2& eaop2 = *peaop2;
  eaop2.oError = 0;
  eaop2.fpFEA2List->list[0].oNextEntryOffset = 0;
  eaop2.fpFEA2List->list[0].cbName = (BYTE)name.length();
  strcpy(eaop2.fpFEA2List->list[0].szName, name);
  char* p = eaop2.fpFEA2List->list[0].szName+
            eaop2.fpFEA2List->list[0].cbName+1;
  return p;
}


static void defaultErrorHandler(EA::Error e, ULONG u)
{
  switch (e) {
  case EA::ReadError:
    {
      EAReadError err("Failed to read EA", u, IException::recoverable);
      throw err;
    }
    break;
  case EA::WriteError:
    {
      EAWriteError err("Failed to write EA", u, IException::recoverable);
      throw err;
    }
    break;
  case EA::NoSuchEAError:
  case EA::TypeMismatchError:
    {
      EATypeMismatchError err(e == EA::NoSuchEAError
                              ? "Unknown EA type" : "Unexpected EA type",
                              u, IException::recoverable);
       // error code 0 means that there was no EA to read
      throw err;
    }
    break;
  default:
    {
      EAError err("Unknown error!!!", u);
      throw err;
    }
  }
}


