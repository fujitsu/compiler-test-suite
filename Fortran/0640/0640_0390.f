      PROGRAM MAIN                                                    
      REAL * 4 A(20),B(20)                                              
      INTEGER * 4 N,M                                                   
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +     , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                             
     +     , 11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                   
      DATA M/10/,N/1/                                                   
      DO 10 I=5,M,1                                                     
        DO 11 I1=10,N,-1                                                
          DO 12 I2=1,10                                                 
            A(I2) = A(I2+M) + B(I1)                                     
 12       CONTINUE                                                      
          DO 13 I3=11,20                                                
            A(I3-10) = A(I3-N) + B(I3)                                  
 13       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B                                          
      STOP                                                              
      END                                                               
