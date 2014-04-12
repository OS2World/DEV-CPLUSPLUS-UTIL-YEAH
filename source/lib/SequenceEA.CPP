//------------------------------------------------------------
//
// Name:     SequenceEA.cpp
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Base class for the template based implementation of
//           multi value single type extended attributes (EAT_MVST)
//           based on EA (through TEA) of YEAH.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------

#include "yea.h"
#include <strstrea.h>

IEXCLASSIMPLEMENT(EATSeqeuceEAInstError,EATypeMismatchError);

static EA* errorf(EA::Identifier id);

EA* (*SequenceEA::errorFunction)(EA::Identifier) = errorf;

SequenceEA::~SequenceEA(void)
{
}

SequenceEA::SequenceEA(EA::Identifier i, EA::CreatorMap* pCM)
 : contentType(i),
   cp(0),
   pCreatorMap(pCM)
{
}

SequenceEA::SequenceEA(const SequenceEA& gaea)
 : contentType(gaea.contentType),
   cp(gaea.cp),
   TEA<SequenceEA, SequenceEA::id>(gaea)
{
}

const SequenceEA& SequenceEA::operator=(const SequenceEA& gaea)
{
  if (&gaea != this)
  {
    cp = gaea.cp;
    contentType = gaea.contentType;
    TEA<SequenceEA, id>::operator=(gaea);
  }
  return *this;
}

EA* SequenceEA::createFrom(istrstream& is, EA::CreatorMap* pSubMap)
{
  streampos pos = is.tellg();
  unsigned short codePage;
  is.read((char*)(&codePage), sizeof(codePage));
  unsigned short entries;
  is.read((char*)(&entries), sizeof(entries));
  EA::Identifier id;
  is.read((char*)(&id), sizeof(id));
  EA::CreatorMap::Cursor c(*pSubMap);
  EA* pea = 0;
  if (pSubMap->locateElementWithKey(id,c))
  {
    EA::CreatorIdPair& cm = pSubMap->elementAt(c);
    pea = cm.c(is,cm.pSubMap);
  }
  else
  {
    pea = errorFunction(id);
  }
  is.seekg(pos);
  return pea;
}

static EA* errorf(EA::Identifier id)
{
  EATSeqeuceEAInstError err("TSequenceEA of unknown kind",id);
  ITHROW(err);
  return 0;
}
