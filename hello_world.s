# minimal hello world example for Mac OS X x64

.section __DATA,__data
str:
  .asciz "Hello, World!\n"

.section __TEXT,__text
.globl _main
_main:
  movl $0x2000004, %eax
  movl $1, %edi
  movq str@GOTPCREL(%rip), %rsi
  movq $100, %rdx
  syscall

  movl $0, %ebx
  movl $0x2000001, %eax
  syscall
