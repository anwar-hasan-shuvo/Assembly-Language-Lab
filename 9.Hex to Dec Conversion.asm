.MODEL SMALL
.STACK 100H

.DATA
A DB ?

.CODE
MAIN PROC
    include 'emu8086.inc'
    
    MOV AX,@DATA 
    MOV DS,AX
    
    
    PRINT 'Enter a hexadecimal value: '
     
    MOV AH,1
    INT 21H
    MOV A,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    PRINT 'Decimal value is: '
    MOV DL,A
    MOV AH,2
    MOV DL,'1'
    INT 21H
    SUB A,17
    MOV DL,A
    INT 21H
    

    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN