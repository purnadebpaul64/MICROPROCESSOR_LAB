.MODEL SMALL
.STACK 100H
.DATA
    TEXT DB 10,13, "ENTER THE VALUE: $"
    TEXT1 DB 10,13, "EVEN $"
    TEXT2 DB 10,13, "ODD $"
    VAL1 DB 2
    VAL2 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09
    LEA DX,TEXT
    INT 21H
    
    MOV AH,01
    INT 21H
    SUB AL, "0"
    MOV VAL2,AL
    
    MOV AL,VAL2
    MOV AH,0
    DIV VAL1
    
    CMP AH,0
    JE EVEN
    JNE ODD
    
    EVEN:
    MOV AH,09
    LEA DX,TEXT1 
    INT 21H
    JMP EXIT
    
    ODD:
    MOV AH,09
    LEA DX,TEXT2
    INT 21H
        
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
 