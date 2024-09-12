      PROGRAM MAIN                                                    
      REAL A(10),B(10),C(10),D(10),E(10),F(10)                          
      LOGICAL M(10)                                                     
      DATA A/1,2,3,4,5,6,7,8,9,10/,B/1,2,3,4,5,6,7,8,9,10/              
      DATA M/5*.FALSE.,5*.TRUE./,C/10*0./,D/10*2.5/                     
      DATA E/1,2,3,4,5,6,7,8,9,10/,F/2,4,6,8,10,12,14,16,18,20/         

      K = 0                                                             
      DO 10 I=2,10                                                      
        S = A(I)                                                        
        B(I) = B(I-1) + I                                               
        IF(M(I)) THEN                                                   
          D(I) = E(I) + I                                               
          K=K+1                                                         
          C(K)=S+D(I)                                                   
        ENDIF                                                           
  10  CONTINUE                                                          
      WRITE(6,*) S,C                                                    

      K = 1                                                             
      DO 20 I=2,10                                                      
        S = A(I)                                                        
  21    B(I) = B(I-1) + I                                               
        IF(M(I)) THEN                                                   
          C(K)=S+D(I)                                                   
          K=K+1                                                         
        ENDIF                                                           
  20  CONTINUE                                                          
      WRITE(6,*) S,C                                                    
      STOP                                                              
      END                                                               
