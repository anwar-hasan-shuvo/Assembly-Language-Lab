.MODEL SMALL
.STACK 100H 


.CODE
MAIN PROC 
    
    CALL ADDI

    
    MAIN ENDP
    
ADDI PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    
    ADD BL,BH
    SUB BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    ADDI ENDP
   
    

    
    
    
    
                                                       
                                                       
    