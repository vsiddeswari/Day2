
global _start
_start:
	
	MOV R0,#1  
    MOV R1,#2  
    MOV R2,#0 
    MOV R0,R1   
    CMP  R0,#5
    BNE LOOP
LOOP:
    MOV R4,R0
    SUB R4,R4,#1
    AND R5,R4,R0
    CMP R5,#0
	BNE LOOP3
LOOP2:
    ADD R2,R2,R0
LOOP3:ADD R0,R0,#1
    CMP R0,#5
    BNE LOOP
    STR R2,RESULT
 
RESULT: .WORD 0X0
