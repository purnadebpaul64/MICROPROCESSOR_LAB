.MODEL SMALL
.STACK 100H
.DATA 
    ARR DB 6,7,3,2,8,9
    MSG DB 10,13, "THE LARGEST ELEMENT IS: $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5
    LEA SI,ARR
    MOV BL,[SI]
    
    LOOP1:
    INC SI
    CMP BL,[SI]
    JGE NEXT
    MOV BL,[SI]
    
    NEXT:
    DEC CX
    JNZ LOOP1
    
    MOV AH,09
    LEA DX,MSG
    INT 21H
    
    MOV AH,02
    MOV DL,BL
    ADD DL,"0"
    INT 21H  
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN