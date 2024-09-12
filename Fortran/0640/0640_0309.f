      PROGRAM MAIN                                                    
      REAL*8 A(10),B(10),C(10),D(10),E(10),F(10)                        
      DATA N/10/                                                        
      DATA A,B,C,D,E,F/60*1.0/                                          

      DO 10 I=1,N                                                       
        DO 11 J=1,N                                                     
          A(J) = I                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      DO 20 I=1,N                                                       
        DO 21 J=1,N                                                     
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      DO 30 I=1,N                                                       
        DO 31 J=2,N                                                     
          A(J) = A(J-1)                                                 
 31     CONTINUE                                                        
 30   CONTINUE                                                          
      DO 40 I=1,N                                                       
        DO 41 J=2,N                                                     
          A(J) = A(J-1)                                                 
          B(J) = C(J) + A(J)                                            
 41     CONTINUE                                                        
 40   CONTINUE                                                          
      DO 50 I=1,N                                                       
        A(I) = B(I)                                                     
        DO 51 J=1,N                                                     
          C(J) = D(J)                                                   
 51     CONTINUE                                                        
 50   CONTINUE                                                          
      DO 60 I=2,N                                                       
        A(I) = A(I-1)                                                   
        DO 61 J=1,N                                                     
          C(J) = D(J)                                                   
 61     CONTINUE                                                        
        C(I) = A(I)                                                     
 60   CONTINUE                                                          
      DO 70 I=2,N                                                       
        A(I) = A(I-1)                                                   
        DO 71 J=1,N                                                     
          C(J) = D(J)                                                   
 71     CONTINUE                                                        
        C(I) = B(I) + A(I)                                              
 70   CONTINUE                                                          
      WRITE(6,*) A,B,C,D,E,F                                            

      DO 82 K=1,N                                                       
        B(K) = K                                                        
        DO 80 I=1,N                                                     
          DO 81 J=1,N                                                   
            A(J) = I                                                    
 81       CONTINUE                                                      
 80     CONTINUE                                                        
        C(K) = B(K)                                                     
 82   CONTINUE                                                          
      DO 92 K=2,N                                                       
        B(K) = K                                                        
        DO 90 I=1,N                                                     
          DO 91 J=1,N                                                   
 91       CONTINUE                                                      
 90     CONTINUE                                                        
        C(K) = C(K-1)                                                   
 92   CONTINUE                                                          
      DO 102 K=2,N                                                      
        B(K) = B(K-1)                                                   
        DO 100 I=1,N                                                    
          DO 101 J=2,N                                                  
            A(J) = A(J-1)                                               
 101      CONTINUE                                                      
 100    CONTINUE                                                        
        C(K) = C(K) + B(K)                                              
 102  CONTINUE                                                          
      DO 112 K=1,N                                                      
        D(K) = E(K)                                                     
        DO 110 I=1,N                                                    
          DO 111 J=2,N                                                  
            A(J) = A(J-1)                                               
            B(J) = C(J) + A(J)                                          
 111      CONTINUE                                                      
 110    CONTINUE                                                        
        B(K) = D(K) + 1.                                                
 112  CONTINUE                                                          
      DO 122 K=1,N                                                      
        A(K) = B(K)                                                     
        DO 120 I=1,N                                                    
          A(I) = B(I)                                                   
          DO 121 J=1,N                                                  
            C(J) = D(J)                                                 
 121      CONTINUE                                                      
 120    CONTINUE                                                        
        D(K) = E(K) - 1.                                                
 122  CONTINUE                                                          
      DO 132 K=1,N                                                      
        B(K) = B(K) + 1.0                                               
        DO 130 I=2,N                                                    
          A(I) = A(I-1)                                                 
          DO 131 J=1,N                                                  
            C(J) = D(J)                                                 
 131      CONTINUE                                                      
          C(I) = A(I)                                                   
 130    CONTINUE                                                        
 132  CONTINUE                                                          
      DO 142 K=1,N                                                      
        DO 140 I=2,N                                                    
          A(I) = A(I-1)                                                 
          DO 141 J=1,N                                                  
            C(J) = D(J)                                                 
 141      CONTINUE                                                      
          C(I) = B(I) + A(I)                                            
 140    CONTINUE                                                        
        E(K) = E(K) + 1.0                                               
 142  CONTINUE                                                          
      WRITE(6,*) A,B,C,D,E,F                                            
      STOP                                                              
      END                                                               
