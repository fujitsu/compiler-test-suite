      PROGRAM MAIN                                                   
      REAL A(5,5),B(5,5),C(5,5),D(5,5)                                  

      A=1                                                               
      B=2                                                               
      CALL SUB(A,B,C,D)                                                 

      DO 20 I=1,5                                                       
        DO 10 J=1,5                                                     
          IF(A(J,I) .NE. 1.0) GOTO 30                                   
          IF(B(J,I) .NE. 2.0) GOTO 30                                   
          IF(C(J,I) .NE. A(J,I)+B(J,I)+I) GOTO 30                       
          IF(D(J,I) .NE. B(J,I)-A(J,I)+J) GOTO 30                       
  10    CONTINUE                                                        
  20  CONTINUE                                                          

      WRITE (6,*) 'OK'                                  
      GOTO 40                                                           
  30  WRITE (6,*) 'NG'                                  
      WRITE (6,*) 'A =',A(J,I),'B =',B(J,I),'C =',C(J,I),'D =',D(J,I)   
  40  END                                                               

      SUBROUTINE SUB(A,B,C,D)                                           
      REAL A(5,5),B(5,5),C(5,5),D(5,5)                                  
      C=A+B                                                             
      D=B-A                                                             
      DO 60 I=1,5                                                       
        DO 50 J=1,5                                                     
          C(J,I)=C(J,I)+I                                               
  50    CONTINUE                                                        
  60  CONTINUE                                                          
      DO 80 I=1,5                                                       
        DO 70 J=1,5                                                     
          D(J,I)=D(J,I)+J                                               
  70    CONTINUE                                                        
  80  CONTINUE                                                          
      RETURN                                                            
      END                                                               
