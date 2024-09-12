      PROGRAM MAIN                                                    
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)                     
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +       ,  .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +       ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      R4S2 = 0

      DO 10 J=1,2                                                       
        DO 11 I=1,10                                                    
          R4S1 = R4A1(I)                                                
          R4S1 = R4S1 + R4A1(I)                                         
 11     CONTINUE                                                        
        DO 12 I=1,10                                                    
          R4A1(I) = R4S2                                                
          R4S2 = R4S2 + R4A1(I)                                         
 12     CONTINUE                                                        
 10   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 ***'                                    
      WRITE(6,*) R4S1 ,R4S2 ,R4A1,R4A2                                  

      DO 20 J=1,10                                                      
        DO 21 I=1,10                                                    
          R4S1 = R4S1 + 1                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
 21     CONTINUE                                                        
        DO 22 I=1,10                                                    
          R4S2 = R4S2 + R4A2(I)                                         
          R4A1(I) = R4S2                                                
 22     CONTINUE                                                        
 20   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 ***'                                    
      WRITE(6,*)  R4S1,R4S2,R4A1,R4A2                                   

      R4S1 = 0                                                          
      DO 30 I=1,10                                                      
        R4S1 = R4A2(I)                                                  
        IF (R4A1(I).GT.R4S1) THEN                                       
          R4S1 = R4A1(I)                                                
         ENDIF                                                          
 30   CONTINUE                                                          
      R4S2 = 0                                                          
      DO 31 I=1,10                                                      
      IF (R4A2(I).GT.R4S2) THEN                                         
        R4S2 = R4A2(I) + 1                                              
      ENDIF                                                             
      R4A2(I) = R4S2                                                    
 31   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 3 ***'                                    
      WRITE(6,*) R4S1,R4S2,R4A1,R4A2                                    

      DO 40 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I)                                                
          R4S1 = R4S1 + R4A1(I)                                         
        ELSE                                                            
          R4S1 = R4A1(I) + 1.                                           
          R4S1 = R4S1 + R4A1(I) + 1.                                    
        ENDIF                                                           
 40   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 4 ***'                                    
      WRITE(6,*)  R4S1,R4S2,R4A1,R4A2                                   
      STOP                                                              
      END                                                               
