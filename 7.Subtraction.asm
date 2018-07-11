.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    include 'emu8086.inc'
    
    MOV AH,1
    INT 21H
    
    PRINTN "" 
    
    MOV BL,AL
    INT 21H
    
  
    
    MOV BH,AL
    
    SUB BL,BH 
    ADD BL,48
     
    PRINTN ""
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H