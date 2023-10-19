; Hello Word in nasm

; Constants
  cr equ 13				; define a constant cr (carriage-return) equal to 13
  lf equ 10				; define a constant lf (line-feed) equal to 10

section .data				; start writing the .data segment
  message db 'Hello World!',cr,lf
  length equ $ - message

section .text				; start writing the .text segment
global _start				; declare _start as a global symbol
_start:					; create the label _start
  mov edx,length
  mov ecx,message
  mov ebx,1
  mov eax,4				; system call 4 in x86 Linux kernel is sys_write
  int 80h
  mov ebx,0
  mov eax,1				; system call 1 in x86 Linux kernel is sys_exit
  int 80h