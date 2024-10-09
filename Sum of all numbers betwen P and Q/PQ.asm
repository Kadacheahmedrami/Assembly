%include "asm_io.inc"
global main
segment .data
msg1 : db "la somme est : ",0
msg2 : db "entrez P et Q : ",0
segment .text
main:
mov eax,msg2
call print_string
call read_int
mov ebx,eax
call read_int
sub eax,ebx
mov ecx,eax
mov eax,ebx
boucle:
inc ebx
add eax,ebx
loop boucle
mov ebx,eax
mov eax,msg1
call print_string
mov eax,ebx
call print_int 
fin:
mov eax,1
mov ebx,0
int 0x80
