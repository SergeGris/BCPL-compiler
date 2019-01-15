// Copyright (c) 2004, 2012 Robert Nordier. All rights reserved.

// BCPL compiler x86 runtime
// System interface: FreeBSD

        .set    RESULT2,91              # BCPL RESULT2

        .global _exit
_exit:  mov     $1,%eax
        int     $0x80

        .global read
read:   mov     $3,%eax
        int     $0x80
        jc      error
        ret

        .global write
write:  mov     $4,%eax
        int     $0x80
        jc      error
        ret

        .global open
open:   mov     $5,%eax
        int     $0x80
        jc      error
        ret

        .global close
close:  mov     $6,%eax
        int     $0x80
        jc      error
        ret

        .global break
break:  mov     $0x11,%eax
        int     $0x80
        jc      error
        ret

        .global olseek
olseek: mov     $0x13,%eax
        int     $0x80
        jc      error
        ret

        .global ioctl
ioctl:  mov     $0x36,%eax
        int     $0x80
        jc      error
        ret

error:  mov     %eax,G+RESULT2*4        # Set error code
        mov     $-1,%eax
        ret

        .global sbrk
sbrk:   mov     curbrk,%eax
        add     4(%esp),%eax
        push    %eax
        call    break
        pop     %ecx
        jc      1f
        mov     curbrk,%eax
        mov     %ecx,curbrk
1:      ret

        .set    TERMIOSZ,0x40
        .set    TIOCGETA,0x402c7413

        .global isatty
isatty: sub     $TERMIOSZ,%esp
        push    %esp
        push    $TIOCGETA
        push    0xc+TERMIOSZ(%esp)
        call    ioctl
        mov     $0,%eax
        jc      1f
        inc     %eax
1:      add     $0xc+TERMIOSZ,%esp
        ret

// Set to the value of O_TRUNC | O_CREAT | O_WRONLY in <fcntl.h>
        .global oflags
oflags: .long 0x601

        .data
curbrk: .long   _end
