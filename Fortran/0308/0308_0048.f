      PROGRAM MAIN                                                   
      INTEGER X(10,10),ANS(10,10)                                       
      DATA ANS/1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2,                 
     &         1,4,1,4,1,4,1,4,1,4,3,2,3,2,3,2,3,2,3,2/                 
      CALL SUB(X,2,10)                                                  
      DO 10 I=1,10                                                      
        DO 20 J=1,10                                                    
          IF (X(I,J).NE.ANS(I,J)) THEN                                  
            WRITE (6,*) 'NG'
            STOP                                                        
          ENDIF                                                         
  20    CONTINUE                                                        
  10  CONTINUE                                                          
      WRITE (6,*) 'OK'
      STOP                                                              
      END                                                               
                                                                        
      SUBROUTINE SUB(A,I,J)                                             
      INTEGER A(10,10)                                                  
      A=9                                                               
      A(I-1:J-1:I,J-1:I-1:-I)=1                                         
      A(10:2:-2,2:10:2)=2                                               
      A(J-1:I-1:-I,10:2:-2)=3                                           
      A(I:J:I,1:9:2)=4                                                  
      RETURN                                                            
      END                                                               
