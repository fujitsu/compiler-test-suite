      PROGRAM MAIN                                                   
      REAL A(5,5),B(5,5),C(5,5),D(5,5)                                  

      CALL SUB(A,B,C,D)                                                 

      DO 20 I=1,5                                                       
        DO 10 J=1,5                                                     
          IF(A(J,I) .NE. 0.0) GOTO 30                                   
          IF(B(J,I) .NE. 0.0) GOTO 30                                   
          IF(C(J,I) .NE. 0.0) GOTO 30                                   
          IF(D(J,I) .NE. 0.0) GOTO 30                                   
  10    CONTINUE                                                        
  20  CONTINUE                                                          

      WRITE (6,*) 'OK'                                  
      GOTO 40                                                           
  30  WRITE (6,*) 'NG'                                  
      WRITE (6,*) 'A =',A(J,I),'B =',B(J,I),'C =',C(J,I),'D =',D(J,I)   
  40  END                                                               

      SUBROUTINE SUB(A,B,C,D)                                           
      REAL A(5,5),B(5,5),C(5,5),D(5,5)                                  
      DO 20 I=1,5                                                       
        DO 10 J=1,5                                                     
          A(J,I)=I+J                                                    
  10    CONTINUE                                                        
  20  CONTINUE                                                          
      DO 40 I=1,5                                                       
        DO 30 J=1,5                                                     
          B(J,I)=I*J                                                    
  30    CONTINUE                                                        
  40  CONTINUE                                                          
      DO 100 K=1,3                                                      
        C=A+B                                                           
        D=B-A                                                           
        DO 60 I=1,5                                                     
          DO 50 J=1,5                                                   
            A(J,I)=0.0                                                  
  50      CONTINUE                                                      
  60    CONTINUE                                                        
        DO 80 I=1,5                                                     
          DO 70 J=1,5                                                   
            B(J,I)=0.0                                                  
  70      CONTINUE                                                      
  80    CONTINUE                                                        
 100  CONTINUE                                                          
      RETURN                                                            
      END                                                               
