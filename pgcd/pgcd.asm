%include "asm_io.inc"
global main
segment .data
msg : db "entrez deux num :",10,0
msg1 : db "pgcd = ",0
msg2 : db "pgcd = 0 ",0
segment .text
main:
mov eax,msg
call print_string
call read_int
mov ecx,eax
call read_int
cmp eax,ecx
jg go
xchg eax,ecx
go:
cmp ecx,0
jne nonzero
mov eax,msg2
call print_string
jmp fin
nonzero:
boucle:
xor edx,edx
div ecx
mov eax,ecx
mov ecx,edx
cmp ecx,0
jne boucle
mov ecx,eax
mov eax,msg1
call print_string
mov eax,ecx
call print_int
fin:
mov eax,1
mov ebx,0
int 0x80
