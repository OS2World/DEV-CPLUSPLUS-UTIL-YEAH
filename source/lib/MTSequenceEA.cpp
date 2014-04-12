//------------------------------------------------------------
//
// Name:     MTSequenceEA.CPP
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Implementation of multi value multi type extended
//           attributes (EAT_MVMT) based on ISequence from
//           IBM Open Class Library and EA (through TEA) from
//           YEAH.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------

#include "yea.h"
#include <strstrea.h>

EA* error(EA::Identifier);

MTSequenceEA::ErrorFunction MTSequenceEA::errorFunction = error;

MTSequenceEA::MTSequenceEA(const EA::CreatorMap* pcrm)
 : pCreatorMap(pcrm)
{
}

MTSequenceEA::MTSequenceEA(const MTSequenceEA& mvea)
  : TEA<MTSequenceEA, MTSequenceEA::id>(mvea),
    pCreatorMap(mvea.pCreatorMap)
{
  Cursor c(mvea);
  forCursor(c)
  {
    addAsLast(c.element()->clone());
  }
}

MTSequenceEA::MTSequenceEA(const ISequence<EA*>& seq,
                           const EA::CreatorMap* pcrm)
  : pCreatorMap(pcrm)
{
  Cursor c(seq);
  forCursor(c)
  {
    addAsLast(c.element()->clone());
  }
}

MTSequenceEA::MTSequenceEA(const IString& filename,
                           const IString& eaname,
                           const EA::CreatorMap* pcrm)
  : pCreatorMap(pcrm)
{
   getFrom(filename, eaname);
}

MTSequenceEA::MTSequenceEA(fstreambase& file,
                           const IString& eaname,
                           const EA::CreatorMap* pcrm)
  : pCreatorMap(pcrm)
{
   getFrom(file, eaname);
}

const MTSequenceEA& MTSequenceEA::operator=(const MTSequenceEA& mvea)
{
  if (&mvea == this)
  {
    return *this;
  }
  pCreatorMap = mvea.pCreatorMap;
  while (numberOfElements())
  {
    EA* p = firstElement();
    removeFirst();
    delete p;
  }
  TEA<MTSequenceEA, MTSequenceEA::id>::operator=(mvea);
  Cursor c(mvea);
  forCursor(c)
  {
    addAsLast(c.element()->clone());
  }
  return *this;
}

const MTSequenceEA& MTSequenceEA::operator=(const ISequence<EA*>& isea)
{
  while (numberOfElements())
  {
    EA* p = firstElement();
    removeFirst();
    delete p;
  }
  Cursor c(isea);
  forCursor(c)
  {
    addAsLast(c.element()->clone());
  }
  return *this;
}

MTSequenceEA::~MTSequenceEA(void)
{
  while (numberOfElements())
  {
    EA* p = firstElement();
    removeFirst();
    delete p;
  }
}


istrstream& MTSequenceEA::readFrom(istrstream& is)
{
  is.read((char*)(&cp), sizeof(cp));
  unsigned short entries;
  is.read((char*)(&entries), sizeof(entries));
  while (entries--)
  {
    EA::Identifier type;
    is.read((char*)(&type), sizeof(type));
    EA* pea = 0;
    EA::CreatorMap::Cursor c(*pCreatorMap);
    if (pCreatorMap->locateElementWithKey(type, c))
    {
      pea = c.element().c(is,c.element().pSubMap);
      pea->setCreatorMap(pCreatorMap);
      EA::read(pea, is);
    }
    else
    {
      pea = errorFunction(type);
    }
    add(pea);
  }
  return is;
}

ostrstream& MTSequenceEA::writeTo(ostrstream& os)
{
  os.write((char*)(&cp), sizeof(cp));
  unsigned short entries = (unsigned short)numberOfElements();
  os.write((char*)(&entries), sizeof(entries));
  Cursor c(*this);
  forCursor(c)
  {
    EA* p = c.element();
    EA::Identifier type = p->attributeId();
    os.write((char*)(&type), sizeof(type));
    EA::write(p, os);
  }
  return os;
}

MTSequenceEA* MTSequenceEA::clone(void) const
{
  return new MTSequenceEA(*this);
}


EA* error(EA::Identifier i)
{
  EA::errorHandler(EA::TypeMismatchError, i);
  return 0;
}

