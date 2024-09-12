      PROGRAM MAIN                                                    
      REAL   A1(30),A2(30),A3(30),B1(30)                                
      DATA A1,A2,A3,B1/120*1/                                           
      INTEGER  N/30/                                                    
      DO 10 I=2,N-1                                                     
       A1(I) = B1(I) * (N-I)                                            
       A1(I) = SQRT(A1(I))                                              
       A2(I+1) = SIN(A2(I-1))                                           
   10 CONTINUE                                                          
      GOTO 11                                                           
   11 CONTINUE                                                          
      DO 20 K=2,N-1                                                     
       A1(K) = COS(A3(I))                                               
   20 CONTINUE                                                          
      WRITE(6,*) A1,A2,A3                                               
      END                                                               
