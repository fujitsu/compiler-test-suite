      PROGRAM MAIN                                                    
      INTEGER * 2 I2A1(10),I2A2(10)                                     
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)                     
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA I2A1/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./                          
      DATA I2A2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      I = 0
      R4S2 = 0
      L4S2 = 0

      R4S1 = R4A1(1)                                                    
      L4S1 = .TRUE.                                                     
      DO 10 I=1,10                                                      
        I2A1(I) = R4A1(I)                                               
        I2A2(I) = R4A1(I) + I2A2(I)                                     
        R4S1 = R4A1(I) + R4A2(I)                                        
        L4S1 = L4A1(I) .AND. L4A2(I)                                    
        R4S3(1) = R4A1(I) + 1.                                          
        L4S3(1) = .NOT.L4A1(I)                                          
        I2A1(I) = R4A1(I)                                               
        I2A2(I) = R4A1(I) + I2A2(I)                                     
        R4A1(I) = R4S1  + R4A1(I)                                       
        R4A2(I) = R4S2  + R4A2(I)                                       
        I2A1(I) = I2A1(I) + R4A1(I)                                     
        I2A2(I) = R4A1(I) + I2A2(I) + 1.                                
 10   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 1 **'                                     
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2                
      WRITE(6,*) I2A1,I2A2                                              

      R4S1 = R4A1(1)                                                    
      L4S1 = .TRUE.                                                     
      DO 20 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          I2A1(I) = R4A1(I)                                             
          I2A2(I) = R4A1(I) + I2A2(I)                                   
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
          R4S3(1) = R4A1(I) + 1.                                        
          L4S3(1) = .NOT.L4A1(I)                                        
          I2A1(I) = R4A1(I)                                             
          I2A2(I) = R4A1(I) + I2A2(I)                                   
          R4A1(I) = R4S1  + R4A1(I)                                     
          R4A2(I) = R4S2  + R4A2(I)                                     
          I2A1(I) = I2A1(I) + R4A1(I)                                   
          I2A2(I) = R4A1(I) + I2A2(I) + 1.                              
        ELSE                                                            
          I2A1(I) = R4A2(I)                                             
          I2A2(I) = R4A1(I) - I2A2(I)                                   
          R4S1 = R4A1(I) * R4A2(I)                                      
          L4S1 = L4A1(I) .OR. L4A2(I)                                   
          R4S3(1) = R4A1(I) - 1.                                        
          L4S3(1) = .NOT.L4A1(I)                                        
          I2A1(I) = R4A2(I)                                             
          I2A2(I) = R4A2(I) + I2A2(I)                                   
          R4A1(I) = R4S1  - R4A1(I)                                     
          R4A2(I) = R4S2  - R4A2(I)                                     
          I2A1(I) = I2A1(I) + R4A2(I)                                   
          I2A2(I) = R4A1(I) + I2A1(I) + 1.                              
        ENDIF                                                           
 20   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 **'                                     
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2                
      STOP                                                              
      END                                                               
