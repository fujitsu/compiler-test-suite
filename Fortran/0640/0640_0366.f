      PROGRAM MAIN                                                    
                                                                        
      REAL AA(500),BB(2000)                                             
      INTEGER N/500/,J/0/                                               
      LOGICAL LOGI(500)/500*.TRUE./                                     
      DATA AA,BB/2500*3/                                                
      CALL SETD(N,AA,BB)                                                
      DO 10 I=2,500                                                     
        BB(I) = BB(I-1)                                                 
        IF(LOGI(I)) THEN                                                
          J=J+3                                                         
          AA(I)=J                                                       
          BB(J)=I                                                       
        ENDIF                                                           
   10 CONTINUE                                                          
      WRITE(6,100)  (AA(I),I=1,N),(BB(I),I=1,N)                         
  100 FORMAT(1H ,/,'--------- OTHER ----------',/,(6(F10.3,2X),/))      
      END                                                               
      SUBROUTINE  SETD(M,X,Y)                                           
      INTEGER M                                                         
      REAL*4 X(M),Y(M)                                                  
      X(1)=20                                                           
      Y(1)=5                                                            
      DO 20 I=2,M                                                       
        X(I)=X(I-1)+0.33339                                             
        Y(I)=100+Y(I-1)                                                 
   20 CONTINUE                                                          
      END                                                               
