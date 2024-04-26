      PROGRAM MAIN                                                   
      INTEGER*2      I,N,K                                              
      CHARACTER*5   A(10)                                               
      CHARACTER*12  B(10,10)                                            
      CHARACTER*8   C(10,10)                                            

      I=5                                                               
      A='     '                                                         
      B='            '                                                  
      C=' & POCHI'                                                      
      CALL SUB(A,B,C,I)                                                 

      DO 10 N=1,10                                                      
        IF ( N .GE. 7) THEN                                             
          IF ( A(N) .NE. '     ') GOTO 20                               
        ELSE                                                            
          IF ( A(N) .NE. 'PONTA') GOTO 20                               
        ENDIF                                                           
        DO 10 K=1,10                                                    
          IF ((K .GE. 5) .OR.                                           
     *       (( N .GE. 7).AND.(K .GE. 4))) THEN                         
            IF ( B(N,K) .NE. '            ') GOTO 30                    
          ELSE                                                          
            IF ( B(N,K) .NE. 'TAMA & POCHI') GOTO 30                    
          ENDIF                                                         
   10   CONTINUE                                                        
      PRINT *,'OK'                                      
      GOTO 40                                                           
   20 PRINT *,'NG'
      PRINT *,A                                                         
      GOTO 40                                                           
   30 PRINT *,'NG'                                   
      PRINT *,B                                                         
   40 END                                                               

      SUBROUTINE SUB(A,B,C,I)                                           
      INTEGER*2      I                                                  
      CHARACTER*(*)  A(I+1)                                             
      CHARACTER*(*)  B(I+1,I+1)                                         
      CHARACTER*(*)  C(I+1,I+1)                                         
      A='PONTA'                                                         
      B='TAMA'//C                                                       
      END                                                               
