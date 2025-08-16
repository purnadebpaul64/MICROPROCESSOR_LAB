.MODEL SMALL
.STACK 100H
.DATA 
    ARR DB 2,7,6,4,5,8
    MSG DB 10,13, "AVE: $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09
    LEA DX,MSG
    INT 21H
    
    LEA SI,ARR
    MOV CX,6
    MOV AX,0
    
    LOOP1:
    ADD AL,[SI]
    INC SI
    DEC CX
    JNZ LOOP1   
    
    MOV BL,6
    DIV BL
    MOV DL,AL
    ADD DL,30H 
    MOV AH,02
    INT 21H    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN