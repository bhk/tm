# Notes

## Size Reduction: General

* TM does not use standard calling conventions.  Registers and the carry
  flag are used for most parameters, and which registers are used varies
  depending on the circumstance (to minimize pushing and popping to
  preserver registers, and to minimize moves for the sake of getting
  arguments in the correct regsters.)

* No self-modifying code

  There are places where self-modifying code might make things smaller, but
  I have avoided it and some other things that reduce readability.

* Using immediate data as arguments to functions

  We can replace:

        mov ax,arg1
        call func

  with:

        call func
        dw arg1

  ... and save one byte per argument per call, if we modify `func` to:

        func:   pop si
                lodsw
                <body>
                jmp si

  ... instead of:

        func:   <body>
                ret

* "Dynamic wrapper" functions

  Instead of:

        proc1:  push bx,cx,dx,si,di
                ....
                pop di,si,dx,cx,bx
                ret

   Have:

        proc1:  call saveregs_wrap
                ....
                ret

  "saveregs_wrap" will save all functions AND the original return
  address, then substitute its own return address -- that of code
  which will restore the registers and then return to the original
  return address.

      saveregs_wrap:  pop bp
                      push bx,cx,dx,si,di
                      call bp
                      pop di,si,dx,cx,bx
                      ret

* Simple transformations

  - Call-ret reduction

        call  f     -->      jmp f
        ret

    ...which can further reduce to a fall-through when the preceding code
    can be positioned appropriately.  This allows multiple functions to be
    grafted together, sharing the same epilogue code and 'ret' instruction.


  - Special prologue AND epilogue

           call f   -->    pushi lbl        [on 8086, use "mox ax,lbl / push ax"]
           jmp lbl  -->    ;fall through to f
        f: ...           f: ...

 - Depending on which symbol is closer

       call sub   <-->     pushi lbl
       jmp lbl             jmp sub      ; relative jump (2 bytes) or abs (3)


* Jumping into the middle of an instruction

  Consider a case where a function f takes the carry flag as an argument,
  and two helper functions: h1, which executes f with the carry flag
  cleared, and h2, which sets the carry before calling f.

  Here is a seemingly-minimal 4 byte sequence to provide the two helper
  functions:

        h1:     clc
                jmp f
        h2:     stc
        f:      ...

  The following 2-byte sequence is possible:

        h1:     db 0Ch          ; "OR AL,"
        h2:     stc             ; "0F9h"
        f:      ...

  In the case where separate entry points set AL to one of two values, there
  is this 5-byte alternative to the normal 6-byte version.  Replace:

        e1:     mov al,X
                jmp f
        e2:     mov al,Y
        f:      ...

  With:

        e1:     db 0A1h         ; " == MOV AX, ... "
        e2:     mov al,B        ; " == db 0A0h, B "
                xor al,A
        f:      ...

  where A = (X xor 0A0h), and B = (Y xor A).


  To set AH to 0 or FF, try:  MOV AX, "MOV AL,x"; CBW


* Sometimes, instructions that do more than needed are smaller than those
  that do exactly what is needed, and their unnecessary effects may not be a
  problem.  Examples:

  - `lodsb` instead of `mov al,[si]`
  - `xchg ax,bx` instead of `mov ax,bx` or `mov al,bl`
  - `inc r16` instead of `inc r8`

  Document the intended action with a comment like "for mov al,bl".


* For each data item, consider each usage and choose representations which
  optimize the usages.  For example, if a status variable represents an
  on/off condition, and it is used in the following ways:

        a) mov statvar,1        ; to turn it on
        b) mov statvar,0        ; ... off
        c) test statvar         ; to see if value is on
           jz ...
        d) test statvar
           if z add al,3

  ...then an ON value of 3 would be more useful, since it would shorten case
  (d) (to just "add al,statvar") and leave the others unchanged.


* Re-use common subroutine tails


* Position code to make use of sequential control flow (vs. jumps or calls)


* Make the most of compares

  Instead of:

        test al
        jz >l1
        cmp al,1
        jz >l2

  Use:

        cmp al,1
        jc >l1
        jz >l2


## Size Reduction: TM-specific

I'm not actually sure which of these have been implemented yet....

* For command-line argument bindings, store the values next to the argument
  letter, instead of a pointer next to the letter.  Example:

              db 'x'
      x1      db 0
              db 'y'
      y1      db 0

  instead of...


      x1      db 0
      y1      db 0
              ...
              db 'x'
              dw x1
              db 'y'


  This would save 2 bytes per argument -- 20 bytes total, and maybe some
  code too.


* Use indexes for message strings, instead of addresses.

  TM encodes strings in a compressed format that allows each string to
  include other strings recursively.


* Delta-encode BIND lists (re-write get_assoc)

  Bindings of characters to words are currently unordered, leaving unused
  information.  Re-ordering them by ascending word values would allow one
  byte to represent each word value.

  Savings:  1 byte per binding (62 bytes, currently), minus code overhead


* Replace all "mov point,di" occurrences with "call mov_point_di".  Saves 6
  bytes.


* [unimplemented] Move mx_buf to the end of the .COM file to allow built-in
  macros, and do Ctrl-T and word-wise operations as macros.


* [unimplemented] For command-line argument bindings, store the values next
  to the argument letter, instead of a pointer next to the letter.  Example:

                db 'x'
           x1   db 0
                db 'y'
           y1   db 0

  instead of...


      x1        db 0
      y1        db 0
                ...
                db 'x'
                dw x1
                db 'y'


  This would save 2 bytes per argument.  20 bytes total, and maybe some
  code too.


## Misc

* Screen updates: Buffer manipulation functions are implemented in separate
  "modify" and "update" sub-functions, so that higher-level functions can
  make multiple calls to lower-level modification routines without
  triggering multiple buffer updates.  The ultimate fallback is to
  re-display the entire screen.


* Instruction sizes:

    mov r,ib    2
    mov r,iw    3

    mov AX,mem  3
    mov r,mem   4
    mov r,[r]   2       r = BX,SI,DI  (size = 3 for [bp])

    mov mem,ib  5
    mov mem,iw  6

* BIOS

      Mode    Res             Colors
      40      80x43           16
      41      132x25
      42      132x43
      43      80x60
      44      100x60
      45      132x28

      23h     132x25          16      b800:0
      27h     132x25          2       b000:0
      33h     132x44          16      b800:0
      37h     132x44          2       b000:0
      58h     80x33           16      b800:0

      mov ah,0Fh
      int 10h
              ah = # columns on screen
              al = display mode
              bh = active display page


      mov ah,0Eh
      mov al,ascII character
      mov BH,display page
      mov BL,foreground color
      int 010h                        ; Displays char at cursor in teletype mode


## TODOs

 * Group consecutive single-character inserts (and deletes?) into a single
   undo record.
