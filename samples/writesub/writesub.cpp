//------------------------------------------------------------
//
// Name:     writesub.cpp
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Show how to write an extended attribute.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------

#include <YEA.H>
#include <iostream.h>

int main(int argc, char* argv[])
{
  try {
    if (argc != 2)
    {
      cerr << "Usage: " << argv[0] << ": filename" << endl;
      return -1;
    }

    StringEA subject;
    cout << "Subject of " << argv[1] << ": " << flush;
    subject = IString::lineFrom(cin);
    subject.storeTo(argv[1], ".SUBJECT");
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
  return 0;
}

