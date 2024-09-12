      PROGRAM MAIN                                                    
      REAL*8 A(100,100),B(100,100),C(100,100),D(100,100)                
      REAL*8 E(10,10,10),F(10,10,10)                                    
      LOGICAL M(100)                                                    
      DATA A/10000*0./,B/10000*1./,C/10000*2./,D/10000*3./              
      DATA E/1000*1./,F/1000*2./                                        
      DATA M/50*.TRUE.,50*.FALSE./,N/100/                               
      CALL SUB1(A,B,C,D,E,F,M,N)                                        
      CALL SUB2(A,B,C,M,N)                                             
      CALL SUB3(A,N)                                                    
      s=0.0
      do 1 j=1,100
      do 1 i=1,100
1       s=s+a(i,j)
      WRITE(6,*) s                                                     
      STOP                                                              
      END                                                               
      SUBROUTINE SUB1(A,B,C,D,E,F,M,N)                                  
      REAL*8 A(N,N),B(N,N),C(100,100),D(100,100)                        
      REAL*8 E(10,10,10),F(10,10,10),S1,S2                              
      LOGICAL M(100)                                                    

       DO 10 J=1,100                                                    
         A(J,1) = B(J,1)                                                
 10   CONTINUE                                                          

      DO 20 I=1,100                                                     
       DO 20 J=1,100                                                    
         C(I,J) = D(I,J)                                                
  20  CONTINUE                                                          

      DO 30 K=1,10                                                      
      DO 30 J=1,10                                                      
      DO 30 I=1,10                                                      
         E(I,J,K) = F(I,J,K)                                            
  30  CONTINUE                                                          

      DO 40 I=1,100                                                     
        IF(M(I)) A(I,2) = B(I,2)                                        
  40  CONTINUE                                                          

      DO 50 I=1,100                                                     
        S2 = A(I,2)                                                     
        IF(M(I)) S1 = SQRT(S2)                                          
        B(I,2) = S1                                                     
  50  CONTINUE                                                          

      DO 60 I=1,100                                                     
        IF(M(I)) A(I,2) = SQRT(B(I,2)) + C(I,2)                         
  60  CONTINUE                                                          
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB2(A,B,C,M,N)                                       
      REAL*8 A(N,N),B(N,N),C(100,100)                                   
      LOGICAL M(100)                                                    

      DO 80 I=1,N                                                       
        A(I,5) = B(I,5)                                                 
  80  CONTINUE                                                          

      DO 70 I=1,100                                                     
        IF(M(I)) A(I,2) = SQRT(B(I,2)) + C(I,2)                         
  70  CONTINUE                                                          
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB3(A,N)                                              
      REAL*8 A(N,N),B                                                   
      DO 90 I=1,N                                                       
        A(I,I) = I                                                      
  90  CONTINUE                                                          
      RETURN                                                            
      END                                                               
