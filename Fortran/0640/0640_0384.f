      PROGRAM MAIN                                                    
      REAL * 4 A(20),B(20)                                              
      INTEGER * 4 N,M,NN                                                
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +    ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +    ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA M/10/                                                        
      N = 1                                                             
      NN = 1                                                            
      DO 10 I=N,M,NN                                                    
        A(I) = A(I+N) + B(I)                                            
        B(I) = B(I+NN) + A(I)                                           
        B(I) = B(I+M)                                                   
 10   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B                                          
      STOP                                                              
      END                                                               
