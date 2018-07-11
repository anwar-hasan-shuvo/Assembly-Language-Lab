.MODEL SMALL
.STACK 100H

.DATA
A DB 'Enter 1st number: $'
B DB 10,13,'Enter 2nd number: $'
C DB 10,13,'Sum: $' 
F1 DB ?
F2 DB ?

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DL,OFFSET A
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV F1,AL
    
    MOV AH,9
    MOV DL,OFFSET B
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV F2,AL
    
    ADD AL,F1
    MOV AH,0
    AAA 
    
    ADD AH,48
    ADD AL,48  
    
    MOV BX,AX
    
    MOV AH,9
    MOV DL,OFFSET C
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    
    