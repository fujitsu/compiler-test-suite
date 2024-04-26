      PROGRAM MAIN                                                   
      INTEGER*4 A(10,10,10),B(10,10,10),C(10,10,10)                     
      A=1                                                               
      B=10                                                              
      C=0                                                               
      DO 10 I=1,10                                                      
   10   C(1:10,I,1:10)=A(1:10,I,1:10)+B(1:10,I,1:10)                    

      DO 20 I=1,10                                                      
        DO 20 J=1,10                                                    
          DO 20 K=1,10                                                  
            IF(A(I,J,K) .NE. 1) GOTO 30                                 
            IF(B(I,J,K) .NE. 10) GOTO 30                                
   20       IF(C(I,J,K) .NE. 11) GOTO 30                                

      WRITE(6,*) 'OK'
      GOTO 40                                                           
   30 WRITE(6,*) 'NG'

   40 STOP                                                              
      END                                                               
