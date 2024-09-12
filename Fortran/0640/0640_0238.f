      PROGRAM MAIN                                                    
      REAL * 4 R1(20),R2(20),R3(20),R4(20,20,20)                        
      DATA N/10/,M/10/                                                  

      DO 99 I=1,20                                                      
        R1(I) = I                                                       
        R2(I) = R1(I) + 1.                                              
        R3(I) = 1.                                                      
 99   CONTINUE                                                          
      DO 91 I1=1,20                                                     
        DO 91 I2=1,20                                                   
          DO 91 I3=1,20                                                 
            R4(I1,I2,I3) = I1+I2+I3                                     
 91   CONTINUE                                                          

      DO 100 I1=1,N                                                     
        R1(I1) = R1(I1+I1) + I1                                         
        DO 101 I2=1,M                                                   
          R2(I2) = R2(I2+I2) + I2                                       
          DO 102 I3=1,M                                                 
            R3(I3) = R3(I3+I3)  + I3                                    
            DO 103 I4=1,N                                               
              R4(I4,I3,I2) = R4(I4+I1,I3+I2,I2+I3)                      
     +                     + R1(I1) + R2(I2) + R3(I3)                   
 103        CONTINUE                                                    
 102      CONTINUE                                                      
 101    CONTINUE                                                        
 100  CONTINUE                                                          
      WRITE(6,*) '+++++ TEST 1 ++++'                                    
      WRITE(6,*) R1,R2,R3,R4                                            

      MM = 1                                                            
      DO 200 I1=MM,M                                                    
        DO 201 I2=2,M                                                   
           DO 202 I3=1,M                                                
             DO 203 I4=I3,10                                            
               R4(I2+MM,I3+1,I4) = R4(I2+M,I3+MM,I4+M)                  
     *                   + R1(I1+I1) + R2(I2+I2) + R3(I3+I3)            
 203         CONTINUE                                                   
             R3(I3) = 1.                                                
 202       CONTINUE                                                     
           R2(I2) = 2.                                                  
 201     CONTINUE                                                       
         R1(I1) = 4.                                                    
 200   CONTINUE                                                         
       WRITE(6,*) '+++++ TEST 2 +++'                                    
       WRITE(6,*) R4,R1,R2,R3                                           

       DO 300 I1=1,M                                                    
         R1(I1) = R1(I1+I1) + 1.                                        
         DO 301 I2=1,M                                                  
           R2(I2) = R2(I2+I2) + 2.                                      
           DO 302 I3=2,10                                               
             R3(I3) = R3(I3+I3) + 3.                                    
             DO 303 I4=2,10                                             
               R4(I2,I3,I4) = R4(I2+I1,I3+I2,I4+I3)                     
     *         + R1(I1) + R2(I2) + R3(I3)                               
 303         CONTINUE                                                   
             R3(I3) = R3(I3) + R2(I2)                                   
 302       CONTINUE                                                     
           R2(I2) = R3(I3) + R2(I2)                                     
 301     CONTINUE                                                       
         R1(I1) = R1(I1) + R2(I2)                                       
 300   CONTINUE                                                         
       WRITE(6,*) '+++ TEST 3 +++'                                      
       WRITE(6,*) R1,R2,R3,R4                                           
      STOP                                                              
      END                                                               
