      PROGRAM MAIN                                                    
      REAL * 4 A(30),B(30),C(30)                                        
      DATA A/10*1.,10*2.,10*3./                                         
      DATA B/10*1.,10*2.,10*3./                                         
      DATA C/10*1.,10*2.,10*3./                                         
      DATA  N/-5/,N1/1/,M1/-10/ ,L/10/,L1/10/,L2/5/                     

      DO 10 I=1,N,-1                                                    
        DO 11 I1=10,N1,-1                                               
          DO 12 I2=1,M1+3,-1                                            
            DO 13 K1=1,10                                               
              A(K1) = A(K1-N)                                           
              A(K1+N1) = A(K1+10)                                       
              A(K1) = A(K1-M1)                                          
 13         CONTINUE                                                    
            DO 14 K2=15,30                                              
              A(K2) = A(K2)+ 1.                                         
 14         CONTINUE                                                    
 12       CONTINUE                                                      
 11     CONTINUE                                                        
 10   CONTINUE                                                          

      DO 20 I=1,L,1                                                     
        DO 21 I1=3,L1,1                                                 
          DO 22 I2=1,L2-3,1                                             
            DO 23 K1=1,10                                               
              B(K1) = B(K1+L)                                           
              B(K1+2) = B(K1+L1)                                        
              B(K1+2) = B(K1+L2)                                        
 23         CONTINUE                                                    
            DO 24 K2=1,10                                               
              B(K2) = B(K2+I)                                           
 24         CONTINUE                                                    
 22       CONTINUE                                                      
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      WRITE(6,*) 'A=',A,'B=',B,'C=',C                                   
      STOP                                                              
      END                                                               
