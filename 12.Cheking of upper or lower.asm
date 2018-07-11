.MODEL SMALL
.STACK 100H

.DATA
A DB 'UPPERCASE$'
B DB 'LOWERCASE$'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
   
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,'A'
    JAE UP
    
    
    
    UP:
    CMP BL,'Z'
    JNBE LOWER
    
    MOV AH,9
    MOV DL,OFFSET A
    INT 21H
    JMP EXIT
    
    LOWER:
    MOV AH,9
    MOV DL,OFFSET B
    INT 21H
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    