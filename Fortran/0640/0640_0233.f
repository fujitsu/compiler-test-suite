      PROGRAM MAIN                                                    
      REAL * 4 R1(20),R2(20),R3(20),R4(20),R5(20),R6(20,20,20)          
      DATA N/10/                                                        

      DO 99 I=1,20                                                      
        R1(I) = 1.                                                      
        R2(I) = R1(I) + 1.                                              
        R3(I) = R2(I) + 1.                                              
        R4(I) = I                                                       
        R5(I) = R4(I) + 1.                                              
 99   CONTINUE                                                          
      DO 98 I=1,20                                                      
        DO 98 J=1,20                                                    
          DO 98 K=1,20                                                  
            R6(I,J,K) = R1(I) + R2(J)                                   
 98   CONTINUE                                                          

      DO 100 I1=1,N                                                     
        R1(I1) = I1                                                     
        R2(I1) = R1(I1) + I1                                            
        DO 101 I2=1,N                                                   
          R3(I2) = R1(I1+1) + I2                                        
          R4(I2) = R2(I1+1) + R4(I2+1)                                  
          DO 102 I3=1,N                                                 
            R5(I3) = R1(I1+1)+R2(I1+1)+R3(I2+1)+R4(I2+1)                
            R6(I1,I2,I3) = R5(I3+1)+I3+R1(I1+1)+I1                      
102       CONTINUE                                                      
101     CONTINUE                                                        
100   CONTINUE                                                          
      WRITE(6,*) '+++ TEST NO. 1 +++'                                   
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      

      DO 200 I1=1,N                                                     
        DO 201 I2=1,N                                                   
          DO 202 I3=1,N                                                 
            R1(I3)=R2(I3+1)+I1                                          
            R2(I3)=R3(I2+1)+R4(I2+1)                                    
            R6(I1,I2,I3)=R1(I3+1)+R5(I1+1)+I1                           
202       CONTINUE                                                      
          R3(I2)=1. + I2                                                
          R4(I2)=R3(I2) + 1.                                            
201     CONTINUE                                                        
        R5(I1)=1.                                                       
200   CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 2 +++++'                               
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      

      DO 300 I1=1,N                                                     
        R1(I1) = 1.                                                     
        R2(I1) = R1(I1) + I1                                            
        DO 301 I2=1,N                                                   
          R3(I2)=R1(I1+1)+ I2                                           
          R4(I2)=R2(I1+1)+R3(I2+1)                                      
          DO 302 I3=1,N                                                 
            R5(I3)=R1(I1+1)+R2(I1+1)+I3                                 
            R6(I1,I2,I3)=R3(I2+1)+R1(I1+1)                              
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
            R3(I2)=R3(I2+1)+I3                                          
            R6(I1,I2,I3)=R1(I2+1)+1.                                    
 402      CONTINUE                                                      
 401    CONTINUE                                                        
 400  CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 4 +++++'                               
      WRITE(6,*) R1,R2,R3,R4,R5,R6                                      
      STOP                                                              
      END                                                               
