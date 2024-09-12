      PROGRAM MAIN                                                    
      REAL * 4 R1(10),R2(10),R3(10),R4(10),R5(10),R6(10,10,10)          
      DATA N/10/                                                        

      DO 99 I=1,10                                                      
        R1(I) = 1.                                                      
        R2(I) = R1(I) + 1.                                              
        R3(I) = R2(I) + 1.                                              
        R4(I) = 0.                                                      
        R5(I) = R4(I) + R3(I) + R2(I)                                   
 99   CONTINUE                                                          
      DO 98 I=1,10                                                      
        DO 98 J=1,10                                                    
          DO 98 K=1,10                                                  
            R6(I,J,K) = R1(I) + R2(J) + R3(K)                           
 98   CONTINUE                                                          

      DO 100 I1=1,N                                                     
        R1(I1) = I1                                                     
        DO 101 I2=1,N                                                   
          R3(I2) = R3(I2) + I2                                          
          R4(I2) = R2(I1) + R1(I1)                                      
          DO 102 I3=1,N                                                 
            R5(I3) = R4(I3)+1.                                          
            R6(I1,I2,I3) = R3(I2)+R4(I3)                                
102       CONTINUE                                                      
101     CONTINUE                                                        
100   CONTINUE                                                          
      WRITE(6,*) '+++ TEST NO. 1 +++'                                   
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      

      DO 200 I1=1,N                                                     
        DO 201 I2=1,N                                                   
          DO 202 I3=1,N                                                 
            R1(I1)=R3(I2)+I1                                            
            R2(I1)=R3(I2)+R4(I1)                                        
            R6(I1,I2,I3)=R1(I1)+R5(I2)                                  
202       CONTINUE                                                      
          R3(I2)=1.                                                     
          R4(I1)=R3(I1)                                                 
201     CONTINUE                                                        
        R1(I1) = 1.                                                     
        R2(I1) = 0.                                                     
200   CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 2 +++++'                               
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      

      DO 300 I1=1,N                                                     
        R1(I1) = 1.                                                     
        R2(I1) = R1(I1) + I1                                            
        DO 301 I2=1,N                                                   
          R3(I2)=R1(I1) + I2                                            
          R4(I2)=R2(I1)+R3(I2)                                          
          DO 302 I3=1,N                                                 
            R5(I3)=R1(I1)+R2(I1)+I3                                     
            R6(I1,I2,I3)=R3(I2)+R1(I1)                                  
302       CONTINUE                                                      
          R3(I2)=R1(I1)+R2(I1)                                          
301     CONTINUE                                                        
        R1(I1)=R1(I1)+I1                                                
        R2(I1)=R2(I1)+R1(I1)                                            
300   CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 3 +++++'                               
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      

      DO 400 I1=1,N                                                     
        DO 401 I2=1,N                                                   
          R1(I2)=I1+I2                                                  
          R2(I2)=R1(I2)+R1(I2)                                          
          DO 402 I3=1,N                                                 
            R3(I2)=R3(I2)+I3                                            
            R6(I1,I2,I3)=R1(I2)+1.                                      
 402      CONTINUE                                                      
 401    CONTINUE                                                        
 400  CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 4 +++++'                               
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      
      STOP                                                              
      END                                                               
