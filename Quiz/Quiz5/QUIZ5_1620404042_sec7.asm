DATA SEGMENT
DATA ENDS
.DATA
  PROMPT DB \'Enter a mumber less than 9'$\
CODE SEGMENT
        ASSUME DS:DATA,CS:CODE
        START :
                MOV AX,DATA
                MOV DS,AX

        LEA DX,PROMPT
        MOV AH,9
        INT 21H
        
        MOV CX,10
        
        
   P1: ROL EAX,4        
    MOV BL,AL
    AND BL,0FH         
    ADD BL,30H
    JNA SHORT P2
    add bl,7           
P2: MOV [DI],BL       
    INC DI             
    DEC CI            
    JNZ P1
              
CODE ENDS
        END START


