.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 10,13, "ENTER 1ST NUMBER: $"
    MSG2 DB 10,13, "ENTER 2ND NUMBER: $"
    MSG3 DB 10,13, "RESULT: $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09
    LEA DX,MSG1
    INT 21H
    
    MOV AH,01
    INT 21H 
    SUB AL,"0"
    MOV BL,AL
    
    MOV AH,09
    LEA DX,MSG2
    INT 21H
    
    MOV AH,01
    INT 21H 
    SUB AL,"0"
    MOV BH,AL
    
    ADD BH,BL
    ADD BH,"0"
    
    MOV AH,09
    LEA DX,MSG3
    INT 21H
    MOV DL,BH 
    MOV AH,02
    INT 21H
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN