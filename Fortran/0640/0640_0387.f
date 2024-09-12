      PROGRAM MAIN                                                    
      REAL * 4 A(20),B(20)                                              
      INTEGER * 4 N,M,NN                                                
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +   ,   11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +   ,   11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      N = 1                                                             
      NN = 1                                                            
      M = 10                                                            
      DO 10 I=N,M,NN                                                    
        DO 20 J=I,10                                                    
          A(J) = A(J+I)  + B(J)                                         
          A(J) = A(J+N)  + B(J)                                         
          A(J) = A(J+M)  + B(J)                                         
          A(J) = A(J+NN) + B(J)                                         
 20     CONTINUE                                                        
        DO 21 K=1,M                                                     
          B(K) = B(K+I)                                                 
          B(K) = B(K+N)                                                 
          B(K) = B(K+M)                                                 
          B(K) = B(K+NN)                                                
 21     CONTINUE                                                        
 10   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B                                          
      STOP                                                              
      END                                                               
