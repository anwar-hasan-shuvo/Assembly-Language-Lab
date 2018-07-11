.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC  
    
    SUB CX,CX
    MOV AH,1
    INT 21H

WHILE:
         
    CMP AL,0DH
    JE END_WHILE
    PUSH AX
    INC CX
    INT 21H
    JMP WHILE


END_WHILE:

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H     
    JCXZ EXIT 
     
TOP:
    POP DX
    INT 21H
    LOOP TOP 
    
 EXIT: 
    MOV AH,4CH
    INT 21H  
    MAIN ENDP
    END MAIN
    
