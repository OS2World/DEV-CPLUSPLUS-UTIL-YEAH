//------------------------------------------------------------
//
// Name:     StringEA.CPP
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Implementation of a string extended attribute (EAT_ASCII)
//           based on the IString class from IBM Open Class Library,
//           and EA (through TEA) from YEAH.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------


#include "yea.h"
#include <strstrea.h>

istrstream& StringEA::readFrom(istrstream& is)
{
  unsigned short length;
  is.read((char*)(&length), sizeof(length));
  char* p = new char[length];
  is.read(p, length);
  IString::operator=(IString(p, length));
  delete p;
  return is;
}

ostrstream& StringEA::writeTo(ostrstream& os)
{
  unsigned short length = (unsigned short)IString::length();
  os.write((char*)&length, sizeof(length));
  os << *this;
  return os;
}

StringEA* StringEA::clone(void) const
{
  return new StringEA(*this);
}

