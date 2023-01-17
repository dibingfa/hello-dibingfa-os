.code16
.offset 0x7c00
.text
_start:
    movw $0xb800,%ax
    movw %ax, %ds
    movb 'h', %al
_loop:
    jmp _loop

.org 510
.data
    .byte 0x55
    .byte 0xaa
