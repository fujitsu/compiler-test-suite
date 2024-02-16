      PROGRAM MAIN
      REAL,DIMENSION(5,5)::A,B                                              
      INTEGER K                                                         
      DATA K/1.0/                                                       
      DATA A/25*0.0/                                                    

      DATA B/10*0.0,10*3.14,5*3.14/                                      
      K=K+4                                                             
      CALL SUB(K,A)                                                     
      DO 10 I=1,5                                                       
        DO 10 J=1,5                                                     
          IF(A(I,J) .NE. B(I,J)) THEN                                   
            WRITE(6,999)                                                
            GOTO 20                                                     
          END IF                                                        
  10  CONTINUE                                                          
      WRITE(6,998)                                                      
  20  CONTINUE                                                          
 998  FORMAT(1H ,'**** OK ****')                             
 999  FORMAT(1H ,'**** NG ****')                             
      STOP                                                              
      END                                                               
                                                                        
      SUBROUTINE SUB(X,A)                                               
      INTEGER X                                                         
      REAL,DIMENSION(5,X)::A                                                
                                                                        
      X=X/2                                                             
      !A(:,3:)=A(1:5,3:4)+3.14                                           
      A(:,3:)=A(1:5,3:5)+3.14                                           
                                                                        
      END SUBROUTINE SUB                                                
