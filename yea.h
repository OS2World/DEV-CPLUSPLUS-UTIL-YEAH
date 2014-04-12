#ifndef YEA_H
#define YEA_H

//------------------------------------------------------------
//
// Name:     yea.h
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  All necessary declarations for YEAH, both the base
//           functionality (class EA and TEA<T>) and the provided
//           implementations of StringEA, SequenceEA and
//           TSequenceEA<T>
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------


class fstreambase;
struct _EAOP2;

#include <IString.hpp>
#include <IMap.h>
#include <IKSSet.h>
#include <ISeq.h>
#include <IPtr.h>

#include <IExcept.hpp>
#include <strstrea.h>

IEXCLASSDECLARE(EAError, IException);
IEXCLASSDECLARE(EAReadError, EAError);
IEXCLASSDECLARE(EAWriteError, EAError);
IEXCLASSDECLARE(EATypeMismatchError, EAError);
IEXCLASSDECLARE(EATSeqeuceEAInstError,EATypeMismatchError);

class EA
{
public:
  typedef unsigned short Identifier;
  struct CreatorIdPair;
  typedef IMap<CreatorIdPair, Identifier> CreatorMap;
  typedef EA* (*Creator)(istrstream&, CreatorMap*);
  struct CreatorIdPair {
    Creator c;
    Identifier id;
    IMngPointer<CreatorMap> pSubMap;

    CreatorIdPair(const Creator& cc, Identifier i) : c(cc), id(i) {};
    IBoolean operator==(const CreatorIdPair& i) const { return id == i.id; };
    IBoolean operator<(const CreatorIdPair& i) const { return id < i.id; };
  };
  static CreatorMap defaultCreatorMap;

  typedef enum { optional = 0, mandatory = 0x80 } Flagset;
  struct Name {
    IString name;
    Flagset flags;
    Name(const IString& n, Flagset f) : name(n), flags(f) {};
    IBoolean operator==(const Name& n) const { return name == n.name; };
    IBoolean operator<(const Name& n) const { return name < n.name; };
  };
  typedef IKeySortedSet<Name, IString> NameSet;

  typedef enum {
    ReadError,
    WriteError,
    NoSuchEAError,
    TypeMismatchError
  } Error;

  typedef void (*ErrorHandler)(Error, unsigned long);
  static ErrorHandler errorHandler;

  static NameSet namesIn(const IString& file);
  static NameSet namesIn(fstreambase& file);

  virtual ~EA(void);

  Identifier attributeId(void) const { return id; };
  Flagset getFlags(void) const { return (Flagset)flags;};
  void setFlags(Flagset f) { flags = (char)f; };

  static EA* newFrom(const IString& file,
                     const IString& name,
                     const CreatorMap& = defaultCreatorMap);
  static EA* newFrom(fstreambase& file,
                     const IString& name,
                     const CreatorMap& = defaultCreatorMap);

  static void remove(const IString& file, const IString& name);
  static void remove(fstreambase& file, const IString& name);

  void getFrom(const IString& file, const IString& name);
  void getFrom(fstreambase& file, const IString& name);

  void storeTo(const IString& file, const IString& name);
  void storeTo(fstreambase& file, const IString& name);

  virtual EA* clone(void) const = 0;
  virtual void setCreatorMap(const CreatorMap*) {};
protected:
  EA(Identifier anId);
  EA(const EA&);
  const EA& operator=(const EA&);

  static istrstream& read(EA* pea, istrstream& is)
    { return pea->readFrom(is);};
  static ostrstream& write(EA* pea, ostrstream& os)
    { return pea->writeTo(os);};

  virtual istrstream& readFrom(istrstream&) = 0;
  virtual ostrstream& writeTo(ostrstream&) = 0;
private:
  void setupFEA(const IString&);
  void feaproc(void);

  Identifier id;
  _EAOP2* peaop2;
  char flags;

  friend EA* createFrom(_EAOP2*, const EA::CreatorMap&);
};

template <class T, EA::Identifier eaid>
class TEA : public EA
{
public:
  enum { id = eaid };

  static T* cast(EA*);
  static const T* cast(const EA*);
  virtual ~TEA(void) {};

  static void allowDynamic(EA::CreatorMap* pCM = &EA::defaultCreatorMap,
                           const EA::Creator& creator =  createFrom);
  static void disallowDynamic(EA::CreatorMap* pCM = &EA::defaultCreatorMap);
protected:
  TEA(void) : EA(eaid) {};
  TEA(const TEA<T, eaid>&t) : EA(t) {};
  const TEA<T, eaid>& operator=(const TEA<T, eaid>& t)
    { EA::operator=(t); return *this;};
private:
  static EA* createFrom(istrstream&, EA::CreatorMap*);

  static NameSet namesIn(const IString& file);
  static NameSet namesIn(fstreambase& file);
  static EA* newFrom(const IString& file,
                     const IString& name,
                     const CreatorMap& = defaultCreatorMap);
  static EA* newFrom(fstreambase& file,
                     const IString& name,
                     const CreatorMap& = defaultCreatorMap);
  static void remove(const IString& file, const IString& name);
  static void remove(fstreambase& file, const IString& name);
  static istrstream& read(EA*,istrstream&);
  static ostrstream& write(EA*,ostrstream&);
  class Creator {};
  class CreatorMap {};
  class CreatorIdPair {};
  class Name {};
  class Error {};
  class ErrorHandler {};
  class Flagset {};
  class Identifier {};
  class NameSet {};
};


class StringEA : public TEA<StringEA, 0xfffd>,
                 public IString
{
public:
  StringEA(void) : IString() {};
  StringEA(const void* pBuffer, unsigned lenBuffer, char padCharacter = ' ')
    : IString(pBuffer, lenBuffer, padCharacter) {};
  StringEA(const IString& s) : IString(s) {  };
  StringEA(int i) : IString(i) { };
  StringEA(unsigned u) : IString(u) {  };
  StringEA(double d) : IString(d) {  };
  StringEA(char c) : IString(c) {  };
  StringEA(unsigned char uc) : IString(uc) {  };
  StringEA(signed char sc) : IString(sc) {  };
  StringEA(const char* p) : IString(p) {  };
  StringEA(const unsigned char* p) : IString(p) {  };
  StringEA(const signed char* p) : IString(p) {  };
  StringEA(const void* pBuffer1, unsigned lenBuffer1,
           const void* pBuffer2, unsigned lenBuffer2,
           char padCharacter = ' ') : IString(pBuffer1, lenBuffer1,
                                              pBuffer2, lenBuffer2,
                                              padCharacter) {};
  StringEA(const void* pBuffer1, unsigned lenBuffer1,
           const void* pBuffer2, unsigned lenBuffer2,
           const void* pBuffer3, unsigned lenBuffer3,
           char padCharacter = ' ') : IString(pBuffer1, lenBuffer1,
                                              pBuffer2, lenBuffer2,
                                              pBuffer3, lenBuffer3,
                                              padCharacter) {};

  StringEA(const StringEA& s) : TEA<StringEA, StringEA::id>(s), IString(s) {};
  virtual ~StringEA(void) {};

  const StringEA& operator=(const StringEA& s)
  {
    TEA<StringEA, StringEA::id>::operator=(s);
    IString::operator=(s);
    return *this;
  };
  const StringEA& operator=(const IString& s)
  {
    IString::operator=(s);
    return *this;
  };

  StringEA(const IString& filename, const IString& eaname)
    { getFrom(filename, eaname);};
  StringEA(fstreambase& file, const IString& eaname)
    { getFrom(file, eaname); };

  virtual StringEA* clone(void) const;

protected:
  virtual istrstream& readFrom(istrstream&);
  virtual ostrstream& writeTo(ostrstream&);
private:
};

class MTSequenceEA : public TEA< MTSequenceEA, 0xffdf>,
                     public ISequence<EA*>
{
public:
  typedef EA* (*ErrorFunction)(EA::Identifier);
  static ErrorFunction errorFunction;

  MTSequenceEA(const EA::CreatorMap* = &EA::defaultCreatorMap);
  MTSequenceEA(const MTSequenceEA& mvea);
  MTSequenceEA(const ISequence<EA*>&,
               const EA::CreatorMap* = &EA::defaultCreatorMap);
  MTSequenceEA(const IString& filename,
               const IString& eaname,
               const EA::CreatorMap* = &EA::defaultCreatorMap);
  MTSequenceEA(fstreambase& file,
               const IString& eaname,
               const EA::CreatorMap* = &EA::defaultCreatorMap);

  const MTSequenceEA& operator=(const MTSequenceEA& mvea);
  const MTSequenceEA& operator=(const ISequence<EA*>& isea);
  virtual ~MTSequenceEA(void);

  unsigned short getCodePage(void) const { return cp; };
  void setCodePage(unsigned short p) { cp = p;};

  const EA::CreatorMap* pCreatorMap;

  virtual MTSequenceEA* clone(void) const;
  virtual void setCreatorMap(const EA::CreatorMap* pCM)
    { pCreatorMap = pCM; };
protected:
  virtual istrstream& readFrom(istrstream&);
  virtual ostrstream& writeTo(ostrstream&);
private:
  unsigned short cp;
};

class SequenceEA : public TEA<SequenceEA, 0xffde>
{
public:
  static EA* (*errorFunction)(EA::Identifier);

  virtual ~SequenceEA(void);

  unsigned short getCodePage(void) const { return cp; };
  void setCodePage(unsigned short p) { cp = p;};

  EA::Identifier contentId(void) const
    { return contentType; };
  virtual void setCreatorMap(const EA::CreatorMap* pCM)
    { pCreatorMap = pCM; };
  virtual SequenceEA* clone(void) const { return 0; };
protected:
  SequenceEA(EA::Identifier id,
             EA::CreatorMap* pCM = &EA::defaultCreatorMap);
  SequenceEA(const SequenceEA& mvea);

  const SequenceEA& operator=(const SequenceEA& mvea);

  virtual ostrstream& writeTo(ostrstream& os) { return os;};
  virtual istrstream& readFrom(istrstream& is) { return is;};

  const EA::CreatorMap* pCreatorMap;

private:
  static void disallowDynamic(EA::CreatorMap* pCM = &EA::defaultCreatorMap);

  static EA* createFrom(istrstream&, EA::CreatorMap*);

  unsigned short cp;
  EA::Identifier contentType;

  SequenceEA(void) {};
  friend EA* TEA<SequenceEA, id>::createFrom(istrstream&, EA::CreatorMap*);
protected:
  static void allowDynamic(EA::CreatorMap* pCM,
                           const EA::Creator& creator = createFrom)
    { TEA<SequenceEA, SequenceEA::id>::allowDynamic(pCM, creator);};
};

template <class ET>
class TSequenceEA : public SequenceEA,
                    public ISequence<ET*>
{
public:
  enum { elementId = ET::id };

  static TSequenceEA<ET>* cast(EA*);
  static const TSequenceEA<ET>* cast(const EA*);

  TSequenceEA(EA::CreatorMap* pCM = &EA::defaultCreatorMap)
    : SequenceEA(ET::id, pCM) {};
  TSequenceEA(const TSequenceEA<ET>& t);
  TSequenceEA(const ISequence<ET*>& t,
              EA::CreatorMap* pCM = &EA::defaultCreatorMap)
    : SequenceEA(ET::id, pCM), ISequence<ET*>(t) {};
  TSequenceEA(const IString& filename,
              const IString& eaname,
              EA::CreatorMap* pCM = &EA::defaultCreatorMap)
    : SequenceEA(ET::id,pCM) { getFrom(filename, eaname); };
  TSequenceEA(fstreambase& file,
              const IString& eaname,
              EA::CreatorMap* pCM = &EA::defaultCreatorMap)
    : SequenceEA(ET::id, pCM) { getFrom(file, eaname);};
  const TSequenceEA<ET>& operator=(const TSequenceEA<ET>& t);
  const TSequenceEA<ET>& operator=(const ISequence<ET*>& t);

  virtual ~TSequenceEA(void);

  static void allowDynamic(EA::CreatorMap* pCM = &EA::defaultCreatorMap,
                           const EA::Creator& creator = createFrom);
  static void disallowDynamic(EA::CreatorMap* pCM = &EA::defaultCreatorMap);


  virtual TSequenceEA<ET>* clone(void) const;
protected:
  virtual ostrstream& writeTo(ostrstream& os);
  virtual istrstream& readFrom(istrstream& is);
private:
  static EA* createFrom(istrstream&, EA::CreatorMap*);
};

template <class ET>
void TSequenceEA<ET>::allowDynamic(EA::CreatorMap* pCM,
                                   const EA::Creator& creator)
{
  EA::CreatorMap::Cursor cursor(*pCM);
  if (!pCM->locateElementWithKey(SequenceEA::id, cursor))
  {
    SequenceEA::allowDynamic(pCM);
    pCM->locateElementWithKey(SequenceEA::id,cursor);
  }
  EA::CreatorIdPair& cidp = pCM->elementAt(cursor);
  if (cidp.pSubMap == 0)
  {
    cidp.pSubMap = IMngPointer<EA::CreatorMap>(new EA::CreatorMap,
                                               IExplicitInit());
  }
  ET::allowDynamic(cidp.pSubMap, creator);
}

template <class ET>
void TSequenceEA<ET>::disallowDynamic(EA::CreatorMap* pCM)
{
  EA::CreatorIdPair& cidp = pCM->elementWithKey(SequenceEA::id);
  ET::disallowDynamic(cidp.pSubMap);
  if (cidp.pSubMap->numberOfElements() == 0)
  {
    pCM->removeElementWithKey(SequenceEA::id);
  }
}


inline
const EA::Identifier& key(const EA::CreatorIdPair& p)
{
  return p.id;
}

inline
const IString& key(const EA::Name& n)
{
  return n.name;
}

template <class T, EA::Identifier eaid>
void TEA<T, eaid>::allowDynamic(EA::CreatorMap* pCM,
                                const EA::Creator& creator)
{
  pCM->add(EA::CreatorIdPair(creator, eaid));
}

template <class T, EA::Identifier eaid>
void TEA<T, eaid>::disallowDynamic(EA::CreatorMap* pCM)
{
  pCM->removeElementWithKey(eaid);
}


template <class T, EA::Identifier eaid>
EA* TEA<T, eaid>::createFrom(istrstream& is, EA::CreatorMap*)
{
  EA* pt = new T;
  return pt;
}


template <class T, EA::Identifier eaid>
const T* TEA<T, eaid>::cast(const EA* pea)
{
  if (!pea)
  {
    return 0;
  }
  if (pea->attributeId() == eaid)
  {
    return (const T*)(pea);
  }
  return 0;
}

template <class T, EA::Identifier eaid>
T* TEA<T, eaid>::cast(EA* pea)
{
  if (!pea)
  {
    return 0;
  }
  if (pea->attributeId() == eaid)
  {
    return (T*)(pea);
  }
  return 0;
}


template <class ET>
EA* TSequenceEA<ET>::createFrom(istrstream& is, EA::CreatorMap*)
{
  TSequenceEA<ET>* pct = new TSequenceEA<ET>;
  return pct;
}

template <class ET>
TSequenceEA<ET>::TSequenceEA(const TSequenceEA<ET>& t)
  : SequenceEA(t)
{
  Cursor c(t);
  forCursor (c)
  {
    addAsLast(c.element()->clone());
  }
}

template <class ET>
TSequenceEA<ET>::TSequenceEA(const ISequence<ET*>& t,
                             EA::CreatorMap* pCM)
  : SequenceEA(ET::id, pCM)
{
  Cursor c(t);
  forCursor (c)
  {
    addAsLast(c.element()->clone());
  }
}

template <class ET>
const TSequenceEA<ET>& TSequenceEA<ET>::operator=(const TSequenceEA<ET>& t)
{
  if (&t != this)
  {
    while (numberOfElements())
    {
      EA* p = firstElement();
      removeFirst();
      delete p;
    }
    SequenceEA::operator=(t);
    Cursor c(t);
    forCursor (c)
    {
      addAsLast(c.element()->clone());
    }
  }
  return *this;
};

template <class ET>
const TSequenceEA<ET>& TSequenceEA<ET>::operator=(const ISequence<ET*>& t)
{
  if (&t != (const ISequence<ET*>*)this)
  {
    while (numberOfElements())
    {
      EA* p = firstElement();
      removeFirst();
      delete p;
    }
    Cursor c(t);
    forCursor (c)
    {
      addAsLast(c.element()->clone());
    }
  }
  return *this;
};


template <class ET>
TSequenceEA<ET>::~TSequenceEA(void)
{
  while (numberOfElements() > 0)
  {
    EA* pea = firstElement();
    removeFirst();
    delete pea;
  }
}

template <class ET>
TSequenceEA<ET>* TSequenceEA<ET>::cast(EA* pea)
{
  SequenceEA* psea = SequenceEA::cast(pea);
  if (psea == 0)
  {
    return 0;
  }
  if (psea->contentId() == ET::id)
  {
    return (TSequenceEA<ET>*)(psea);
  }
  return 0;
}

template <class ET>
const TSequenceEA<ET>* TSequenceEA<ET>::cast(const EA* pea)
{
  const SequenceEA* psea = SequenceEA::cast(pea);
  if (psea == 0)
  {
    return 0;
  }
  if (psea->contentId() == ET::id)
  {
    return (const TSequenceEA<ET>*)(psea);
  }
  return 0;
}

template <class ET>
istrstream& TSequenceEA<ET>::readFrom(istrstream& is)
{
  unsigned short cp;
  is.read((char*)(&cp), sizeof(cp));
  setCodePage(cp);
  unsigned short entries;
  is.read((char*)(&entries), sizeof(entries));
  EA::Identifier identifier;
  is.read((char*)(&identifier), sizeof(identifier));
  if (identifier != ET::id)
  {
    EA::errorHandler(TypeMismatchError, identifier);
    return is;
  }
  for (unsigned count=0; count < entries; ++count)
  {
    ET* pt = new ET;
    pt->setCreatorMap(pCreatorMap);
    EA::read(pt, is);
    add(pt);
  }

  return is;
}

template <class ET>
ostrstream& TSequenceEA<ET>::writeTo(ostrstream& os)
{
  unsigned short cp = getCodePage();
  os.write((char*)(&cp), sizeof(cp));
  unsigned short entries = (unsigned short)numberOfElements();
  os.write((char*)(&entries), sizeof(entries));
  EA::Identifier identifier = ET::id;
  os.write((char*)(&identifier), sizeof(identifier));
  Cursor c(*this);
  forCursor(c)
  {
    ET* pet = c.element();
    EA::write(pet, os);
  }

  return os;
}

template <class ET>
TSequenceEA<ET>* TSequenceEA<ET>::clone(void) const
{
  return new TSequenceEA<ET>(*this);
}

#pragma define(IKeySortedSet<EA::Name, IString>)


#endif // YEA_H

