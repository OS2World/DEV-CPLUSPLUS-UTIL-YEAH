//------------------------------------------------------------
//
// Name:     unknown.cpp
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Show how to read an extended attribute of unknown
//           type and name. If an extended attribute of a type
//           that is not defined in YEAH, or not allowed dynamic,
//           an exception EATypeMismatchError is thrown with the
//           type identifier of the found EA as the error code.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------

#include <YEA.H>
#include <iostream.h>



void print(EA* pea)
{
  StringEA* psea = StringEA::cast(pea);
  if (psea)
  {
    cout << "String = \"" << *psea << "\"" << endl;
  }
  MTSequenceEA* pmtsea = MTSequenceEA::cast(pea);
  if (pmtsea)
  {
    cout << "MTSequenceEA" << endl;
    MTSequenceEA::Cursor c(*pmtsea);
    forCursor(c)
    {
      EA* pea = pmtsea->elementAt(c);
      print(pea);
    }
  }
  TSequenceEA<StringEA>* ptssea = TSequenceEA<StringEA>::cast(pea);
  if (ptssea)
  {
    cout << "TSequenceEA<StringEA>" << endl;
    TSequenceEA<StringEA>::Cursor c(*ptssea);
    forCursor(c)
    {
      cout << *(ptssea->elementAt(c)) << endl;
    }
  }
}

int main(int argc, char* argv[])
{
  try {
    if (argc != 3)
    {
      cerr << "Usage: " << argv[0] << ": filename eaname" << endl;
      return -1;
    }

    StringEA::allowDynamic();
    MTSequenceEA::allowDynamic();
    TSequenceEA<StringEA>::allowDynamic();

    EA* pea = EA::newFrom(argv[1],argv[2]);
    print(pea);
    delete pea;
  }
  catch (EAError& e)
  {
    cerr << "Oops, something was wrong here..." << endl;
    cerr << e.name() << endl;
    for (unsigned i=0; i < e.textCount(); ++i)
    {
      cerr << e.text(i) << endl;
    }

    cerr << endl << "Error code = " << e.errorId()
         << " (" << hex << e.errorId() << ')' << endl;
  }
}

