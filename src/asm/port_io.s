.code32

.text

.globl asm_outb
.type  asm_outb @function
asm_outb:
    pushl %eax
    pushl %edx
    movw 12(%esp), %dx
    movb 16(%esp), %al
    outb %al, %dx
    popl %edx
    popl %eax
    ret