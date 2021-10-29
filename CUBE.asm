DATA SEGMENT
    NUM DW 019H,
    CUBE DW 3 DUP<0>
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:MOV AX,DATA
    MOV DS,AX
    LEA SI,NUM     ;POINT SI TO NUM
    MOV AX,[SI]    ;MOVE THE VALUE AT SI LOCATION TO AX
    MOV BX,AX      ;MOVE THE VALUE STORED IN AX TO BX
    MUL AX         ;MULTIPLY AX WITH AX
    MUL BX         ;MULTIPLY AX WITH BX
    MOV CUBE,AX    ;STORE THE RESULT IN CUBE VARIABLE
    MOV AH,4CH
    INT 21H
    CODE ENDS
END START
