      PROGRAM MAIN
      REAL,DIMENSION(5,5)::A,B                                              
      INTEGER  K,L                                                      
      DATA K,L/2*4.0/                                                   
      DATA A/25*0.0/                                                    
      DATA B/2*3.14,3*3.14,2*3.14,18*3.14/                                
      K=K+1                                                             
      L=K                                                               
      CALL SUB(K,L,A)                                                   
      DO 10 I=1,5                                                       
        DO 10 J=1,5                                                     
          IF(A(I,J) .NE. B(I,J)) THEN                                   
            WRITE (6,999)                                               
            GOTO 20                                                     
          END IF                                                        
  10  CONTINUE                                                          
      WRITE(6,998)                                                      
  20  CONTINUE                                                          
 998  FORMAT(1H ,'**** OK ****')                             
 999  FORMAT(1H ,'**** NG ****')                             
      STOP                                                              
      END                                                               
                                                                        
      SUBROUTINE SUB(X,Y,A)                                             
      INTEGER X,Y                                                       
      REAL,DIMENSION(X,Y)::A                                                
                                                                        
      X=X*2                                                             

      A(:,:)=A(1:5,1:5)+3.14                                            
                                                                        
      END SUBROUTINE SUB                                                
