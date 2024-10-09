%include "asm_io.inc"
global main
segment .data
msg : db "dlrow olleh",0
len equ ($-msg)-1  ; lenght of string
segment .text
main :      
	
	mov eax,msg
	push ebp
	mov ebp,esp
	back:
	push dword[eax+ecx]
	inc ecx
	cmp ecx,len
	jne back
	xor ecx,ecx
	back1:
	pop ebx
	mov dword[eax+ecx],ebx
	xor ebx,ebx
	inc ecx
	cmp ecx,len
	jne back1
	mov dword[eax+len],'' 
	pop ebp
	call print_string
	mov ebx,0
	mov eax, 1
	int 0x80
	
	
