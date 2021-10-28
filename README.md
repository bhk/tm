# TM - Tiny eMacs

TM is a DOS text editor with a fair amount of Emacs-like behavior in an
executable smaller than 4096 bytes.

See [tm.txt](tm.txt) for documentation (however, it is best viewed using
tm.com).


## Project Organization

TM source files:

 * init.8  -- defines variables; must be named first on the command line
 * tm.8    -- bulk of editing code
 * key.8   -- macro handling
 * dos.8   -- file IO
 * srch.8  -- incremental search & replace
 * mem.8   -- memory and buffer managemnt; must be last on the command line

Other sources of note:

* ztrim.8 : A program that trims the zero-initialized variables from the
  start of a COM program.  It is not a general purpose utility; TM has to
  know about it to survive this processing step.

* other/scan.8 : A test program that accepts keyboards input and displays
  the keycode representation that TM uses internally in its function binding
  tables.

TM is written in A86 assembly language.


## Environment

./Makefile is intended to be run from a POSIX-ish environment.  It invokes
`dosbox` to build TM, assuming that the DOSBOX configuration will place A86
in the path.
