# makefile
# Created by IBM WorkFrame/2 MakeMake at 22:45:57 on 25 May 1996
#
# The actions included in this make file are:
#  Compile::C++ Compiler
#  Lib::Library Tool

.SUFFIXES: .CPP .obj .pdb 

.all: \
    .\yeah.lib

.CPP.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Tdp /Sa /Q /Wcnvdclenuextgengotinilanobsordparporprorettrdtruuniuse /O /Gm /G5 /Gi /Fb /C %s

{d:\project\ea2\lib}.CPP.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Tdp /Sa /Q /Wcnvdclenuextgengotinilanobsordparporprorettrdtruuniuse /O /Gm /G5 /Gi /Fb /C %s

{D:\project\ea2\include}.CPP.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Tdp /Sa /Q /Wcnvdclenuextgengotinilanobsordparporprorettrdtruuniuse /O /Gm /G5 /Gi /Fb /C %s

.CPP.pdb:
    @echo " Compile::C++ Compiler "
    icc.exe /Tdp /Sa /Q /Wcnvdclenuextgengotinilanobsordparporprorettrdtruuniuse /O /Gm /G5 /Gi /Fb /C %s

{d:\project\ea2\lib}.CPP.pdb:
    @echo " Compile::C++ Compiler "
    icc.exe /Tdp /Sa /Q /Wcnvdclenuextgengotinilanobsordparporprorettrdtruuniuse /O /Gm /G5 /Gi /Fb /C %s

{D:\project\ea2\include}.CPP.pdb:
    @echo " Compile::C++ Compiler "
    icc.exe /Tdp /Sa /Q /Wcnvdclenuextgengotinilanobsordparporprorettrdtruuniuse /O /Gm /G5 /Gi /Fb /C %s

.\yeah.lib: \
    .\SequenceEA.obj \
    .\MTSequenceEA.obj \
    .\ea.obj \
    .\StringEA.obj
    @echo " Lib::Library Tool "
    ilib.exe  /nol /noi /noe yeah.lib -+.\SequenceEA.obj -+.\MTSequenceEA.obj -+.\ea.obj -+.\StringEA.obj;

.\SequenceEA.obj .\SequenceEA.pdb: \
    d:\project\ea2\source\SequenceEA.CPP \
    {d:\project\ea2\source;$(INCLUDE);}yea.h

.\MTSequenceEA.obj .\MTSequenceEA.pdb: \
    d:\project\ea2\source\MTSequenceEA.cpp \
    {d:\project\ea2\source;$(INCLUDE);}yea.h

.\ea.obj .\ea.pdb: \
    d:\project\ea2\source\ea.cpp \
    {d:\project\ea2\source;$(INCLUDE);}yea.h

.\StringEA.obj .\StringEA.pdb: \
    d:\project\ea2\source\StringEA.CPP \
    {d:\project\ea2\source;$(INCLUDE);}yea.h
