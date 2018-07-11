.MODEL SMALL
.STACK 100H

.DATA
A DB ?
B DB ? 
c DB ?

.CODE 
MAIN PROC
    
    include 'emu8086.inc'
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV A,AL
    INT 21H
    MOV B,AL
    INT 21H
    MOV C,AL
    
    MOV BL,A ; BL -> B
    MOV BH,B
    MOV CL,C
    
    CMP BL,BH 
    JGE BL_VAR
    
    BH_VAR:
    CMP BH,CL
    JGE BH1_VAR
    print 'C biggest'
    JMP EXIT
    
    
    BH1_VAR:
    print 'B biggest'
    JMP EXIT
    
    
    BL_VAR:
    CMP BL,CL
    JGE BL1_VAR
    print 'C biggest'
    JMP EXIT
    
    BL1_VAR:
    print 'A biggest'
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    
    
    
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN