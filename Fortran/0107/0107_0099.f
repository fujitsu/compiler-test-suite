      PROGRAM MAIN                                                  
                                                                       
      CALL SUB17                                                     
      CALL SUB18                                                     
      CALL SUB19                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB17                                               
*     REAL,RANGE,DIMENSION(5)::A                                       
*     DATA A/1.0,2.0,3.0,4.0,5.0/                                      
                                                                       
*     N=1                                                              
*     SET RANGE(N:2*N) A                                               
*     A=A+3.14                                                         
                                                                       
      WRITE (6,999)                                                    
 999  FORMAT(1H ,'###### SUB17 COMMENT ONLY ######')                 
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB18                                               
      REAL,DIMENSION(5,5)::A,B                                         
      INTEGER K                                                        
      DATA K/1.0/                                                      
      DATA A/25*0.0/                                                   
      DATA B/10*0.0,10*3.14,5*3.14/                                     
      K=K+4                                                            
      CALL SUB1(K,A)                                                   
      DO 10 I=1,5                                                      
        DO 10 J=1,5                                                    
          IF(A(I,J) .NE. B(I,J)) THEN                                  
            WRITE(6,999)                                               
            GOTO 20                                                    
          END IF                                                       
  10  CONTINUE                                                         
      WRITE(6,998)                                                     
  20  CONTINUE                                                         
 998  FORMAT(1H ,'****** OK ******')                           
 999  FORMAT(1H ,'?????? NG ??????')                           
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB1(X,A)                                             
      INTEGER X                                                        
      REAL,DIMENSION(5,X)::A                                           
                                                                       
      X=X/2                                                            
      A(:,3:)=A(1:5,3:5)+3.14                                          
                                                                       
      END SUBROUTINE SUB1                                              
                                                                       
      SUBROUTINE SUB19                                               
      REAL,DIMENSION(5,5)::A,B                                         
      INTEGER  K,L                                                     
      DATA K,L/2*4.0/                                                  
      DATA A/25*0.0/                                                   
      DATA B/25*3.14/                               
      K=K+1                                                            
      L=K                                                              
      CALL SUB2(K,L,A)                                                 
      DO 10 I=1,5                                                      
        DO 10 J=1,5                                                    
          IF(A(I,J) .NE. B(I,J)) THEN                                  
            WRITE (6,999)                                              
            GOTO 20                                                    
          END IF                                                       
  10  CONTINUE                                                         
      WRITE(6,998)                                                     
  20  CONTINUE                                                         
 998  FORMAT(1H ,'****** OK ******')                           
 999  FORMAT(1H ,'?????? NG ??????')                           
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB2(X,Y,A)                                           
      INTEGER X,Y                                                      
      REAL,DIMENSION(X,Y)::A                                           
                                                                       
      X=X*2                                                            
      A(:,:)=A(1:5,1:5)+3.14                                           
                                                                       
      END SUBROUTINE SUB2                                              
