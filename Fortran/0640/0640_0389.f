      PROGRAM MAIN                                                    
      REAL * 4 A(20),B(20),C(20)                                        
      INTEGER * 4 N,M,NN,MM                                             
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +     ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                  
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +     ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                  
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +     ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                  
      DATA N/1/,M/10/,NN/1/,MM/-1/                                      

      DO 10 I=N,M, NN                                                   
        DO 11 I1=M,N , MM                                               
          DO 12 I2=1,10                                                 
            A(I2) = A(I2+N) + A(I2+M)                                   
 12       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          

      DO 20 I=N,M, NN                                                   
        DO 21 I1=M,N , MM                                               
          DO 22 I2=1,10                                                 
            B(I2) = B(I2+N) + B(I2+N)                                   
 22       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          

      DO 30 I=N,M, NN                                                   
        DO 31 I1=M,N , MM                                               
          DO 32 I2=1,10                                                 
            C(I2) = C(I2+N) + C(I2+M)                                   
 32       CONTINUE                                                      
 31     CONTINUE                                                        
 30   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B,'C=',C                                   
      STOP                                                              
      END                                                               
