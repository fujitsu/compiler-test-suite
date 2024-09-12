      PROGRAM MAIN                                                    
      REAL * 4 A(30),B(30)                                              
      DATA A/10*1.,10*2.,10*3./                                         
      DATA B/10*1.,10*2.,10*3./                                         
      DATA N/10/,N1/10/,N2/8/,N4/-10/,N5/1/,N6/1/                       

      DO 10 I=1,N,1                                                     
        DO 11 I1=2,N1,1                                                 
          DO 12 I2=3,N2+3,1                                             
            DO 15 K1=1,10                                               
              A(K1) = A(K1+N)                                           
              A(K1+1) = A(K1+N1)                                        
              A(K1+1) = A(K1+N2)                                        
 15         CONTINUE                                                    
            DO 16 K2=11,20                                              
              A(K2) = A(K2+I)                                           
 16         CONTINUE                                                    
 12       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          

      DO 20 I=-1,N4,-1                                                  
        DO 21 I1=-1,N5,-1                                               
          DO 22 I2=-1,N6+3,-1                                           
            DO 25 K1=11,20                                              
              B(K1) = B(K1-N4)                                          
              B(K1) = B(K1+N5)                                          
              B(K1) =B(K1-N6)                                           
 25         CONTINUE                                                    
            DO 26 K2=1,10                                               
              B(K2) = B(K2+K2)                                          
 26         CONTINUE                                                    
 22       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B                                          
      STOP                                                              
      END                                                               
