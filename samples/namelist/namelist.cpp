//------------------------------------------------------------
//
// Name:     namelist.cpp
// Version:  0.9
// Author:   Bj”rn Fahller.
//
// Copyright (C) Bj”rn Fahller, 1996.
//
// Purpose:  Show how to write a custom error handler for EA,
//           and how to get the set of EA names available
//           for a file.
//
// History:
//          Ver.  Date         What
//          0.9   1996-05-26   First official release.
//
//------------------------------------------------------------

#include <yea.h>
#include <iostream.h>

// Store original error handler in this, for the
// custom one to call.

EA::ErrorHandler oldError = 0;



// Custom error handler that doesn't throw exceptions
// on read errors, but rather tells what was wrong.
// All other errors are handled as before.

void myhandler(EA::Error error, unsigned long code)
{
  if (error == EA::ReadError)
  {
    cout << "Read failed with code " << code << endl;
    return;
  }
  oldError(error,code);
}

int main(int argc, char* argv[])
{
  if (argc != 2)
  {
    cerr << "Usage: " << argv[0] << ": filename" << endl;
    return -1;
  }

  oldError = EA::errorHandler; // Store away old error handler,
  EA::errorHandler = myhandler; // and set the new one.


  // Get the set of extended attributes defined for the file.
  EA::NameSet names = EA::namesIn(argv[1]);


  if (names.numberOfElements() == 0)
  {
    cout << "No extended attributes on file \"" << argv[1] << "\"" << endl;
    return 0; // No reason to go on, if there were no attributes to list.
  }

  // Now, let's print the set of names found.

  cout << endl << "Extended attributes for \"" << argv[1] << "\"" << endl;
  cout << "Flag\t\tName" << endl;
  cout << "====\t\t====" << endl;
  EA::NameSet::Cursor c(names);
  forCursor(c)
  {
    cout << (names.elementAt(c).flags == EA::mandatory ? "mandatory" : "optional")
         << '\t' << names.elementAt(c).name << endl;
  }
  return 0;
}

