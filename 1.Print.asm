.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    
    MOV DL,'A'
    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN