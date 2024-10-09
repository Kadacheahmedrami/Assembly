%include"asm_io.inc"



global main
segment .data

segment .bss
string resb 16
segment .text
main:
call entrez

mov esi,string
mov ecx,0
back:
 inc ecx 
cmp byte[esi+ecx],0 
jne back
dec ecx ; to eliminate the '\0'

mov eax,ecx
call print_int


mov eax,1
mov ebx,0
int 0x80


entrez:
mov eax,3
mov ebx,0
mov ecx,string
mov edx,16
int 0x80
ret
