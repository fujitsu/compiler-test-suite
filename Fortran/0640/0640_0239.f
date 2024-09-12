      PROGRAM MAIN                                                    
      REAL * 4 S1,S2,S3                                                 
      REAL * 4 A1(20),A2(20),A3(20)                                     
      REAL * 4 A6(20,22,20)                                             
      REAL * 4 SA1(20),SA2(20),SA3(20)                                  
      LOGICAL * 4 L1(20),L2(20)                                         
      DATA N/10/,M/11/                                                  

      DO 99 I=1,20                                                      
        A1(I)=I                                                         
        A2(I)=A1(I)+1.                                                  
        A3(I)=A2(I)+1.                                                  
        SA1(I)=A1(I)                                                    
        SA2(I)=A2(I)                                                    
        SA3(I)=A3(I)                                                    
        L1(I)=.TRUE.                                                    
        L2(I)=.FALSE.                                                   
        DO 99 I1=1,22
          DO 99 I2=1,20                                                 
            A6(I,I1,I2)=I2                                              
 99   CONTINUE                                                          
      DO 100 I1=1,N                                                     
          S1=A1(I1)+I1                                                  
          DO 101 I2=1,M                                                 
              S2=A2(I2)+I2                                              
              DO 102 I3=1,N                                             
                  S3=A3(I3)+I3                                          
                  IF (S3.GT.0) THEN                                     
                    A6(I1,I2,I3) = A1(I1)+A2(I2)+A3(I3)                 
     *                           +A6(I1+I1,I2+I2,I3)                    
                    IF (S3.EQ.0) GOTO 102                               
                    S3=A1(I1) + I1 + I2 + I3                            
                  ENDIF                                                 
                  S3=S3+A6(I1,I2,I3)                                    
 102          CONTINUE                                                  
              A2(I2)=S2+S2                                              
 101      CONTINUE                                                      
          A1(I1)=S1+S1                                                  
 100  CONTINUE                                                          
      WRITE(6,*) S1,S2,S3,A6                                            
      DO 200 I1=1,N                                                     
          SA1(1)=A1(I1)+I1                                              
          DO 201 I2=1,M                                                 
              SA2(1)=A2(I2)+I2                                          
              DO 202 I3=1,N                                             
                  SA3(1)=A3(I3)+I3                                      
                  IF (L1(I1)) THEN                                      
                    A6(I1,I2,I3) = A1(I1)+A2(I2)+A3(I3)                 
                    IF (L2(I2)) GOTO 202                                
                    SA3(1)=A1(I1) +A2(I2)+A3(I3) +I1+I2+I3              
                  ENDIF                                                 
 202          CONTINUE                                                  
 201      CONTINUE                                                      
        SA1(1)=SA1(1)+A1(I1)                                            
 200  CONTINUE                                                          
      WRITE(6,*) SA1,SA2,SA3,A6                                         
      STOP                                                              
      END                                                               
