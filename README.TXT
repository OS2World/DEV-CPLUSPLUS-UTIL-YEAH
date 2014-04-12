Welcome to version 0.9 of Your Extended Attribute Helper, YEAH.
===============================================================


This version, 0.9, of YEAH, is a pre release. It, and the coming
1.0 release, is freeware, (see the file LICENCE.TXT for details.)
The main difference between 0.9 and the coming 1.0 is the
documentation. The documentation available in 0.9 is more or less
a strict reference manual for the classes included. There is little
to no indication over "how to get started", both with respect to
plain usage, and to extending YEAH. For some information about that,
plus a discussion on "how was it done, and why" see the article
"Encapsulating Extended Attributes, Part 2" in the June issue of
EDM/2 (http://www.iqpac.com.)



Version 1.0 of YEAH is expected to be released before the end of
June.


1. What is YEAH?
----------------

YEAH is a C++ framework for extended attributes. For this collection
of C++ classes, I prefer the term "frame work" over the term
"library", since its main purpose is to allow you to write your own
extensions to the existing classes, as opposed to just using what is
given. Given is a base, something that does most of the dirty work,
and allows you to focus on the interesting parts, the extended
attributes themselves. Given is also a small collection of concrete
extended attribute classes. By no means are those classes the only
right implementations for the kind of extended attribute they
represent. What is the right implementation depends on how you want
to organise your software, what your software does, and what
extended attributes you use.



2. Restrictions.
----------------

YEAH can only be used with IBM Visual Age C++, or other C++
compilers that can 1) read IBM Visual Age C++ .LIB files, and 2) can
make use of IBM Open Class Library. The reason for this is that, out
of necessity, YEAH needs, as a bare minimum, collection classes and
a string class. The reason IBM Open Class Library is the one chosen
to provide collections and strings, is not a bias towards IBM, but
simply that it is the one I have available. Once compilers begin
supporting the new template syntax proposed by the ISO and ANSI
standards of C++, and the STL (Standard Template Library) is shipped
with those compiler's (which it will, as a natural part of the
library and header files of the proposed ISO and ANSI standard C++,)
YEAH will be rewritten to make use of it. I have chosen not to base
YEAH on any of the many implementations of STL that are available
today, for the reason that they are not close enough to the proposed
standard, simply because compilers do not support many of the
necessary template constructs.



3. Trademarks.
--------------

IBM, Visual Age C++ and Open Class Library are registered trade
marks of International Business Machines Inc.

C++ is (I think) a registered trademark of Unix Systems Laboratories.


4. Copyright.
-------------

YEAH, the compiler library, the source code and help files, is
the copyrighted material of Bj”rn Fahller.

