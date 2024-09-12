      PROGRAM MAIN                                                    
      REAL * 4 A1(10),A2(10),A3(10,10,10,10),S1,S2                      
      DATA N/10/                                                        

      DO 99 I=1,10                                                      
        A1(I) = 1.                                                      
        A2(I) = 0.                                                      
 99   CONTINUE                                                          

      DO 100 I1=1,N                                                     
        S1 = 1. + A1(I1)                                                
        DO 101 I2=1,N                                                   
          S1 = A1(I1) + I2                                              
          S2     = A2(I2) + A1(I1)                                      
          DO 102 I3=1,N                                                 
            DO 103 I4=1,N                                               
              A3(I1,I2,I3,I4) =  S1 + S2                                
 103        CONTINUE                                                    
 102      CONTINUE                                                      
 101    CONTINUE                                                        
 100  CONTINUE                                                          
      WRITE(6,*) '+++ TEST NO. 1 +++'                                   
      WRITE(6,*) S1,S2,A1,A3                                            

      DO 200 I1=1,N                                                     
        DO 201 I2=1,N                                                   
          S1 = A1(I2)                                                   
          DO 202 I3=1,N                                                 
            S2 = A2(I3)                                                 
            A2(I3) = S2                                                 
            DO 203 I4=1,N                                               
              DO 204 I5=1,N                                             
                A3(I2,I3,I4,I5) = S1 + S2                               
 204          CONTINUE                                                  
              A1(I2) = S1                                               
 203        CONTINUE                                                    
 202      CONTINUE                                                      
          A2(I2) = S2                                                   
 201    CONTINUE                                                        
 200  CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 2 +++++'                               
      WRITE(6,*) S1,S2,A1,A2,A3                                         
      STOP                                                              
      END                                                               
