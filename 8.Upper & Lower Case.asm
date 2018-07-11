.MODEL SMALL
.STACK 100H


.DATA

var1 DB ?
var2 DB ?

str1 db 'Enter  Lower case: $'
str2 db 'Enter Upper case: $'
str3 db 'Now upper case is: $'
str4 db 'Now lower case is: $'   

.CODE

MAIN PROC
    mov ax, @data
    mov ds, ax 
    
    
    lea dx, str1
    mov ah, 9
    int 21h
    
    mov ah, 01h
    int 21h
    mov var1, al
    
    sub var1, 20h
    
    mov ah, 02h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    mov ax, @data
    mov ds, ax
    lea dx, str2
    mov ah, 9
    int 21h
    
    mov ah, 01h
    int 21h
    mov var2, al
    
    mov ah, 02h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    mov ax, @data
    mov ds, ax
    lea dx, str3
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov dl, var1
    int 21h
    
    mov ah, 02h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    add var2, 20h
    
    mov ax, @data
    mov ds, ax
    lea dx, str4
    mov ah, 9
    int 21h
    
    mov ah, 02h
    mov dl, var2
    int 21h
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
