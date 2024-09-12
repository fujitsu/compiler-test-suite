      PROGRAM MAIN                                                    
      REAL * 4 A(20),B(20)                                              
      INTEGER * 4 N,M,NN,MM                                             
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +    ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +    ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA M/10/,MM/10/                                                 
      N = 1                                                             
      NN = 1                                                            
      DO 10 I=N,M,N                                                     
        DO 20 J1=NN,MM                                                  
          DO 21 J2=1,10                                                 
            A(J2) = A(J2+N)                                             
            A(J2) = A(J2+N)                                             
            A(J2) = A(J2+M)                                             
            A(J2) = A(J2+I)                                             
            A(J2) = A(J2+J1)                                            
            A(J2) = A(J2+NN)                                            
            A(J2) = A(J2+MM)                                            
 21       CONTINUE                                                      
 20     CONTINUE                                                        
        DO 30 K1=M,N ,-1                                                
          DO 31 K2=I,M,N                                                
            B(K2) = B(K2+M)                                             
            B(K2) = B(K2+N)                                             
            B(K2) = B(K2+I)                                             
            B(K2) = B(K2+NN)                                            
            B(K2) = B(K2+K1)                                            
 31       CONTINUE                                                      
 30     CONTINUE                                                        
 10   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B                                          
      STOP                                                              
      END                                                               
