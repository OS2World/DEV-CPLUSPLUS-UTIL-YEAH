# YEAH.INF.mak
# Created by IBM WorkFrame/2 MakeMake at 18:38:08 on 7 April 1996
#
# The actions included in this make file are:
#  Compile::IPF Compiler

.SUFFIXES: .IPF .hlp 

.all: \
    .\YEAH.hlp

.IPF.hlp:
    @echo " Compile::IPF Compiler "
    ipfc.exe /INF %s

.\YEAH.hlp: \
    d:\project\ea2\help\YEAH.IPF
