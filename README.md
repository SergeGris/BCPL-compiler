# BCPLC README

This is an i386 (IA-32) port of the "classic" old BCPL compiler
(around 1980) from the Tripos Research Group at Cambridge University.

BCPL was a popular systems programming language during the 1960s
and 1970s, and is of great historical importance: about the time
of the birth of UNIX, BCPL directly inspired the computer language
B and thus had a very big influence on the development of C.

The compiler available here is very close to that featured in the
book, _BCPL: the language and its compiler_ by Martin Richards and
Colin Whitby-Stevens (Cambridge: Cambridge University Press, 1979).

As a real, working computer language implementation, that can be
studied, modified, and played with, the classic BCPL compiler has
a good deal to recommend it. The compiler frontend consists of
only about 2000 lines of BCPL code, and (as supplied here) compiles
to a static (fully-linked) x86 binary that is less than 36000 bytes
in size.

The present distribution supplies a compiler backend (OCODE to x86
code generator), together with peephole optimizer, and reasonably
extensive runtime support. A few revisions have been made to the
compiler frontend -- it looks for header files in a standard location,
for instance -- and the runtime incorporates support for UNIX
command line arguments and error reporting. Some documentation
that formed part of the original BCPL distribution tape is also
included, as are a few utility programs.

Martin Richards, the originator of BCPL, has a home page at

    http://www.cl.cam.ac.uk/~mr10/

Richards has continued to develop BCPL, very much as though it were
still a living language, and has a large and complex distribution
of "present day" BCPL available, together with some archive materials.

The web page for this distribution is

    http://www.nordier.com/software/obcpl.html


Robert Nordier
www.nordier.com
