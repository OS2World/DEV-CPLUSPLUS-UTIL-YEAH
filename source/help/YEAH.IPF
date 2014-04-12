.*------------------------------------------------------------
.*
.* Name:     yeah.ipf
.* Version:  0.9
.* Author:   Bj”rn Fahller.
.*
.* Copyright (C) Bj”rn Fahller, 1996.
.*
.* Purpose:  Documentation for YEAH.
.*
.* History:
.*          Ver.  Date         What
.*          0.9   1996-05-26   First official release.
.*
.*------------------------------------------------------------

:userdoc.
:prolog.
:title.YEA.H - Your Extended Attribute Helper
:eprolog.

.nameit symbol=version text='0.9'

:h1 width=30% height=100% id=start res=100 group=1.About YEA.H
.br
:i1.About YEA.H
This reference introduce you to YEA.H, a C++ frame work for
extended attributes.
.*--------------------------------
:p.
:link  reftype=hd res=101 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=101 dependent group=2.Introduction:elink.
:li.:link  reftype=hd res=103 dependent group=2.Licence agreement:elink.
:li.:link  reftype=hd res=104 dependent group=2.Trade marks:elink.
:li.:link  reftype=hd res=105 dependent group=2.Contacting the author:elink.
:li.:link  reftype=hd res=106 dependent group=2.Publishing EA classes:elink.
:li.:link  reftype=hd res=107 dependent group=2.Limitations:elink.
:esl.
:h2 res=101 x=30% width=70% height=100%. Introduction.
.br
:hp2.Introducing YEA.H - Your Extended Attribute Helper:ehp2.
:p.
YEA.H is an Object Oriented C++ frame work making it simple for you to support
extended attributes in your software.
:p.
YEA.H is designed to be:
:ul.
:li.Easy to use as a class library, to immediately gain support for some of
the most frequently used extended attributes.
:li.Easy to extend with new extended attributes, or make custom implementations
for some of the supported attributes.
:eul.
:h2 res=103 x=30% width=70% height=100%. Licence agreement.
.br
YEAH, its compiled library, source code, and documentation, is
licensed to you under the following license agreement. Use or
distribution of YEAH constitutes your acceptance of that
agreement.
:p.
YEAH, the compiled library, source code and, documentation, is
the copyrighted material of Bj&oe.rn Fahller.
:p.
Under this licence, you may:

:ol.
:li.Redistribute YEAH in any way for and shape, suitable to you
as long as the original contents remain unchanged and that the
redistribution is free (fees to cover media and transfer costs
are allowed.)

:li.Use YEAH, in your applications, be they free, shareware,
educational or commercial.

:li.Write and publish additional classes to YEAH, as long as
those additional classes are published with the same licence
constraints as YEAH.

:li.Make proprietary changes to YEAH, provided you do not
redistribute YEAH with those changes.
:eol.
:p.
:hp7.Warranty:ehp7.
:p.
:hp2.
BECAUSE YEAH IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE PROGRAM, TO THE EXTENT PERMITTED BY LAW. USE YEAH AT
YOUR OWN RISK.
:p.
IN NO EVENT SHALL BJ&Oe.RN FAHLLER BE HELD LIABLE FOR ANY DAMAGE
DUE TO THE USE, ABUSE, OR INABILITY TO USE, YEAH.
:ehp2.

:h2 res=104 x=30% width=70% height=100%. Trade Marks.
.br
IBM, Visual Age C++ and Open Class Library are registered trade
marks of International Business Machines Inc.
:p.
C++ is (I think) a registered trademark of Unix Systems Laboratories.
:p.

:h2 res=105 x=30% width=70% height=100%. Contacting the Author.
.br
If you have questions, suggestions, want to report bugs, include
new classes in the base package, or for other reasons would like
to get in youch with Bj&oe.rn Fahller, he can be reached in the
following ways&colon.
:parml break=none.
:pt.E-mail&colon.
:pd.bjorn&atsign.algonet.se
:pt.Mail&colon.
:pd.Bj&oe.rn Fahller
.br
Siljansv&ae.gen 35
.br
S-120 55 &Ao.rsta
.br
SWEDEN.
:pt.Phone&colon.
:pd.+46 8 918297 (evenings CET)
:pt.Fax&colon.
:pd.+46 8 918297 (daytime CET)
:eparml.
:p.
The newsgroup comp.os.os2.programmer.oop will also be monitored
for discussions regarding YEA.H, but my newsfeed is very slow,
often lagging up to a week, so this is most probably not the best
way to get quick responses.
:p.
:h2 res=106 x=30% width=70% height=100%. Publishing EA classes.
.br
If you want to publish concrete extended attribute classes based on
YEA.H, you have 3 choises within the :link reftype=hd res=103
dependent group=2.licence agreement:elink..
:ol.
:li.Publish the class on your own, with the same :link reftype=hd
res=103 dependent group=3.licence constraints:elink. as
YEA.H, i.e. free of charge and with source code.
:li.Publish it as a "contribution" to YEA.H. Future releases of YEA.H
will have a "contrib" subdirectory, with such classes. You will be the
copyright holder for such a contribution, hold the full responsibility
for it, document it as you please. The compiled library file, or object
file, will be your responsibility too, and it will not be a part of
YEAH.LIB.
:li.Publish it as a part of YEAH. The difference between this and the
previous, is that the compiled object file will be included in YEAH.LIB,
that the documentation will be included in future versions of YEAH.INF,
that I want to have a say about the way the class is shaped. You still
remain the copyright holder, and hold the full responsibility for
your classes.
:p.
If you have plans for such a class, or a set of such classes, please
:link reftype=hd res=105 dependent group=2.contact me:elink. and tell
me of your plans. If some one else is also working on a similar class,
I will introduce you to each other, so that you may share ideas and,
if you so wish, cooperate.
:eol.
:p.
For the latter kind, I would specifically like to see an icon
class, and a C++ stream based binary class. Bitmap and metafile
extended attribute classes would be most welcome too.

:h2 res=107 x=30% width=70% height=100%. Limitations.
.br
YEA.H can currently only be used with IBM Visual Age C++, since it
makes use of a Visual Age C++ specific #pragma directive (
#pragma define(IKeySortedSet<EA&colon.&colon.Name, IString>)),
which expands the template, regardless of whether it is used
in your application or not. Not doing this results in a link
error. In the future, this will be removed, since the C++
construct IKeySortedSet<EA&colon.&colon.Name, IString>; is
defined by the proposed ANSI/ISO C++ standard to expand the
template.
:p.
As can be seen, it also makes use of classes IKeySortedSet and
IString, which are part of IBM Open Class Library. Once enough
parts of the proposed ANSI/ISO C++ standard are commonplace in
compilers, a compiler independent version will be written, since
the ANSI/ISO C++ standard will include the necessary collection
classes and a string class.

:h1 width=30% height=100% res=200 group=1.Classes
:i1.Classes
.br
These are the classes available in version &version. of YEA.H
:p.
:sl compact.
:li.:link  reftype=hd res=201 dependent group=1.EA.:elink.
:li.:link  reftype=hd res=202 dependent group=1.StringEA.:elink.
:li.:link  reftype=hd res=203 dependent group=1.MTSequenceEA.:elink.
:li.:link  reftype=hd res=204 dependent group=1.TSequenceEA<T>.:elink.
:li.:link  reftype=hd res=205 dependent group=1.TEA<T, EA&colon.&colon.Identifier>.:elink.
:li.:link  reftype=hd res=206 dependent group=1.SequenceEA.:elink.
:esl.

.*************************************************
.**
.** class EA
.**
.*************************************************

:h2 res=201 group=1 width=30% height=100%. EA.
.br
EA, Extended Attribute base class.
:link  reftype=hd res=210 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=210 dependent group=2.Description.:elink.
:li.:link  reftype=hd res=211 dependent group=2.Derivation.:elink.
:li.:link  reftype=hd res=212 dependent group=2.Public Interface.:elink.
:li.:link  reftype=hd res=213 dependent group=2.Protected Interface.:elink.
:esl.
:h3 hide res=210 x=30% width=70% height=100%. EA - Description.
.br
EA is the base class for all extended attributes. Most of the use of EA
directly is through the many static functions for handling extended
attributes in general. Most use of EA, however, will be indirectly, through
objects of other classes, implementing concrete extended attributes.
:h3 hide res=211 x=30% width=70% height=100%. EA - Derivation.
.br
Inherits:
:sl.
:li.none.
:esl.
:p.

Inherited by:
:sl.
:li.:link reftype=hd res=202 dependent group=1.StringEA:elink. (through
:link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=202 dependent group=1.StringEA:elink.,EAT_ASCII>)
:li.:link reftype=hd res=203 dependent group=1.MTSequenceEA:elink. (through
:link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=203 dependent group=1.MTSequenceEA:elink., EAT_MVMT>)
:li.:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink. (through
:link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=206 dependent group=1.SequenceEA:elink., EAT_MVST> and
:link reftype=hd res=206 dependent group=1.SequenceEA:elink.)
:esl.
:h3 hide res=212 x=30% width=70% height=100%. EA - Public Interface.
.br
Nested types:
:sl compact.
:li.:link reftype=hd res=2121 dependent group=3.Identifier:elink.
:li.:link reftype=hd res=2122 dependent group=3.Creator:elink.
:li.:link reftype=hd res=2123 dependent group=3.CreatorIdPair:elink.
:li.:link reftype=hd res=2124 dependent group=3.CreatorMap:elink.
:li.:link reftype=hd res=2125 dependent group=3.Flagset:elink.
:li.:link reftype=hd res=2126 dependent group=3.Name:elink.
:li.:link reftype=hd res=2127 dependent group=3.NameSet:elink.
:li.:link reftype=hd res=2128 dependent group=3.Error:elink.
:li.:link reftype=hd res=2129 dependent group=3.ErrorHandler:elink.
:esl.
:p.
Static Public Data.
:sl compact.
:li.:link reftype=hd res=21210 dependent group=3.defaultCreatorMap:elink.
:li.:link reftype=hd res=21211 dependent group=3.errorHandler:elink.
:esl.
:p.
Static Public Functions.
:sl compact.
:li.:link reftype=hd res=21212 dependent group=3.namesIn:elink.
:li.:link reftype=hd res=21213 dependent group=3.newFrom:elink.
:li.:link reftype=hd res=21214 dependent group=3.remove:elink.
:esl.
:p.
Public Instance Functions.
:sl compact.
:li.:link reftype=hd res=21215 dependent group=3.Destructor:elink.
:li.:link reftype=hd res=21216 dependent group=3.attributeId:elink.
:li.:link reftype=hd res=21217 dependent group=3.getFlags:elink.
:li.:link reftype=hd res=21218 dependent group=3.setFlags:elink.
:li.:link reftype=hd res=21219 dependent group=3.getFrom:elink.
:li.:link reftype=hd res=21220 dependent group=3.storeTo:elink.
:li.:link reftype=hd res=21221 dependent group=3.clone:elink.
:li.:link reftype=hd res=21222 dependent group=3.setCreatorMap:elink.
:esl.
:p.
:h3 hide res=213 x=30% width=70% height=100%. EA - Protected Interface.
.br
Static Protected Functions.
:sl compact.
:li.:link reftype=hd res=2131 dependent group=3.read:elink.
:li.:link reftype=hd res=2132 dependent group=3.write:elink.
:esl.
:p.
Instance Protected Functions.
:sl compact.
:li.:link reftype=hd res=2133 dependent group=3.Constructors:elink.
:li.:link reftype=hd res=2134 dependent group=3.Assignment Operator:elink.
:li.:link reftype=hd res=2135 dependent group=3.readFrom:elink.
:li.:link reftype=hd res=2136 dependent group=3.writeTo:elink.
:esl.

.*************************************************
.**
.** class StringEA
.**
.*************************************************


:h2 res=202 group=1 width=30%height=100%. StringEA.
.br
StringEA, String extended attribute (EAT_ASCII).
:link  reftype=hd res=220 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=220 dependent group=2.Description.:elink.
:li.:link  reftype=hd res=221 dependent group=2.Derivation.:elink.
:li.:link  reftype=hd res=222 dependent group=2.Public Interface.:elink.
:li.:link  reftype=hd res=223 dependent group=2.Protected Interface.:elink.
:esl.

:h3 hide res=220 x=30% width=70% height=100%. StringEA - Description.
.br
StringEA represents ASCII string extended attributes used, for example,
in the .SUBJECT and .LONGNAME attributes supported by the WPS. To make
StringEA easy to use, it inherits IString, and provides the full
functionality of IString in addition, of course, to being an extended
attribute that can be read and written to files.
:p.
StringEA implements the EAT_ASCII extended attribute.

:h3 hide res=221 x=30% width=70% height=100%. StringEA - Derivation.
.br
:artwork name='StringEA.BMP' align=center linkfile='stringeal.dat' fit.
:p.
StringEA is multiply inherited with IString, to provide full string
functionality for the extended attribute.


:h3 hide res=222 x=30% width=70% height=100%. StringEA - Public Interface.
.br
Public Instance Functions
:sl compact.
:li.:link reftype=hd res=2220 dependent group=3.Constructors:elink.
:li.:link reftype=hd res=22201 dependent group=3.Assignment Operator:elink.
:li.:link reftype=hd res=22202 dependent group=3.clone:elink.
:esl.
:p.
  Inherited Public Instance Functions.
:p.
    From :link reftype=hd res=201 dependent group=1.EA:elink.
:sl compact.
:li.:link reftype=hd res=2221 dependent group=3.attributeId:elink.
:li.:link reftype=hd res=21217 dependent group=3.getFlags:elink.
:li.:link reftype=hd res=21218 dependent group=3.setFlags:elink.
:li.:link reftype=hd res=2222 dependent group=3.getFrom:elink.
:li.:link reftype=hd res=2223 dependent group=3.storeTo:elink.
:li.:link reftype=hd res=21222 dependent group=3.setCreatorMap:elink.
:esl.
:p.
Public Static Functions
:sl compact.
:li.-
:esl.
:p.
  Inherited Public Static Functions.
:p.
    From :link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=202 dependent group=1.StringEA:elink., EAT_ASCII>
:sl compact.
:li.:link reftype=hd res=2224 dependent group=3.cast:elink.
:li.:link reftype=hd res=2225 dependent group=3.allowDynamic:elink.
:li.:link reftype=hd res=2226 dependent group=3.disallowDynamic:elink.
:esl.
:p.
Class Constants
:sl compact.
:li.-
:esl.
  Inherited Class Constants
:p.
    From :link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=202 dependent group=1.StringEA:elink., EAT_ASCII>
:sl compact.
:li.:link reftype=hd res=2227 dependent group=3.id:elink.
:esl.
:h3 hide res=223 x=30% width=70% height=100%. StringEA - Protected Interface.
.br
Protected Instance Functions
:sl compact.
:li.:link reftype=hd res=2228 dependent group=3.readFrom:elink.
:li.:link reftype=hd res=2229 dependent group=3.writeTo:elink.
:esl.
:p.
Inherited Protected Instance Functions
:sl compact.
:li.-
:esl.
Protected Static Functions
:sl compact.
:li.-
:esl.
Inherited Protected Static Functions
:sl compact.
:li.-
:esl.
:h2 res=203 group=1 width=30% height=100%. MTSequenceEA.
.br
MTSequenceEA, Multi Type sequence extended attribute (EAT_MVMT).
:link  reftype=hd res=230 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=230 dependent group=2.Description.:elink.
:li.:link  reftype=hd res=231 dependent group=2.Derivation.:elink.
:li.:link  reftype=hd res=232 dependent group=2.Public Interface.:elink.
:li.:link  reftype=hd res=233 dependent group=2.Protected Interface.:elink.
:esl.
:h3 hide res=230 x=30% width=70% height=100%. MTSequenceEA - Description.
.br
MTSequenceEA represents multi value multi type extended attributes; an
extended attribute that is a sequence of other extended attributes. There
is no restriction on the types of the contained extended attributes.
:p.
MTSequenceEA is, for example, used for the .KEYPHRASES, .TYPES and .ASSOCTABLE
extended attributes, supported by the WPS.
:p.
To make MTSequenceEA offer powerful sequence manipulation, yet
stay simple to use and consistent with the other sequences in your
application, it inherits ISequence<EA*>.
:p.
MTSequenceEA implements the EAT_MVMT extended attribute.
:h3 hide res=231 x=30% width=70% height=100%. MTSequenceEA - Derivation.
.br
:artwork name='MTSequenceEA.BMP' align=center linkfile='mtsequence.dat' fit.
:p.
MTSequenceEA multiply inherits ISequence, to provide strong
sequence manipulation that is easy to use and consistent with the rest of your
application.
:h3 hide res=232 x=30% width=70% height=100%. MTSequenceEA - Public Interface.
.br
Nested Types
:sl compact.
:li.:link reftype=hd res=2320 dependent group=3.ErrorFunction:elink.
:esl.
:p.
Public Instance Data
:sl compact.
:li.:link reftype=hd res=2321 dependent group=3.pCreatorMap:elink.
:esl.
:p.
Public Static Data
:sl compact.
:li.:link reftype=hd res=2322 dependent group=3.errorFunction:elink.
:esl.
:p.
Public Instance Functions
:sl compact.
:li.:link reftype=hd res=2323 dependent group=3.Constructors:elink.
:li.:link reftype=hd res=2335 dependent group=3.Destructor:elink.
:li.:link reftype=hd res=2336 dependent group=3.Assignment Operator:elink.
:li.:link reftype=hd res=2337 dependent group=3.clone:elink.
:li.:link reftype=hd res=2338 dependent group=3.setCreatorMap:elink.
:li.:link reftype=hd res=2324 dependent group=3.getCodePage:elink.
:li.:link reftype=hd res=2325 dependent group=3.setCodePage:elink.
:esl.
:p.
  Inherited Instance Public Functions.
:p.
    From :link reftype=hd res=201 dependent group=1.EA:elink.
:sl compact.
:li.:link reftype=hd res=2326 dependent group=3.attributeId:elink.
:li.:link reftype=hd res=21217 dependent group=3.getFlags:elink.
:li.:link reftype=hd res=21218 dependent group=3.setFlags:elink.
:li.:link reftype=hd res=2327 dependent group=3.getFrom:elink.
:li.:link reftype=hd res=2328 dependent group=3.storeTo:elink.
:esl.
:p.
Public Static Functions
:sl compact.
:li.-
:esl.
:p.
  Inherited Public Static Functions.
:p.
    From :link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=203 dependent group=1.MTSequenceEA:elink., EAT_MVMT>
:sl compact.
:li.:link reftype=hd res=2329 dependent group=3.cast:elink.
:li.:link reftype=hd res=2330 dependent group=3.allowDynamic:elink.
:li.:link reftype=hd res=2331 dependent group=3.disallowDynamic:elink.
:esl.
:p.
Class Constants
:sl compact.
:li.-
:esl.
  Inherited Class Constants
:p.
    From :link reftype=hd res=205 dependent group=1.TEA:elink.<:link
reftype=hd res=203 dependent group=1.MTSequenceEA:elink., EAT_MVMT>
:sl compact.
:li.:link reftype=hd res=2332 dependent group=3.id:elink.
:esl.
:h3 hide res=233 x=30% width=70% height=100%. MTSequenceEA - Protected Interface.
.br
Protected Instance Functions
:sl compact.
:li.:link reftype=hd res=2333 dependent group=3.readFrom:elink.
:li.:link reftype=hd res=2334 dependent group=3.writeTo:elink.
:esl.
:p.
Inherited Protected Instance Functions
:sl compact.
:li.-
:esl.
:p.
Protected Static Functions
:sl compact.
:li.-
:esl.
:p.
Inherited Protected Static Functions
:sl compact.
:li.-
:esl.
:h2 res=204 group=1 width=30% height=100%. TSequenceEA<T>.
.br
TSequenceEA<T>, Typed sequence extended attribute (EAT_MVST).
:link  reftype=hd res=240 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=240 dependent group=2.Description.:elink.
:li.:link  reftype=hd res=241 dependent group=2.Derivation.:elink.
:li.:link  reftype=hd res=242 dependent group=2.Public Interface.:elink.
:li.:link  reftype=hd res=243 dependent group=2.Protected Interface.:elink.
:esl.
:h3 hide res=240 x=30% width=70% height=100%. TSequenceEA<T> - Description.
.br
TSequenceEA<T> represents sequences of extended attributes with a
common type; in essense, a typed array of extended attributes. TSequenceEA<T>
is surpricingly uncommon in OS/2. Even though it could be used for
attributes like .KEYPHRASES and .TYPES, they are not.
:p.
T must be an extended attribute class itself, such as StringEA.
:p.
IBM Work Frame makes use of string type, typed extended attribute sequences,
for storing build support information for make files.
:p.
TSequenceEA<T> implements the EAT_MVST extended attribute.
:h3 hide res=241 x=30% width=70% height=100%. TSequenceEA<T> - Derivation.
.br
:artwork name='TSequenceEA.BMP' align=center linkfile='tsequence.dat' fit.
:p.
TSequenceEA multiply inherits ISequence, to provide strong and simple
sequence manipulation that is consistent with the rest of your
application.
:h3 hide res=242 x=30% width=70% height=100%. TSequenceEA<T> - Public Interface.
.br
Public Instance Functions
:sl compact.
:li.:link reftype=hd res=2420 dependent group=3.Constructors:elink.
:li.:link reftype=hd res=2421 dependent group=3.Assignment Operator:elink.
:li.:link reftype=hd res=2422 dependent group=3.Destructor:elink.
:li.:link reftype=hd res=24225 dependent group=3.clone:elink.
:esl.
:p.
  Inherited Public Instance Functions.
:p.
    From :link reftype=hd res=206 dependent group=1.SequenceEA:elink.
:sl compact.
:li.:link reftype=hd res=2623 dependent group=3.getCodePage:elink.
:li.:link reftype=hd res=2624 dependent group=3.setCodePage:elink.
:li.:link reftype=hd res=2625 dependent group=3.contentId:elink.
:li.:link reftype=hd res=2627 dependent group=3.setCreatorMap:elink.
:esl.
:p.
    From :link reftype=hd res=201 dependent group=1.EA:elink.
:sl compact.
:li.:link reftype=hd res=2423 dependent group=3.attributeId:elink.
:li.:link reftype=hd res=21217 dependent group=3.getFlags:elink.
:li.:link reftype=hd res=21218 dependent group=3.setFlags:elink.
:li.:link reftype=hd res=2424 dependent group=3.getFrom:elink.
:li.:link reftype=hd res=2425 dependent group=3.storeTo:elink.
:esl.
:p.
Static Public Functions.
:sl compact.
:li.:link reftype=hd res=24221 dependent group=3.allowDynamic:elink.
:li.:link reftype=hd res=24222 dependent group=3.disallowDynamic:elink.
:li.:link reftype=hd res=24223 dependent group=3.cast:elink.
:esl.
:p.
Class Constants.
:sl compact.
:li.:link reftype=hd res=24224 dependent group=3.elementId:elink.
:esl.
:h3 hide res=243 x=30% width=70% height=100%. TSequenceEA<T> - Protected Interface.
.br
Protected Instance Functions
:sl compact.
:li.:link reftype=hd res=2426 dependent group=3.readFrom:elink.
:li.:link reftype=hd res=2427 dependent group=3.writeTo:elink.
:esl.
:p.
Inherited Protected Instance Functions
:sl compact.
:li.-
:esl.
Protected Static Functions
:sl compact.
:li.-
:esl.
Inherited Protected Static Functions
:sl compact.
:li.-
:esl.
:p.
:h2 res=205 group=1 width=30% height=100%. TEA<T, EA&colon.&colon.Identifier>.
.br
:link  reftype=hd res=250 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=250 dependent group=2.Description.:elink.
:li.:link  reftype=hd res=251 dependent group=2.Derivation.:elink.
:li.:link  reftype=hd res=252 dependent group=2.Public Interface.:elink.
:li.:link  reftype=hd res=253 dependent group=2.Protected Interface.:elink.
:esl.
:h3 hide res=250 x=30% width=70% height=100%. TEA<T, EA&colon.&colon.Identifier> - Description.
.br
TEA<T, EA&colon.&colon.Identifier> - Intermediate class, providing base functionality
for its descendants. You never use this class as is, but it provides a
consistent and safe interface to its descendants, at the same time as it
saves time for developers of descendants and reduce the risk for errors
by removing unecessary code duplication.
:p.
TEA<T,EA&colon.&colon.Identifier> hides the static member functions
:link reftype=hd res=21212 dependent group=3.namesIn:elink., :link
reftype=hd res=21213 dependent group=3.newFrom:elink. and :link
reftype=hd res=21214 dependent group=3.remove:elink. from :link
reftype=hd res=201 dependent group=1.EA:elink., since their use from any
class other than directly from :link reftype=hd res=201 dependent
group=1.EA:elink., would be confusing. :link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=21213
dependent group=3.newFrom:elink., for example, can return any kind
of extended attribute object. If :link reftype=hd res=21213 dependent
group=3.newFrom:elink. would be publically available to all descendants of
:link reftype=hd res=201 dependent group=1.EA:elink., a call to
:link reftype=hd res=202 dependent
group=1.StringEA:elink.&colon.&colon.:link reftype=hd res=21213 dependent
group=3.newFrom:elink., for example, would be legal, but is in no way
guaranteed to return a :link reftype=hd res=202 dependent
group=1.StringEA:elink. object. To avoid the confusion that would arise was
the above allowed, the functions are declared private in
TEA<T,EA&colon.&colon.Identifier>.
:p.
For the same reason, the types :link reftype=hd res=2122 dependent
group=3.Creator:elink., :link reftype=hd res=2124 dependent
group=3.CreatorMap:elink., :link reftype=hd res=2123 dependent
group=3.CreatorIdPair:elink., :link reftype=hd res=2126 dependent
group=3.Name:elink.,:link reftype=hd res=2128 dependent
group=3.Error:elink., :link reftype=hd res=2129 dependent
group=3.ErrorHandler:elink., :link reftype=hd res=2125 dependent
group=3.Flagset:elink., :link reftype=hd res=2121 dependent
group=3.Identifier:elink. and :link reftype=hd res=2127 dependent
group=3.NameSet:elink. are hidden by :link reftype=hd res=205
dependent group=1.TEA:elink.
and must be explicitly qualified with :link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon. scope when used.

:h3 hide res=251 x=30% width=70% height=100%. TEA<T, EA&colon.&colon.Identifier> - Derivation.
.br
Inherits.
:p.
  :link reftype=hd res=201 dependent group=1.EA:elink.
:p.
Inherited by:
:sl compact.
:li.:link reftype=hd res=202 dependent group=1.StringEA:elink.
:li.:link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.
:li.:link reftype=hd res=206 dependent group=1.SequenceEA:elink.
:esl.

:h3 hide res=252 x=30% width=70% height=100%. TEA<T, EA&colon.&colon.Identifier> - Public Interface.
.br
Class constants
:sl compact.
:li.:link reftype=hd res=2520 dependent group=3.id:elink.
:esl.
:p.
Public Instance Methods
:sl compact.
:li.:link reftype=fn refid=2521.Destructor:elink.
:esl.
:p.
Public Static Methods
:sl compact.
:li.:link reftype=hd res=2522 dependent group=3.cast:elink.
:li.:link reftype=hd res=2523 dependent group=3.allowDynamic:elink.
:li.:link reftype=hd res=2524 dependent group=3.disallowDynamic:elink.
:esl.
:h3 hide res=253 x=30% width=70% height=100%. TEA<T, EA&colon.&colon.Identifier> - Protected Interface.
.br
Protected Instance Methods
:p.
:sl compact.
:li.:link reftype=hd res=2525 dependent group=3.Constructors:elink.
:li.:link reftype=hd res=2526 dependent group=3.Assignment Operator:elink.
:esl.

:h2 res=206 group=1 width=30% height=100%. SequenceEA.
.br
:link  reftype=hd res=260 auto dependent group=2.
:sl compact.
:li.:link  reftype=hd res=260 dependent group=2.Description.:elink.
:li.:link  reftype=hd res=261 dependent group=2.Derivation.:elink.
:li.:link  reftype=hd res=262 dependent group=2.Public Interface.:elink.
:li.:link  reftype=hd res=263 dependent group=2.Protected Interface.:elink.
:esl.
:h3 hide res=260 x=30% width=70% height=100%. SequenceEA - Description.
.br
SequenceEA - Intermediate class, providing common base functionality
for :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink..
:p.
You should never work directly towards this class, but always towards
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.. If you
want to write your own implementation of typed sequecene extended attributes,
SequenceEA can be a good class to inherit from.
:h3 hide res=261 x=30% width=70% height=100%. SequenceEA - Derivation.
.br
Inherits&colon.
:sl.
:li.:link reftype=hd res=201 dependent group=1.EA:elink.
:li.:link reftype=hd res=205 dependent group=1.TEA:elink.<SequenceEA, EAT_MVST>
:esl.
:p.
Inherited by&colon.
:sl.
:li.:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
:esl.

:h3 hide res=262 x=30% width=70% height=100%. SequenceEA - Public Interface.
.br
Static Public Data.
:sl compact.
:li.:link reftype=hd res=2621 dependent group=3.errorFunction:elink.
:esl.
:p.
Instance Public Functions.
:sl compact.
:li.:link reftype=hd res=2622 dependent group=3.Destructor:elink.
:li.:link reftype=hd res=2623 dependent group=3.getCodePage:elink.
:li.:link reftype=hd res=2624 dependent group=3.setCodePage:elink.
:li.:link reftype=hd res=2625 dependent group=3.contentId:elink.
:li.:link reftype=hd res=2626 dependent group=3.clone:elink.
:li.:link reftype=hd res=2627 dependent group=3.setCreatorMap:elink.
:esl.
:h3 hide res=263 x=30% width=70% height=100%. SequenceEA - Protected Interface.
.br
Instance Protected Functions.
:sl compact.
:li.:link reftype=hd res=2630 dependent group=3.Constructors:elink.
:li.:link reftype=hd res=2631 dependent group=3.Assignment Operator:elink.
:li.:link reftype=hd res=2632 dependent group=3.writeTo:elink.
:li.:link reftype=hd res=2633 dependent group=3.readFrom:elink.
:esl.
:p.
Instance Protected Data.
:sl compact.
:li.:link reftype=hd res=2628 dependent group=3.pCreatorMap:elink.
:esl.
:p.
Static Protected Functions.
:sl compact.
:li.:link reftype=hd res=2629 dependent group=3.allowDynamic:elink.
:esl.

:h3 hide res=2121 x=30% width=70% height=50%. EA&colon.&colon.Identifier
.br
:font facename=Courier size=10x8.
typedef unsigned short Identifier;
:font facename=default.
:p.
Identifies the type of an extended attribute. Values supported by&colon.
:dl compact tsize=20.
:dthd.:hp2.OS/2 are&colon.:ehp2.
:ddhd.:hp2.YEA.H are&colon.:ehp2.
:dt.EAT_BINARY
:dd.
:dt.EAT_ASCII
:dd.:link reftype=hd res=202 dependent
group=1.StringEA:elink.&colon.&colon.:link reftype=hd res=2227 dependent
group=3.id:elink.
:dt.EAT_BITMAP
:dd.
:dt.EAT_METAFILE
:dd.
:dt.EAT_EA
:dd.
:dt.EAT_MVMT
:dd.:link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2332 dependent
group=3.id:elink.
:dt.EAT_MVST
:dd.:link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.&colon.&colon.:link reftype=hd res=2634 dependent
group=3.id:elink.
:dt.EAT_ASN1
:dd.
:edl.
:h3 hide res=2122 x=30% width=70% height=50%. EA&colon.&colon.Creator
.br
:font facename=Courier size=10x8.
typedef :link reftype=hd res=201 dependent group=1.EA:elink.*
(*Creator)(istrstream&amp., :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.*);
:font facename=default.
:p.
Defines a pointer to a function that creates an extended attribute object.
For the specific attributes, such functions are defined by the private
static member function :link reftype=hd res=205 dependent group=1.
TEA:elink.<T,:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121
dependent group=3.Identifier:elink.>&colon.&colon.createFrom
:p.
If you write your own creator function, it should read as far into
the stream as is needed to know the type of the object to create,
and then create the object on the heap. It should not read a value
into the object, though.

:h3 hide res=2123 x=30% width=70% height=50%. EA&colon.&colon.CreatorIdPair
.br
:font facename=Courier size=10x8.
struct CreatorIdPair {
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2122 dependent group=3.Creator:elink. c;
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink. id;
.br
  IMngPointer<:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.> pSubMap;
.br
}
:font facename=default.
:p.
Struct matching an
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink. with an
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2122 dependent group=3.Creator:elink.
function. Used internally by the
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21213 dependent group=3.newFrom:elink. functions,
and by multi value extended attributes.
:p.
The c part is the function that will create new objects on the heap
if the element found matches that of id. pSubMap is the map passed
to the creator function, which is useful for typed collections,
since the creator function will then use that map to create its
containing elements.
:p.
For flat (non-collection extended attributes) pSubMap is 0.

:h3 hide res=2124 x=30% width=70% height=50%. EA&colon.&colon.CreatorMap
.br
:font facename=Courier size=10x8.
typedef IMap<:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd
res=2123 dependent group=3.CreatorIdPair:elink.,
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink.> CreatorMap;
:font facename=default.
:p.
Container of :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2123 dependent group=3.CreatorIdPair:elink. for use internally
by the creator functions, and multi value extended attributes.

:h3 hide res=2125 x=30% width=70% height=50%. EA&colon.&colon.Flagset
.br
:font facename=Courier size=10x8.
typedef enum { optional = 0, mandatory = 0x80 } Flagset;
:font facename=default.
:p.
Flag used for telling whether an extended attribute is needed (i.e. must not
be discarded,) or not. The only legal values are&colon.
:parml compact tsize=20 break=none.
:pt. 0x00 (optional)
:pd. The extended attribute is :hp2.not:ehp2. needed.
:pt. 0x80 (mandatory)
:pd. The extended attribute :hp2.is:ehp2. needed.
:eparml.

:h3 hide res=2126 x=30% width=70% height=50%. EA&colon.&colon.Name
.br
:font facename=Courier size=10x8.
  struct Name {
.br
    IString name;
.br
    :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
 reftype=hd res=2125 dependent group=3.Flagset:elink. flags;
.br
  };
:font facename=default.
:p.
Description of an extended attribute for a file. A file can be queried
for what extended attributes it has, by calling one of the
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21212 dependent group=3.namesIn:elink.
methods, which returns the set of names as an :link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=2127
dependent group=3.NameSet:elink., which elements are of type
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2126 dependent group=3.Name:elink..

:h3 hide res=2127 x=30% width=70% height=50%. EA&colon.&colon.NameSet
.br
:font facename=Courier size=10x8.
typedef IKeySortedSet<:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2126 dependent
group=3.Name:elink.,IString> NameSet;
:font facename=default.
:p.
Set of extended attributes. This is the return value from the
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21212 dependent group=3.namesIn:elink.
functions.

:h3 hide res=2128 x=30% width=70% height=50%. EA&colon.&colon.Error
.br
:font facename=Courier size=10x8.
  typedef enum {
.br
    ReadError,
.br
    WriteError,
.br
    NoSuchEAError,
.br
    TypeMismatchError
.br
  } Error;
:font facename=default.
:p.
The different kinds of errors that can occur within YEA.H. The errors
codes are used as follows:
:dl tsize=23.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Situation/Meaning:ehp2.
:dt.ReadError
:dd.The extended attribute could not be read. Issued if the file
to read from does not exist, or is not readable. The accompanying
code sent to the error handler function will be the OS/2 error code.
:dt.WriteError
:dd.The extended attribute could not be written. Issued if the file to
write to does not exist, is write protected, the extended attribute name
was illegal, or the total size of the extended attribute exceeded
the 64Kb limit. The accompanying code sent to the error handler function
will be the OS/2 error code.
:dt.NoSuchEAError
:dd.An attempt was made to read an extended attribute with a name that
is not defined for the specified file. The accompanying code sent
to the error handler function will be 0.
:dt.TypeMismatchError
:dd.An attempt was made to read an extended attribute of a specific type,
and the attribute read had another type. The accompanying code
sent to te error handler function will be the type identifier of the
attribute read.
:edl.

:h3 hide res=2129 x=30% width=70% height=50%. EA&colon.&colon.ErrorHandler
.br
:font facename=Courier size=10x8.
typedef void (*ErrorHandler)(:link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.Error:elink., unsigned long);
:font facename=default.
:p.
Type of the error handler function.

:h3 hide res=21210 x=30% width=70% height=50%. EA&colon.&colon.defaultCreatorMap
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink. defaultCreatorMap;
:font facename=default.
:p.
The :link reftype=hd res=2124 dependent group=3.CreatorMap:elink.
that will be used for creating extended attribute objects
with the :link reftype=hd res=21219 dependent group=3.getFrom:elink.
and :link reftype=hd res=21213 dependent group=3.newFrom:elink. functions,
unless otherwise specified.

:h3 hide res=21211 x=30% width=70% height=50%. EA&colon.&colon.errorHandler
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2129 dependent
group=3.ErrorHandler:elink. errorHandler;
:font facename=default.
:p.
The :link reftype=hd res=2129 dependent group=3.ErrorHandler:elink.
to call when error situations arise. To set your own error handler, simply set
this pointer to your own function.
:p.
The default error handler throws exceptions:
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Exception thrown:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.EAReadError("Failed to read EA") with the error code given by OS/2
as its errorId.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink.
:dd.EAWriteError("Failed to write EA") with the error code given by
OS/2 as its errorId.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.EATypeMismatchError("Unknown EA type") with the errorId set to 0.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.EATypeMismatchError("Unexpected EA type") with the type identifier
as the errorId.
:dt.Others.
:dd.EAError("unknown error");
:edl.


:h3 hide res=21212 x=30% width=70% height=50%. EA&colon.&colon.namesIn
.br
:font facename=Courier size=10x8.
public:
.br
  static :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2127 dependent
group=3.NameSet:elink. namesIn(const IString&amp. file);
.br
  static :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2127 dependent
group=3.NameSet:elink. namesIn(fstreambase&amp. file);
:font facename=default.
:p.
Get the names for the set of extended attributes defined for the file
pointed to by file.
:p.
Possible errors are&colon.
:dl compact tsize=20.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. called with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error code
given by OS/2. If :link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, the set returned by namesIn will be empty.
:edl.

:h3 hide res=21213 x=30% width=70% height=50%. EA&colon.&colon.newFrom
.br
:font facename=Courier size=10x8.
public:
.br
  static :link reftype=hd res=201 dependent group=1.EA:elink.* newFrom(const IString&amp. file,
.br
                     const IString&amp. name,
.br
                     const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
 group=3.CreatorMap:elink.&amp. = :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210
 dependent group=3.defaultCreatorMap:elink.);
:p.
  static :link reftype=hd res=201 dependent group=1.EA:elink.* newFrom(fstreambase&amp. file,
.br
                     const IString&amp. name,
.br
                     const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.&amp. = :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210
dependent group=3.defaultCreatorMap:elink.);
:font facename=default.
:p.
Create a new extended attribute object on the heap. The type will be
decided when reading the extended attribute, and the object to create
will be decided by looking up the creator map passed.
:nt.To create an object of a class by calling newFrom, the static method
:link reftype=hd res=2523 dependent group=3.allowDynamic:elink. must haven
been called for the class on the creator map passed. If
:link reftype=hd res=2523 dependent group=3.allowDynamic:elink. has not
been called, 0 will be returned.
:ent.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the
error code returned by OS/2. :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, newFrom returns 0.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0. If
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns,
newFrom returns 0.
:edl.
:nt. In addition to the above, the extended attribute object created
can find and report errors of its own. What errors they are, and how they are
handled, depends on the type of extended attribute object being
created.
:ent.
:h3 hide res=21214 x=30% width=70% height=50%. EA&colon.&colon.remove
.br
:font facename=Courier size=10x8.
public:
.br
  static void remove(const IString&amp. file,
.br
                     const IString&amp. name);
.br
.br
  static void remove(fstreambase&amp. file,
.br
                     const IString&amp. name);
:font facename=default.
:p.
Remove the extended attribute pointed to by name from the file. After
execution, there will be no extended attribute by the specified name
on the file, unless an error occurs.
:p.
Possible errors are&colon.
:dl tsize=20.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink. and the
error code returned by OS/2.
:edl.

:h3 hide res=21215 x=30% width=70% height=50%. virtual EA&colon.&colon.~EA(void)
.br
:font facename=Courier size=10x8.
public:
.br
  virtual ~:link reftype=hd res=201 dependent group=1.EA:elink.(void);
:font facename=default.
:p.
Destroy an extended attribute.

:h3 hide res=21216 x=30% width=70% height=50%. EA&colon.&colon.attributeId
.br
:font facename=Courier size=10x8.
public:
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
 reftype=hd res=2121 dependent group=3.Identifier:elink. attributeId(void) const;
:font facename=default.
:p.
Get the attribute identifier of the extended attribute object.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=21217 x=30% width=70% height=50%. virtual EA&colon.&colon.getFlags
.br
:font facename=Courier size=10x8.
public:
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=2125 dependent group=3.Flagset:elink. getFlags(void)
const;
:font facename=default.
:p.
Get the flags for the current object.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=21218 x=30% width=70% height=50%. virtual EA&colon.&colon.setFlags
.br
:font facename=Courier size=10x8.
public:
.br
  void setFlags(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2125 dependent
group=3.Flagset:elink.);
:font facename=default.
:p.
Set the flags for the current object.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=21219 x=30% width=70% height=50%. EA&colon.&colon.getFrom
.br
:font facename=Courier size=10x8.
public:
.br
  void getFrom(const IString&amp. file,
.br
               const IString&amp. name);
.br
.br
  void getFrom(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Give the extended attribute object a new value by assigning it
the value read from the named extended attribute.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. with :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2128 dependent
group=3.ReadError:elink. and the error code returned by OS/2. The extended
attribute object itself not be changed.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent.errorHandler:elink. with :link reftype=hd
res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=2128
dependent group=3.NoSuchEAError:elink. and 0. The extended attribute
object itself will not be changed.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
and the type found. The extended attribute object itself will not be
changed.
:edl.
:p.
:nt.If the extended attribute object is a collection extended attribute,
the containing parts may themselves find and report other errors. What
kind they are of, and how they are reported, depends on the type.
:ent.
:h3 hide res=21220 x=30% width=70% height=50%. EA&colon.&colon.storeTo
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void storeTo(const IString&amp. file,
.br
               const IString&amp. name);
:p.
  void storeTo(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Store the value of the extended attribute to the file, using the name given.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink. and the
error code returned by OS/2.
:edl.


:h3 hide res=21221 x=30% width=70% height=50%. EA&colon.&colon.clone
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual :link reftype=hd res=201 dependent group=1.EA:elink.*
clone(void) const = 0;
:font facename=default.
:p.
Create an exact deep copy of self. Must be overridden by all
descendant classes. Used by the copy constructors and assignment
operators of extended attribute collection classes such as :link
reftype=hd res=203 dependent group=1.MTSequenceEA:elink. and
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
to provide for deep copying.
:p.
To work properly with typed collection extended attributes,
like :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
the return type must be overridden. The return type for a class
C, derived in one or several generations from EA, must be C*.
:p.
clone will normally not find or report errors, but it depends on
the actual extended attribute class if errors can occur, and how
they are reported.

:h3 hide res=21222 x=30% width=70% height=50%. EA&colon.&colon.setCreatorMap
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual void setCreatorMap(const :link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124
dependent group=3.CreatorMap:elink.*)
:font facename=default.
:p.
This default implementation of setCreatorMap does nothing at all.
Collection classes should override it and create their children
from the creator map passed.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2131 x=30% width=70% height=50%. EA&colon.&colon.read
.br
:font facename=Courier size=10x8.
protected:
.br
  static istrstream&amp. read(:link reftype=hd res=201 dependent group=1.EA:elink.*
pea, istrstream&amp. is)
.br
:font facename=default.
:p.
Calls pea->:link reftype=hd res=2135 dependent group=3.readFrom:elink.(is),
a way to access the protected method of a sibling.
Use when implementing multi value extended attributes, to read a value into
one of the attributes contained.
:p.
read will normally not find or report errors, but it depends on
the actual extended attribute class if errors can occur, and how
they are reported. Objects of collection extended attribute classes, like
:link reftype=hd res=203 dependent group=1.MTSequenceEA:elink. and
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
might well find and report errors.

:h3 hide res=2132 x=30% width=70% height=50%. EA&colon.&colon.write
.br
:font facename=Courier size=10x8.
protected:
.br
  static ostrstream&amp. write(:link reftype=hd res=201 dependent group=1.EA:elink.*
pea, ostrstream&amp. os)
.br
:font facename=default.
:p.
Calls pea->:link reftype=hd res=2136 dependent group=3.writeTo:elink.(os),
a way to access the protected method of a sibling.
Use when implementing multi value extended attributes, to save the value of
one of the attributes contained.
:p.
write will normally not find or report errors, but it depends on
the actual extended attribute class if errors can occur, and how
they are reported.


:h3 hide res=2133 x=30% width=70% height=50%. EA&colon.&colon.EA
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.(:link reftype=hd
res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent
group=3.Identifier:elink. anId);
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.(const :link
reftype=hd res=201 dependent group=1.EA:elink.&amp.);
.br
:font facename=default.
:p.
You would normally not call any of these constructors since
:link reftype=hd res=205 dependent group=1.TEA:elink.<T,
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink.>
does it for you. Would you, however, the identifier to pass is that used
to identify the extended attribute (the :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent
group=3.Identifier:elink. part of :link reftype=hd res=205 dependent
group=1.TEA:elink..)
:p.
Errors.
:sl.
:li.-
:esl.

:h3 hide res=2134 x=30% width=70% height=50%. EA&colon.&colon.operator=
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  const :link reftype=hd res=201 dependent group=1.EA:elink.&amp.
operator=(const :link reftype=hd res=201 dependent group=1.EA:elink.&amp.);
.br
:font facename=default.
:p.
You would normally never call the assignment operator of :link reftype=hd
res=201 dependent group=1.EA:elink., since :link reftype=hd res=205
group=1.TEA:elink.<T, :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent
group=3.Identifier:elink.> does it for you.
:p.
Errors.
:sl.
:li.-
:esl.

:h3 hide res=2135 x=30% width=70% height=50%. EA&colon.&colon.readFrom
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual istrstream&amp. readFrom(istrstream&amp.) = 0;
.br
:font facename=default.
:p.
Must be overridden by all concrete extended attribute classes to read
the content of the attribute. Upon entry, the get pointer of the
stream is positioned so that the first byte read, will be the byte
immediately following the type identifier. This position is not
necessarily the first position in the stream.
:p.
readFrom will normally not find or report errors, but it depends on
the actual extended attribute class if errors can occur, and how
they are reported. Objects of collection extended attribute classes, like
:link reftype=hd res=203 dependent group=1.MTSequenceEA:elink. and
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
might well find and report errors.

:h3 hide res=2136 x=30% width=70% height=50%. EA&colon.&colon.writeTo
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual ostrstream&amp. writeTo(ostrstream&amp.) = 0;
.br
:font facename=default.
:p.
Must be overridden by all concrete extended attribute classes to
write the content of the attribute. Upon entry the type identifier
is already written. The first byte to write to the stream is the first
byte after the identifier of the type for the extended attribute.
:p.
writeTo will normally not find or report errors, but it depends on
the actual extended attribute class if errors can occur, and how
they are reported.


:h3 hide res=2220 x=30% width=70% height=50%. StringEA&colon.&colon.StringEA
.br
In addition to all the constructors valid for IString, :link
reftype=hd res=202 dependent group=1.StringEA:elink. supports&colon.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  StringEA(const StringEA&amp. s)
:font facename=default.
:p.
Initialise the StringEA object to an exact copy of s.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  StringEA(const IString&amp. filename,
.br
           const IString&amp. eaname)
.br
  StringEA(fstreambase&amp. file,
.br
           const IString&amp. eaname)
.br
:font facename=default.
:p.
Constructs a string extended attribute, and reads its value from the
extended attribute pointed to bu filename and eaname.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error
code returned by OS/2. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, an empty StringEA object
will be created.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0.
If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, an
empty StringEA object will be created.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns,
an empty StringEA object will be created.
:edl.
:p.
For the constructors taking the same arguments as their IString counter
parts, the created object will be initialized with with the flag
set to :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2125 dependent group=3.optional:elink..

:h3 hide res=22201 x=30% width=70% height=50%. StringEA&colon.&colon.operator=
.br
:font facename=Courier size=10x8.
public&colon.
.br
  const StringEA&amp. operator=(const StringEA&amp. s);
:font facename=default.
:p.
Make self an exact copy of s and return self reference.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  const StringEA&amp. operator=(const IString&amp. s);
:font facename=default.
:p.
Keep the extended attribute values as is, but assign a new string
value to self and return self reference.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=22202 x=30% width=70% height=50%. EA&colon.&colon.clone
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual StringEA* clone(void) const
:font facename=default.
:p.
Create an exact copy of self on the heap and return the pointer to it.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2221 x=30% width=70% height=50%. EA&colon.&colon.attributeId
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent group=3.Identifier:elink.
attributeId(void)
:font facename=default.
:p.
Returns :link reftype=hd res=202 dependent
group=1.StringEA:elink.&colon.&colon.:link reftype=hd res=2227 dependent
group=3.id:elink..
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2222 x=30% width=70% height=50%. EA&colon.&colon.getFrom
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void getFrom(const IString&amp. file,
.br
               const IString&amp. name);
:p.
  void getFrom(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Give the string extended attribute object a new value by assigning it
the string value read from the named extended attribute.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error
code returned by OS/2. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, the StringEA object
will remain unchanged.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0.
If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, the
StringEA object will remain unchanged.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns,
the StringEA object will remain unchanged.
:edl.

:h3 hide res=2223 x=30% width=70% height=50%. EA&colon.&colon.storeTo
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void storeTo(const IString&amp. file,
.br
               const IString&amp. name);
.br
.br
  void storeTo(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Store the value of the string extended attribute with the name given.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink. and the
error code returned by OS/2.
:edl.

:h3 hide res=2224 x=30% width=70% height=50%. StringEA&colon.&colon.cast
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=202 dependent group=1.StringEA:elink.* cast(:link
reftype=hd res=201 dependent group=1.EA:elink.*)
.br
  static const :link reftype=hd res=202 dependent group=1.StringEA:elink.*
cast(const :link reftype=hd res=201 dependent group=1.EA:elink.*)
:font facename=default.
:p.
Cast pointers of :link reftype=hd res=201 dependent group=1.EA:elink.
to pointers of :link reftype=hd res=202 dependent group=1.StringEA:elink..
Return the pointer value if, and only if, :link reftype=hd res=2221
dependent group=3.attributeId:elink.()
of the object pointed to returns :link reftype=hd res=202 dependent
group=1.StringEA:elink.&colon.&colon.:link reftype=hd res=2227 dependent
group=1.id:elink.. Return 0 otherwise.
:p.
:caution.cast is unable to distinguish between StringEA and other
implementations of EAT_ASCII, since it compares the attribute id only.
:ecaution.
:p.
Possible errors are&colon.
:sl.
:li.-
:esl.

:h3 hide res=2225 x=30% width=70% height=50%. StringEA&colon.&colon.allowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void allowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM =
.br
                           &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.,
.br
                           const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2122 dependent
group=3.Creator:elink.&amp. =
.br
                           :link reftype=hd res=205 dependent group=1.TEA:elink.<:link reftype=hd
res=202 dependent group=1.StringEA:elink.,:link reftype=hd res=202
dependent group=1.StringEA:elink.&colon.&colon.:link reftype=hd res=2227
dependent group=3.id:elink.>&colon.&colon.createFrom)
:font facename=default.
:p.
Add :link reftype=hd res=202 dependent group=1.StringEA:elink. to the creator
map, making it possible to dynamically create string extended attributes by
calling :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21213 dependent
group=3.newFrom:elink.
with that creator map. The :link reftype=hd res=202 dependent
group=1.StringEA:elink. object will be created by a call to
the provided creator function.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2226 x=30% width=70% height=50%. StringEA&colon.&colon.disallowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void disallowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM =
.br
                              &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
:font facename=default.
:p.
Remove :link reftype=hd res=202 dependent group=1.StringEA:elink. from the
creator map, making it impossible to dynamically create string extended
attributes by calling :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21213.newFrom:elink.
with that creator map.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2227 x=30% width=70% height=50%. StringEA&colon.&colon.id
.br
:font facename=Courier size=10x8.
public&colon.
.br
  enum { id = EAT_ASCII };
:font facename=default.
:p.
The identifier of string extended attributes. Use (if you can't avoid it,)
to compare with :link reftype=hd res=2221 dependent group=3.attributeId():elink.
of objects. It is usually better not to make that comparison, but to use
:link reftype=hd res=2224 dependent group=3.cast:elink. instead, and check
the return value of the pointer.


:h3 hide res=2228 x=30% width=70% height=50%. StringEA&colon.&colon.readFrom
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual istrstream&amp. readFrom(istrstream&amp.)
:font facename=default.
:p.
Overrides :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2135.readFrom:elink. to
read the content of the extended attribute and store its value to the
:link reftype=hd res=202 dependent group=1.StringEA:elink. object itself.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2229 x=30% width=70% height=50%. StringEA&colon.&colon.writeTo
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual ostrstream&amp. writeTo(ostrstream&amp.)
:font facename=default.
:p.
Overrides :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2136.writeTo:elink. to
store the content of the :link reftype=hd res=202 dependent
group=1.StringEA:elink. object.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2320 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.ErrorFunction
.br
:font facename=Courier size=10x8.
public&colon.
.br
  typedef :link reftype=hd res=201 dependent group=1.EA:elink.*
(*ErrorFunction)(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121.Identifier:elink.);
:font facename=default.
:p.
The type of the error function called by :link reftype=hd res=203
dependent group=1.MTSequenceEA:elink. when an extended attribute of
unknown type is read.

:h3 hide res=2321 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.pCreatorMap
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2124 dependent group=3.CreatorMap:elink.* pCreatorMap;
:font facename=default.
:p.
Map used by :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.
when creating the containing extended attributes. It defaults to
&amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink..

:h3 hide res=2322 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.errorFunction
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2320
dependent group=3.ErrorFunction:elink. errorFunction;
:font facename=default.
:p.
Pointer to function, called by :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. when reading an extended attribute
not found in the creator map. The value returned will be inserted into
the sequence.
:p.
The default function will call :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. with :link reftype=hd res=2128 dependent
group=3.TypeMismatchError:elink. and the type identifier of the extended
attribute read. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, errorFunction will return 0.
:p.
To set your own error handler, create a function of type
:link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2320
dependent group=3.ErrorFunction:elink. and set errorFunction to
point to it.


:h3 hide res=2323 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.MTSequenceEA
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.(const :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2124 dependent group=3.CreatorMap:elink.* =
.br
                     &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.);
:font facename=default.
:p.
Initialise an empty :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. object that creates its contents with the
help of the provided creator map.
:p.
Possible errors.
:sl compact.
:li.-
:esl.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.(const
ISequence<:link reftype=hd res=201 dependent group=1.EA:elink.*>&amp.,
.br
               const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* =
.br
                     &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.);
:font facename=default.
:p.
Initialise an :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. object by copying the contents of the sequence,
and use the creator map provided when reading new values into it.
:p.
Possible errors.
:sl compact.
:li.-
:esl.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.(const
IString&amp. filename,
.br
               const IString&amp. eaname,
.br
               const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* =
.br
                     &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.);
.br
  :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.(fstreambase&amp. file,
.br
               const IString&amp. eaname,
.br
               const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* =
.br
                     &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.);
:font facename=default.
:p.
Initialise an :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.
object by reading its contents from the
named extended attribute in the selected file, using the provided
creator map when creating the containing objects.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error
code returned by OS/2. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, an empty MTSequenceEA object
will be created.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0.
If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, an
empty MTSequenceEA object will be created.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, an
empty MTSequenceEA object will be created.
:edl.
:p.
If an unknown extended attribute is found when reading the content of
the sequence, :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2322
dependent group=3.errorFunction:elink. is called with the type
of the unknown extended attribute. If :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2322
dependent group=3.errorFunction:elink. returns, the value returned is
inserted into the sequence.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.(const
:link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.&amp. mvea);
:font facename=default.
:p.
Initialise an :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.
object by copying the content of the
given sequence extended attribute.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2324 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.getCodePage
.br
:font facename=Courier size=10x8.
public&colon.
.br
  unsigned short getCodePage(void) const
:font facename=default.
:p.
Return the code page of the :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. object. Code page 0 means
the default code page of the system. The code page of :link reftype=hd
res=203 dependent group=1.MTSequenceEA:elink.
objects defaults to 0.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2325 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.setCodePage
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void setCodePage(unsigned short cp)
:font facename=default.
:p.
Set the code page of the :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. object. By default, the
code page is 0, meaning the default code page of the system.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2326 x=30% width=70% height=50%. EA&colon.&colon.attributeId
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink. attributeId(void)
:font facename=default.
:p.
Returns :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2332 dependent
group=3.id:elink..
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2327 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.getFrom
.br
:font facename=Courier size=10x8.
public:
.br
  void getFrom(const IString&amp. file,
.br
               const IString&amp. name);
.br
.br
  void getFrom(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Give the sequence extended attribute object a new value by assigning
it the value read from the named extended attribute.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error
code returned by OS/2. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, the MTSequenceEA object
will remain unchanged.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0.
If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, the
MTSequenceEA object will remain unchanged.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, the
MTSequenceEA object will remain unchanged.
:edl.
:p.
If an unknown extended attribute is found when reading the content of
the sequence, :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2322
dependent group=3.errorFunction:elink. is called with the type
of the unknown extended attribute. If :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2322
dependent group=3.errorFunction:elink. returns, the value returned is
inserted into the sequence.

:h3 hide res=2328 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.storeTo
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void storeTo(const IString&amp. file,
.br
               const IString&amp. name);
.br
.br
  void storeTo(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Store the value of the sequence extended attribute with the name given.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink. and the
error code returned by OS/2.
:edl.

:h3 hide res=2329 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.cast
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.*
cast(:link reftype=hd res=201 dependent group=1.EA:elink.*)
.br
  static const :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.*
cast(const :link reftype=hd res=201 dependent group=1.EA:elink.*)
:font facename=default.
:p.
Cast pointers of :link reftype=hd res=201 dependent group=1.EA:elink.
to pointers of :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink..
Return the pointer value if, and only if, :link reftype=hd res=21216
dependent group=3.attributeId:elink.()
of the object pointed to returns :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2332 dependent
group=3.id:elink..
Return 0 otherwise.
:p.
:caution.cast is unable to distinguish between MTSequenceEA and other
implementations of EAT_MVMT, since it compares the attribute id only.
:ecaution.
:p.
Possible errors are&colon.
:sl.
:li.-
:esl.

:h3 hide res=2330 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.allowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void allowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM
.br
                           = &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.,
.br
                           const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2122 dependent
group=3.Creator:elink.&amp. creator =
.br
                           :link reftype=hd res=205 dependent
group=1.TEA:elink.<:link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2332 dependent
group=3.id:elink.>&colon.&colon.createFrom)
:font facename=default.
:p.
Add :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.
to the creator map, making it possible to dynamically create string
extended attributes by calling :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21213.newFrom:elink.
with that creator map. The :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. object will be created with the provided
creator function.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2331 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.disallowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void disallowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM
.br
                              = &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
:font facename=default.
:p.
Remove :link reftype=hd res=203 dependent group=1.MTSequenceEA:elink.
from the creator map, making it impossible to dynamically create string
extended attributes by calling :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21213.newFrom:elink.
with that creator map.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2332 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.id
.br
:font facename=Courier size=10x8.
public&colon.
.br
  enum { id = EAT_MVMT };
:font facename=default.
:p.
The identifier of multi value sequence extended attributes. Use
(if you can't avoid it,) to compare with :link reftype=hd res=2326
dependent group=3.attributeId():elink.
of objects. It is usually better not to make that comparison, but to use
:link reftype=hd res=2329 dependent group=3.cast:elink. instead, and check
the return value of the pointer.

:h3 hide res=2333 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.readFrom
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual istrstream&amp. readFrom(istrstream&amp.)
:font facename=default.
:p.
Overrides :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2135.readFrom:elink. to
read the content of the extended attribute and store its value to the
:link reftype=hd res=203 dependent group=1.MTSequenceEA:elink. object itself.
:p.
Possible errors are&colon.
:dl tsize=30.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.Unknown type read.
:dd.Calls :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2322
dependent group=3.errorFunction:elink. with the type
of the unknown extended attribute. If :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd res=2322
dependent group=3.errorFunction:elink. returns, the value returned is
inserted into the sequence.
:edl.

:h3 hide res=2334 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.writeTo
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual ostrstream&amp. writeTo(ostrstream&amp.)
:font facename=default.
:p.
Overrides :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2136.writeTo:elink. to
store the content of the :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink. object.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.


:h3 hide res=2335 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.~MTSequenceEA
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual ~MTSequenceEA(void)
:font facename=default.
:p.
Destroys the MTSequenceEA object and deallocates all of its contents.
:nt.All EA objects pointed to by the MTSequenceEA object by the time of
destruction will be deallocated by a call to operator delete. If any
of the pointers is not to an object allocated on heap, a run time error
is most likely to occur. The reason for this behaviour is to avoid
memory leaks if an MTSequenceEA object is read when one is not
expected.
:ent.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.


:h3 hide res=2336 x=30% width=70% height=50%. MTSequenceEA&colon.&colon.operator=
.br
In order to make a copy assignment operation work without causing memory
leaks, both versions of operator= empties the contents, thus freeing
all the pointers in the collection, before the copy.
:nt.Since operator delete will be executed on all pointers, any pointer
referring to an element not allocated on heap is likely to cause a
run time error.
:ent.
:font facename=Courier size=10x8.
public&colon.
.br
  const MTSequenceEA&amp. operator=(const MTSequenceEA&amp. mvea);
:font facename=default.
:p.
Make self an exact copy of mvea. The contents of mvea will be cloned to
avoid getting several pointers to the same elements, and potential
dangling pointers at a later time.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:p.
:font facename=Courier size=10x8.
public&colon.
.br
  const MTSequenceEA&amp. operator=(const ISequence<:link reftype=hd res=201
dependent group=1.EA:elink.*>&amp. isea);
:font facename=default.
:p.
Keep the state of self, except for the content of the collection, which
is made an exact copy of isea. The contents of isea will be cloned to
avoid getting several pointers to the same elements, and potential
dangling pointers at a later time.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.


:h3 hide res=2337 x=30% width=70% height=50%. EA&colon.&colon.clone
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual MTSequenceEA* clone(void) const;
:font facename=default.
:p.
Create an exact deep copy of self on the heap and return the pointer
to it. Used by the copy constructors and assignment operators of
extended attribute collections such as :link reftype=hd res=203
dependent group=1.MTSequenceEA:elink. and :link reftype=hd res=204
dependent group=1.TSequenceEA<T>:elink..
:p.
clone itself does not find or report any errors, but since it does
a deep copy of the collection, some of its containing objects
might. If and how this is done depends on the type of the
containig objects.

:h3 hide res=2338 x=30% width=70% height=50%. EA&colon.&colon.setCreatorMap
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual void setCreatorMap(const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.*)
:font facename=default.
:p.
Override of the empty default function in :link reftype=hd res=201
dependent group=1.EA:elink.. It sets the :link reftype=hd res=203
dependent group=1.MTSequenceEA:elink.&colon.&colon.:link reftype=hd
res=2321 dependent group=3.pCreatorMap:elink. to the map passed, to
make sure children are created from the correct creator map.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2420 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.TSequenceEA
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=204 dependent group=1.TSequenceEA:elink.(:link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd
res=2124 dependent group=3.CreatorMap:elink.* = &amp.:link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
.br
:font facename=default.
:p.
Initialise a an empty :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
object.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=204 dependent group=1.TSequenceEA:elink.(const
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.&amp. t)
:font facename=default.
:p.
Copy constructor. Initialise a :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink. object by copying the
contents and status of t.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=204 dependent group=1.TSequenceEA:elink.(const
ISequence<T*>&amp. t,
.br
             :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd
res=2124 dependent group=3.CreatorMap:elink.* = &amp.:link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
:font facename=default.
:p.
Initialise a :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
object, by copying the contents of the provided ISequence<T*> object.
:p.
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=204 dependent group=1.TSequenceEA:elink.(const
IString&amp. filename,
.br
              const IString&amp. eaname,
.br
              :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd
res=2124 dependent group=3.CreatorMap:elink.* = &amp.:link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
.br
  :link reftype=hd res=204 dependent group=1.TSequenceEA:elink.(fstreambase&amp.
file,
.br
              const IString&amp. eaname,
.br
              :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd
res=2124 dependent group=3.CreatorMap:elink.* = &amp.:link reftype=hd res=201
dependent group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
:font facename=default.
:p.
Initialise a :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
object by reading its contents from the named extended attribute of the file.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error
code returned by OS/2. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, an empty TSequenceEA<T> object
will be created.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0.
If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, an
empty TSequenceEA<T> object will be created.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns,
an empty TSequenceEA<T> object will be created.
:edl.
:p.
:nt.In addition to the above error situations, it is possible that any
of the containing objects read into the sequence will find and report
errors. If that is done, and how, depends on the type of object read.
:ent.
:h3 hide res=2421 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.operator=
.br
To avoid memory leaks, both versions of operator= empty the content
of self, and deallocates all pointers, before deep copying the content
of the source.
:nt.Since operator delete will be executed on all pointers, any pointer
referring to an element not allocated on heap is likely to cause a
run time error.
:ent.
:font facename=Courier size=10x8.
public&colon.
.br
  const :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.&amp. operator=(const :link reftype=hd
res=204 dependent group=1.TSequenceEA<T>:elink.&amp. t)
:font facename=default.
:p.
Copy the content and status of t to self and return self reference.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.
:p.
   const :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.&amp. operator=(const ISequence<T*>&amp. t)
:font facename=default.
:p.
Keep the state of the extended attribute object as is, but assign it
new values from the ISequence passed.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.
:p.
:nt.It is possible that some of the contained objects will find and
report errors. If that happens, and how, depends on the type of
the contained objects.
:ent.
:h3 hide res=2422 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.~TSequenceEA
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual ~:link reftype=hd res=204 dependent group=1.TSequenceEA:elink.(void)
:font facename=default.
:p.
Destructor.
:note.Unlike the destructor for ISequence, the destructor for :link
reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
deallocates all pointers to its contents. This is to avoid memory leaks
in situations where a :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink. is read when you do not expect
one.
:warning.If there are extended attribute objects in the sequence that
are not allocated on heap, when the destructor is called, a run-time error
is very likely to occur since operator delete is called on every pointer
in the sequence.
:ewarning.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.
:nt.It is possible that some of the contained objects will find and
report errors. If that happens, and how, depends on the type of
the contained objects.
:ent.

:h3 hide res=24221 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.allowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void allowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM =
.br
                           &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.,
.br
                           const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2122 dependent
group=3.Creator:elink.&amp. creator =
.br
                           :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.&colon.&colon.createFrom)
:font facename=default.
:p.
Add :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink. to the
creator map, making it possible to dynamically create typed sequence extended
attributes by calling :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21213 dependent
group=3.newFrom:elink. with that creator map. The :link reftype=hd
res=204 dependent group=1.TSequenceEA<T>:elink. object will be created
by a call to the provided creator function.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=24222 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.disallowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void disallowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM =
.br
                              &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.)
:font facename=default.
:p.
Remove the creator of :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink. from the provided creator map, making it
impossible to dynamically create :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink. objects from it.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=24223 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.cast
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.* cast(:link reftype=hd res=201 dependent
group=1.EA:elink.*)
.br
  static const :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.* cast(const :link reftype=hd res=201
dependent group=1.EA:elink.*)
:font facename=default.
:p.
Cast pointers of :link reftype=hd res=201 dependent group=1.EA:elink. to
pointers of :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink..
Return the pointer value if, and only if, :link reftype=hd res=2423
dependent group=3.attributeId:elink.() of the object equals :link
reftype=hd res=206 dependent group=1.SequenceEA:elink.&colon.&colon.:link
reftype=hd res=2634 dependent group=3.id:elink. and its :link reftype=hd
res=2625 dependent group=3.contentId:elink.() returns T&colon.&colon.:link
reftype=hd res=24224 dependent group=3.elementId:elink.. Otherwise the
value returned will be 0.
:p.
:caution.cast is unable to distinguish between TSequenceEA<T> and other
implementations of EAT_MVST, or TSequenceEA<T2> where T&colon.&colon.id
== T2&colon.&colon.id for that matter, since only the type identifiers
are compared.
:ecaution.

:h3 hide res=24224 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.elementId
.br
:font facename=Courier size=10x8.
template <class T>
.br
class TSequenceEA &dot.&dot.&dot.
.br
{
.br
  enum { elementId = T&colon.&colon.id }
:font facename=default.
:p.
Constant for accessing the type identifier of the class that :link reftype=hd
res=204 dependent group=1.TSequenceEA<T>:elink. is
parametrised with. For example, :link reftype=hd res=204 dependent
group=1.TSequenceEA:elink.<:link reftype=hd res=202 dependent
group=1.StringEA:elink.>&colon.&colon.elementId == :link reftype=hd res=202
dependent group=1.StringEA:elink.&colon.&colon.:link reftype=hd
res=2227 dependent group=3.id:elink..
:p.
There is little reason to use this constant. It is used internally
by :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.&colon.&colon.:link reftype=hd
res=24223 dependent group=3.cast:elink..

:h3 hide res=24225 x=30% width=70% height=50%. EA&colon.&colon.clone
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual TSequenceEA<T>* clone(void) const
:font facename=default.
:p.
Create an exact deep copy of self on the heap and return the pointer
to it. Used by the copy constructors and assignment operators of
extended attribute collections such as :link reftype=hd res=203
dependent group=1.MTSequenceEA:elink. and :link reftype=hd res=204
dependent group=1.TSequenceEA<T>:elink..
:p.
clone itself does not find or report any errors, but since it does
a deep copy of the collection, some of the containing objects
might. If and how this is done depends on the type of the
containig objects.

:h3 hide res=2423 x=30% width=70% height=50%. EA&colon.&colon.attributeId
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink.
:link reftype=hd res=21216 dependent group=3.attributeId:elink.(void) const
:font facename=default.
:p.
Returns :link reftype=hd res=206 dependent
group=1.SequenceEA:elink.&colon.&colon.:link reftype=hd res=2634 dependent
group=3.id:elink.
:p.
Possible errors.
:sl compact.
:li.-
:esl.

:h3 hide res=2424 x=30% width=70% height=50%. EA&colon.&colon.getFrom
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void getFrom(const IString&amp. file,
.br
               const IString&amp. name);
.br
  void getFrom(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Read the value of the named extended attribute for the file into the
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink. object.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.ReadError:elink. and the error
code returned by OS/2. If :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21211 dependent
group=3.errorHandler:elink. returns, the TSequenceEA<T> object
will remains unchanged.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.NoSuchEAError:elink. and 0.
If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns, the
TSequenceEA<T> object will remain unchanged.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. If :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. returns,
the TSequenceEA<T> object will remain unchanged.
:edl.
:p.
:link reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
is called both if the named attribute is not a typed
sequence extended attribute, and if the type of the content read is not
that of T.
:nt.In addition to the above, it is possible that some of the contained
objects will find and report errors. If and how that is done depends on
the type of the objects.
:ent.

:h3 hide res=2425 x=30% width=70% height=50%. EA&colon.&colon.storeTo
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void storeTo(const IString&amp. file,
.br
               const IString&amp. name);
.br
  void storeTo(fstreambase&amp. file,
.br
               const IString&amp. name);
:font facename=default.
:p.
Write the value of the typed extended attribute sequence to the
file using the name given.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.WriteError:elink. and the
error code returned by OS/2.
:edl.
:h3 hide res=2426 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.readFrom
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual istrstream&amp. readFrom(istrstream&amp. is)
:font facename=default.
:p.
Overrides :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2135.readFrom:elink.
to read the content of the typed sequence extended attribute and
store its value in the :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink
object itself.
:p.
Possible errors are&colon.
:dl tsize=25.
:dthd.:hp2.Error:ehp2.
:ddhd.:hp2.Action:ehp2.
:dt.:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink.
:dd.Call :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21211 dependent group=3.errorHandler:elink. with
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2128 dependent group=3.TypeMismatchError:elink. and the
type found. This means that the content type of the sequence (i.e.
T&colon.&colon.id) was not the content type read from the stream.
:edl.
:nt.In addition to the above, it is possible that some of the contained
objects will find and report errors. If and how that is done depends on
the type of the objects.
:ent.


:h3 hide res=2427 x=30% width=70% height=50%. TSequenceEA<T>&colon.&colon.writeTo
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual ostrstream&amp. writeTo(ostrstream&amp. os)
:font facename=default.
:p.
Overrides :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2136.writeTo:elink.
to write the content of the typed sequence extended attribute.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.
:nt.It is possible that some of the contained objects will find and
report errors. If and how that is done depends on the type of the objects.
:ent.
:h3 hide res=2520 x=30% width=70% height=50%. TEA<T,EA&colon.&colon.Identifier>&colon.&colon.id
.br
:font facename=Courier size=10x8.
template <class T, EA&colon.&colon.Identifier eaid>
.br
class TEA
.br
{
.br
public&colon.
.br
  struct { id = eaid; };
.br
&dot.&dot.&dot.
.br
:font facename=default.
A named class constant with the value passed when instantiating :link
reftype=hd res=205 dependent group=1.TEA:elink..
Representing the type for the concrete extended attribute object
inheriting from :link reftype=hd res=205 dependent group=1.TEA:elink..

:fn id=2521.
Destructor for TEA. Does nothing explicit, since TEA does not have
any data of its own.
:efn.

:h3 hide res=2522 x=30% width=70% height=50%. TEA<T,EA&colon.&colon.Identifier>&colon.&colon.cast
.br
:font facename=Courier size=10x8.
template <class T,EA&colon.&colon.Identifier eaid>
.br
class TEA<T,eaid>
.br
{
.br
public&colon.
.br
  static T* cast(:link reftype=hd res=201 dependent group=1.EA:elink.*);
.br
  static const T* cast(const :link reftype=hd res=201 dependent group=1.EA:elink.*);
.br
  &dot.&dot.&dot.
:font facename=default.
:p.
Cast pointers to :link reftype=hd res=201 dependent group=1.EA:elink. to
pointers of class T if, and only if, the type identifier of the :link
reftype=hd res=201 dependent group=1.EA:elink. object is identical to
the typeid :link reftype=hd res=205 dependent group=1.TEA:elink. is
instantiated with (i.e. T&colon.&colon.:link reftype=hd res=2520
dependent group=1.id:elink..) Return 0 otherwise.
:p.
:caution.cast is unable to differ between objects of class T and other
implementation of T&colon.&colon.id, since only the attribute id is compared.
:ecaution.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2523 x=30% width=70% height=50%. TEA<T,EA&colon.&colon.Identifier>&colon.&colon.allowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
static void allowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM =
.br
                         &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.,
.br
                         const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2122 dependent
group=3.Creator:elink.&amp. = :link reftype=hd res=205 dependent
group=1.TEA:elink.<T,:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent
group=3.Identifier:elink.>&colon.&colon.createFrom);
:font facename=default.
:p.
Add the creator of the descendant of TEA to the provided creator map.
:note text='Note for designers of new classes'.
A default creator is provided by TEA. If you need a different one,
you must write an allowDynamic function for your own class, and a
special creator function for it. If you have only a specific
creator function, override allowDynamic to take the creator function
as its default argument, and call TEA&colon.&colon.allowDynamic from your own
override.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2524 x=30% width=70% height=50%. TEA<T,EA&colon.&colon.Identifier>&colon.&colon.disallowDynamic
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static void
.br
    disallowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124
dependent group=1.CreatorMap:elink.* pCM =
.br
                    &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210
dependent group=1.defaultCreatorMap:elink.);
:font facename=default.
:p.
Remove the creator of the descendant of :link reftype=hd res=205
dependent group=1.TEA:elink. from the provided creator map.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2525 x=30% width=70% height=50%. TEA<T,EA&colon.&colon.Identifier>&colon.&colon.TEA
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  :link reftype=hd res=205 dependent group=1.TEA:elink.(void);
.br
  :link reftype=hd res=205 dependent group=1.TEA:elink.(const :link
reftype=hd res=205 dependent group=1.TEA:elink.<T, :link reftype=hd
res=201 dependent group=1.EA:elink.&colon.&colon.:link reftype=hd
res=2121 dependent group=3.Identifier>:elink.&amp.t);
:font facename=default.
:p.
Initialise the extended attribute base object. Use when implementing
descendant extended attribute classes.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2526 x=30% width=70% height=50%. TEA<T,EA&colon.&colon.Identifier>&colon.&colon.operator=
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  const :link reftype=hd res=205 dependent group=1.TEA:elink.<T, :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink.>&amp. operator=(const
:link reftype=hd res=205 dependent group=1.TEA:elink.<T, :link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink.>&amp. t)
:font facename=default.
:p.
Copy the content and status of t to self and return self reference. Use
in the implementation of descendants from :link reftype=hd res=205
dependent group=1.TEA:elink.<T, :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent
group=3.Identifier:elink.>.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2621 x=30% width=70% height=50%. SequenceEA&colon.&colon.errorFunction
.br
:font facename=Courier size=10x8.
public&colon.
.br
  static :link reftype=hd res=201 dependent group=1.EA:elink.*
(*errorFunction)(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2121 dependent
group=3.Identifier:elink.);
:font facename=default.
:p.
The error function called if a :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink., for which allowDynamic
has not been called (but another :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink. has been allowed,) is
attempted to be read anonymously (by
:link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21213 dependent group=3.newFrom:elink.
or as an element in :link reftype=hd res=203 dependent
group=1.MTSequenceEA:elink.) The default function throws an
EATSequenceEAInstError exception, with the identifier of the content
type as the error code. To override this function, simply assign it
your own. The value returned from the function (if it returns) is
what :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=21213 dependent group=3.newFrom:elink. or :link
reftype=hd res=203 dependent group=1.MTSequenceEA:elink. gets.

:h3 hide res=2622 x=30% width=70% height=50%. SequenceEA&colon.&colon.~SequenceEA
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual ~:link reftype=hd res=206 dependent group=1.SequenceEA:elink.(void)
:font facename=default.
:p.
Destroy the :link reftype=hd res=206 dependent group=1.SequenceEA:elink.
object.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2623 x=30% width=70% height=50%. SequenceEA&colon.&colon.getCodePage
.br
:font facename=Courier size=10x8.
public&colon.
.br
  unsigned short getCodePage(void) const;
:font facename=default.
:p.
Return the code page used by the :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink. object. Code page 0
means the same code page as used by the application.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2624 x=30% width=70% height=50%. SequenceEA&colon.&colon.setCodePage
.br
:font facename=Courier size=10x8.
public&colon.
.br
  void setCodePage(unsigned short p)
:font facename=default.
:p.
Set the code page for the instance of :link reftype=hd res=204
dependent group=1.TSequenceEA<T>:elink.. Code page 0 means
to use the same code page as the application.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2625 x=30% width=70% height=50%. SequenceEA&colon.&colon.contentId
.br
:font facename=Courier size=10x8.
public&colon.
.br
  :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink. contentId(void) const
:font facename=deafult.
:p.
Returns the identifier of the content type, i.e. :link reftype=hd
res=204 dependent group=1.TSequenceEA<T>:elink.&colon.&colon.contentId()
returns T&colon.&colon.id. Since you will normally not work with :link
reftype=hd res=206 dependent group=1.SequenceEA:elink. directly,
but rather instances of :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink., there will be little need for
this function. It is used internally by the :link reftype=hd res=204
dependent group=1.TSequenceEA<T>:elink. override of
:link reftype=hd res=205 dependent group=1.TEA:elink.<T,:link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink.>&colon.&colon.:link
reftype=hd res=2522 dependent group=3.cast:elink.
functions.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2626 x=30% width=70% height=50%. SequenceEA&colon.&colon.clone
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual :link reftype=hd res=206 dependent group=1.SequenceEA:elink.*
clone(void) const
:font facename=default.
:p.
Returns 0. This version of clone should never be called, since
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink. overrides
it.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2627 x=30% width=70% height=50%. EA&colon.&colon.setCreatorMap
.br
:font facename=Courier size=10x8.
public&colon.
.br
  virtual void setCreatorMap(const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=1.CreatorMap:elink.*)
:font facename=default.
:p.
Override of the empty default function in :link reftype=hd res=201
dependent group=1.EA:elink.. It sets the :link reftype=hd res=206
dependent group=1.SequenceEA:elink.&colon.&colon.:link reftype=hd
res=2628 dependent group=3.pCreatorMap:elink. to
the map passed, to make sure children of the :link reftype=hd
res=204 dependent group=1.TSequenceEA<T>:elink. object are created from the
correct creator map.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2628 x=30% width=70% height=50%. SequenceEA&colon.&colon.pCreatorMap
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  const :link reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2124 dependent group=3.CreatorMap:elink.* pCreatorMap
:font facename=default.
:p.
Creator map passed to the containing objects of the :link reftype=hd
res=204 dependent group=1.TSequenceEA<T>:elink. inheriting
:link reftype=hd res=206 dependent group=1.SequenceEA:elink., as they are
created, to make sure they are read from the creator map specified. This
is only needed if the type of T is a collection class.

:h3 hide res=2629 x=30% width=70% height=50%. SequenceEA&colon.&colon.allowDynamic
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  static void allowDynamic(:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM,
.br
                           const :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2122 dependent
group=3.Creator:elink.&amp. creator = :link reftype=hd res=206 dependent
group=1.SequenceEA:elink.&colon.&colon.createFrom)
:font facename=default.
:p.
Override of the default from :link reftype=hd res=205 dependent
group=1.TEA:elink., to allow descendants of :link reftype=hd res=206
dependent group=1.SequenceEA:elink. to allow creation of :link
reftype=hd res=206 dependent group=1.SequenceEA:elink. objects through
the private creator function :link reftype=hd res=201 dependent
group=1.SequenceEA:elink.&colon.&colon.createFrom.

:h3 hide res=2630 x=30% width=70% height=50%. SequenceEA&colon.&colon.SequenceEA
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  :link reftype=hd res=206 dependent group=1.SequenceEA:elink.(:link
reftype=hd res=201 dependent group=1.EA:elink.&colon.&colon.:link
reftype=hd res=2121 dependent group=3.Identifier:elink. id,
.br
             :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2124 dependent
group=3.CreatorMap:elink.* pCM = &amp.:link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=21210 dependent
group=3.defaultCreatorMap:elink.);
.br
  :link reftype=hd res=206 dependent group=1.SequenceEA:elink.(const
:link reftype=hd res=206 dependent group=1.SequenceEA:elink.&amp. mvea);
:font facename=default.
:p.
Initialise instance of :link reftype=hd res=206 dependent
group=1.SequenceEA:elink.. Used by the constructors for
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink..
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2631 x=30% width=70% height=50%. SequenceEA&colon.&colon.operator=
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  const :link reftype=hd res=206 dependent group=1.SequenceEA:elink.&amp.
operator=(const :link reftype=hd res=206 dependent
group=1.SequenceEA:elink.&amp. mvea);
:font facename=default.
:p.
Copy content and status of mvea to self and return self reference. Used
by the assignment operator in :link reftype=hd res=204 dependent
group=1.TSequenceEA<T>:elink.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2632 x=30% width=70% height=50%. SequenceEA&colon.&colon.writeTo
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual ostrstream&amp. writeTo(ostrstream&amp. os)
:font facename=default.
:p.
Override of :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2136 dependent
group=3.writeTo:elink. that does nothing. Should never be called
since :link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
overrides it.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2633 x=30% width=70% height=50%. SequenceEA&colon.&colon.readFrom
.br
:font facename=Courier size=10x8.
protected&colon.
.br
  virtual istrstream&amp. readFrom(istrstream&amp. is)
:font facename=default.
:p.
Override of :link reftype=hd res=201 dependent
group=1.EA:elink.&colon.&colon.:link reftype=hd res=2135 dependent
group=3.readFrom:elink. that does nothing. Should never be called since
:link reftype=hd res=204 dependent group=1.TSequenceEA<T>:elink.
overrides it.
:p.
Possible errors are&colon.
:sl compact.
:li.-
:esl.

:h3 hide res=2634 x=30% width=70% height=50%. SequenceEA&colon.&colon.id
.br
:font facename=Courier size=10x8.
public&colon.
.br
  enum { id = EAT_MVST };
:font facename=default.
:p.
:euserdoc.












