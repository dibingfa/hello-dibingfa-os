section mbr vstart=0x7c00

;BIOS roll scree
mov ax,0x0600
mov bx,0x0700
mov cx,0
mov dx,0x184f
int 0x10

;write direct to video memory
mov ax,0xb800
mov gs,ax
mov byte [gs:0x00],'h'
mov byte [gs:0x02],'e'
mov byte [gs:0x04],'l'
mov byte [gs:0x06],'l'
mov byte [gs:0x08],'o'
mov byte [gs:0x0a],' '
mov byte [gs:0x0c],'d'
mov byte [gs:0x0e],'i'
mov byte [gs:0x10],'b'
mov byte [gs:0x12],'i'
mov byte [gs:0x14],'n'
mov byte [gs:0x16],'g'
mov byte [gs:0x18],'f'
mov byte [gs:0x1a],'a'

jmp $

times 510-($-$$) db 0
db 0x55,0xaa
