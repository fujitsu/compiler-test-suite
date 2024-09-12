      PROGRAM MAIN                                                    
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)                     
      LOGICAL * 4 L4A1(10),L4A2(10)                                     
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +       ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      DO 10 I=1,10                                                      
        R4S1 = SIN(R4A1(I))                                             
        R4S2 = ABS(R4A2(I))                                             
        R4S3(I) = R4S1                                                  
        R4A2(I) = R4S2                                                  
 10   CONTINUE                                                          
      DO 11 I=1,10                                                      
        R4A1(I) = ABS(R4S1)                                             
        R4A2(I) = COS(R4A2(I))                                          
 11   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 1 ***'                                    
      WRITE(6,*) R4S1,R4S2,R4A1,R4A2                                    

      DO 20 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = SIN(R4A1(I))                                           
          R4S2 = ABS(R4A2(I))                                           
          R4S3(I) = R4S1                                                
          R4A2(I) = R4S2                                                
        ELSE                                                            
          R4S1 = SIN(R4A2(I))                                           
          R4S2 = ABS(R4A1(I))                                           
          R4S3(I) = R4S2                                                
          R4A2(I) = R4S1                                                
        ENDIF                                                           
 20   CONTINUE                                                          
      DO 21 I=1,10                                                      
        IF (L4A2(I)) THEN                                               
          R4A1(I) = ABS(R4S1)                                           
          R4A2(I) = COS(R4A2(I))                                        
        ELSE                                                            
          R4A2(I) = ABS(R4S1)                                           
          R4A1(I) = COS(R4A2(I))                                        
        ENDIF                                                           
 21   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 ***'                                    
      WRITE(6,*) R4S1,R4S2,R4A1,R4A2                                    

      DO 30 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = SIN(R4A1(I))                                           
          R4S2 = ABS(R4A2(I))                                           
          R4S3(I) = R4S1                                                
          R4A2(I) = R4S2                                                
        ENDIF                                                           
 30   CONTINUE                                                          
      DO 31 I=1,10                                                      
        IF (L4A2(I))  THEN                                              
          R4A1(I) = ABS(R4S1)                                           
          R4A2(I) = COS(R4A2(I))                                        
        ENDIF                                                           
 31   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 ***'                                    
      WRITE(6,*) R4S1,R4S2,R4A1,R4A2                                    

      DO 40 I=1,10                                                      
        R4S3(1) = SIN(R4A1(I))                                          
        R4S3(2) = ABS(R4A2(I))                                          
        R4S3(I) = R4S3(3)                                               
        R4A2(I) = R4S3(4)                                               
 40   CONTINUE                                                          
      DO 41 I=1,10                                                      
        R4A1(I) = ABS(R4S3(1))                                          
        R4A2(I) = COS(R4S3(2))                                          
 41   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 4 ***'                                    
      WRITE(6,*) R4S3,R4S1,R4S2,R4A1,R4A2                               

      DO 50 I=1,10                                                      
        IF (L4A2(I)) THEN                                               
          R4S3(1) = SIN(R4A1(I))                                        
          R4S3(2) = ABS(R4A2(I))                                        
          R4S3(I) = R4S3(3)                                             
          R4A2(I) = R4S3(4)                                             
        ENDIF                                                           
 50   CONTINUE                                                          
      DO 51 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4A1(I) = ABS(R4S3(5))                                        
          R4A2(I) = COS(R4S3(6))                                        
        ENDIF                                                           
 51   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 ***'                                    
      WRITE(6,*) R4S1,R4S2,R4A1,R4A2,R4S3                               
      STOP                                                              
      END                                                               
