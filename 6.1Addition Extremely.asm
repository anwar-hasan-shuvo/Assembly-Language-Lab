.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    include 'emu8086.inc'  
    
    PRINT "Enter the 1st number: "
    MOV AH,1
    INT 21H
    MOV BL,AL  ;1st number taking
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H      
        
    
    PRINT "Enter the 2nd number: "     
    MOV AH,1
    INT 21H 
    MOV CL,AL  ;2nd number taking
      
    
    ADD BL,CL
    SUB BL,48
    
        
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H      
    
    PRINTN ""
    PRINT "Sum is "
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN