      PROGRAM MAIN                                                    
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)                     
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      R4S3 = 0
      L4S3 = .FALSE.
      L4A2(1) = .FALSE.                                                 
      L4A2(2) = .TRUE.                                                  
      L4A2(3) = .FALSE.                                                 
      L4A2(4) = .TRUE.                                                  
      L4A2(5) = .FALSE.                                                 
      L4A2(6) = .TRUE.                                                  
      L4A2(7) = .FALSE.                                                 
      L4A2(8) = .TRUE.                                                  
      L4A2(9) = .FALSE.                                                 
      L4A2(10) = .TRUE.                                                 

      DO 10 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = L4A1(I).AND.L4A2(I)                                    
          R4S3(1) = R4A1(I)                                             
          L4S3(1) = L4A1(I)                                             
        ELSE                                                            
          R4S1 = R4A1(I) + 1.                                           
          L4S1 = .NOT.L4A1(I)                                           
          R4S3(2) = R4A1(I) + 1.                                        
          L4S3(2) = .NOT.(L4A1(I).AND.L4A2(I))                          
        ENDIF                                                           
 10   CONTINUE                                                          
      DO 11 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S2 = R4A2(I) - R4A1(I)                                      
          L4S2 = L4A1(I).OR.L4A2(I)                                     
          R4S3(2) = R4A2(I) + 3.                                        
          L4S3(2) = L4S2                                                
        ENDIF                                                           
 11   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 1 ***'                                    
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2,R4S3,L4S3      

      DO 20 I=1,10                                                      
        IF (L4A2(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = L4A1(I) .AND.L4A2(I)                                   
          R4S3(1) = I + R4A2(I)                                         
          L4S3(1) = .NOT.(L4A1(I).AND.L4S1)                             
        ELSE                                                            
          R4S1 = R4A1(I) * R4A2(I)                                      
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
          R4S3(2) = I + R4A1(I)                                         
          L4S3(2) = L4A1(I)                                             
        ENDIF                                                           
 20   CONTINUE                                                          
      DO 21 I=1,10                                                      
        IF (L4A2(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = L4A1(I) .AND.L4A2(I)                                   
          R4S3(1) = I + R4A2(I)                                         
          L4S3(1) = .NOT.(L4A1(I).AND.L4S1)                             
        ELSE                                                            
          R4S1 = R4A1(I) * R4A2(I)                                      
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
          R4S3(2) = I + R4A1(I)                                         
          L4S3(2) = L4A1(I)                                             
        ENDIF                                                           
 21   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 ***'                                    
      WRITE(6,*)  R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2,R4S3,L4S3     

      DO 30 I=1,10                                                      
        IF (L4A1(I).AND.L4A2(1)) THEN                                   
          R4S1 = R4A1(I)                                                
          L4S1 = L4A2(I) .AND. L4A1(I)                                  
          R4S3(3) = R4A1(I) + 3.                                        
          L4S3(3) = .NOT.L4A2(I)                                        
          R4A1(I) = R4S1                                                
          R4A2(I) = R4S2                                                
        ELSE                                                            
          R4S2 = R4A1(I) + R4A2(I)                                      
          R4S3(4) = R4A1(I) + R4A2(I)                                   
          L4S2 = .NOT.L4A2(I)                                           
          L4S3(4) = L4A1(I) .OR. L4A2(I)                                
        ENDIF                                                           
 30   CONTINUE                                                          
      DO 31 I=1,10                                                      
        IF ((R4A1(I).EQ.I).AND.L4A2(4)) THEN                            
          R4S2 = R4A1(I)                                                
          L4S2 = L4A2(I) .AND. L4A1(I)                                  
          R4S3(4) = R4A1(I) + 3.                                        
          L4S3(4) = .NOT.L4A2(I)                                        
        ENDIF                                                           
 31   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 3 ***'                                    
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2,R4S3,L4S3      

      DO 40 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          IF (L4A2(I)) THEN                                             
            R4S1 = R4A1(I) + R4A2(I)                                    
            L4S1 = L4A1(I).AND.L4A2(I)                                  
          ELSE                                                          
            R4S2 = R4A2(I) + 1.                                         
            L4S2 = .NOT.L4A1(I)                                         
          ENDIF                                                         
          R4S3(4) = R4A1(I) + 4.                                        
          L4S3(4) = L4A2(I)                                             
        ENDIF                                                           
 40   CONTINUE                                                          
      DO 41 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          IF (.NOT.L4A2(I)) THEN                                        
            IF (R4A1(I).EQ.I) THEN                                      
              IF (R4A2(I).NE.I) THEN                                    
                R4S1 = R4A1(I) + R4A2(I)                                
                L4S1 = .NOT.L4A1(I)                                     
              ELSE                                                      
                R4S2 = R4A1(I) + 1.                                     
                L4S2 = L4A2(I).OR.L4A1(I)                               
              ENDIF                                                     
              R4A1(I) = R4S1                                            
            ENDIF                                                       
            IF (L4A2(4)) THEN                                           
              R4S3(4) = R4A2(I) + 1.                                    
            ENDIF                                                       
          ENDIF                                                         
        ENDIF                                                           
 41   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 4 ***'                                    
      WRITE(6,*)  R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2,R4S3,L4S3     

      DO 50 I=1,10                                                      
        R4S1 = R4A1(I)                                                  
        IF (R4S1.EQ.I) THEN                                             
          R4A1(I) = R4S1                                                
        ENDIF                                                           
        L4S1 = L4A1(I)                                                  
        IF (L4S1) THEN                                                  
          L4A1(I) = .NOT.L4S1                                           
        ENDIF                                                           
        R4S3(5) = R4A2(I)                                               
        IF (R4S3(5).NE.I) THEN                                          
          R4S2 = R4A2(I) + R4A1(I)                                      
          L4S2 = L4A1(I).AND.L4A2(I)                                    
        ELSE                                                            
          R4S2 = R4A1(I) + 1.                                           
          L4S2 = L4A2(I).OR.L4A1(I)                                     
        ENDIF                                                           
 50   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 ***'                                    
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2,R4A1,R4A2,L4A1,L4A2,R4S3,L4S3      
      STOP                                                              
      END                                                               
