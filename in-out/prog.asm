
global main

segment .data

 msg : db "enter ur name : ",0
 
 len : equ $ - msg
 
 msg1 : db "ur name is : ",0

len1 : equ $ - msg1


segment .bss

name resb 64 

segment .text

main : 

mov edx,len 
mov ecx,msg
call output_msg  ; print("enter name")

call input       ; scan(name)


mov edx,len1 
mov ecx,msg1
call output_msg  ; print(ur name is :)


mov edx,64
mov ecx,name
call output_msg  ; print(name)



mov ebx ,0
mov eax ,1
int 0x80     ; exit main



input :
mov eax,3
mov ebx,0
mov ecx,name  
mov edx,64
int 0x80
ret




output_msg :
mov eax,4 
mov ebx,1
int 0x80
ret
