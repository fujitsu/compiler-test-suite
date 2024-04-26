      PROGRAM MAIN                                                   
      DIMENSION A(10),B(10)                                             

      B=1                                                               
      CALL SUB(A)                                                       
      A=A+B                                                             

      DO 10 I=1,10                                                      
   10   IF(A(I) .NE. 3.000) GOTO 20                                     

      WRITE(6,*) 'OK'                                   
      GOTO 30                                                           
   20 WRITE(6,*) 'NG'                                   
      WRITE(6,*) 'A =',A(I),'I = ',I                                    
   30 END                                                               

      SUBROUTINE SUB(A)                                                 
      DIMENSION A(10)                                                   
      A=2                                                               
      END                                                               
