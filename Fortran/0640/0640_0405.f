      PROGRAM MAIN                                                    
      REAL * 4    R4S1,R4S3(10),R4A1(10),R4A2(10)                       
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +      ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                 
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +      ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
      DATA R4S3/10*1./,L4S3/10*.TRUE./                                  
      DATA R4S1/1./,L4S1/.TRUE./,L4S2/.TRUE./                           

      DO 10 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 =  R4A1(I) + 1.                                          
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
        ELSE                                                            
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = .NOT.L4A1(I)                                           
        ENDIF                                                           
 10   CONTINUE                                                          
      DO 11 I=1,10                                                      
        IF (R4S1.GT.0) THEN                                             
          R4S3(1) = R4A1(I) + 1.                                        
        ELSE                                                            
          R4S3(2) = R4A2(I) + 2.                                        
        ENDIF                                                           
 11   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 **'                                     
      WRITE(6,*) R4S1,L4S1,R4S3(1),L4S3(1)                              

      DO 20 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = .NOT.L4A1(I)                                           
          L4S2 = L4A2(I)                                                
          R4S3(1) = R4A1(I) + 2.                                        
          L4S3(1) = L4A1(I) .AND. L4A2(I)                               
        ELSE                                                            
          R4S1 =  R4A2(I)   + 1.                                        
          L4S1 = L4A1(I)                                                
          L4S2 = L4A2(I)                                                
          R4S3(1) = R4A1(I) + 1.                                        
          L4S3(1) = L4A1(I) .OR. L4A2(I)                                
        ENDIF                                                           
 20   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2-1 **'                                   
      WRITE(6,*)  R4S1,L4S1,R4A1,L4A1                                   

      DO 30 I=1,10                                                      
        IF (R4S1.EQ.I) THEN                                             
          R4S1 = R4A1(I) * R4A2(I)                                      
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
          R4S3(1) = R4S1 + R4A1(I)                                      
          L4S3(1) = L4A1(I) .OR. L4A2(I)                                
        ELSE                                                            
          R4S1 = R4S1 + 1                                               
          L4S1 = .NOT.L4A2(I)                                           
          R4S3(2) = R4A1(I) - R4A2(I) + 1.                              
          L4S3(2) = .NOT.(L4A1(I).OR.L4A2(I))                           
        ENDIF                                                           
        R4S1 = R4S1 + R4A1(I)                                           
        R4A2(I) = R4S1                                                  
        R4S3(3) = R4S3(2) + R4S3(1)                                     
        L4S3(3) = L4S3(1).AND.L4S3(2)                                   
 30   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 - 2 **'                                 
      WRITE(6,*) R4S1,L4S1,R4S3(1),L4S3(1)                              
      WRITE(6,*) R4A2                                                   

      DO 40 I=1,10                                                      
        L4S1 = L4A1(I) .AND. L4A2(I)                                    
        IF (L4S1) THEN                                                  
          L4S1 = .NOT.L4A1(I)                                           
          L4S3(1) = L4S1.AND.L4A2(I)                                    
        ELSE                                                            
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
          L4S3(2) = L4S1                                                
        ENDIF                                                           
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) THEN                                             
          R4S1 = R4A1(I) + 1.                                           
          R4S3(1) = R4A2(I) + R4A1(I)                                   
        ELSE                                                            
          R4S1 = R4A1(I) + 2.                                           
          R4S3(2) = R4A2(I) + R4S1                                      
        ENDIF                                                           
 40   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 - 3 **'                                 
      WRITE(6,*)  L4S1,L4S3(1),R4S1,R4S3(1)                             

      DO 50 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = .NOT. L4A1(I)                                          
          IF (L4S1) THEN                                                
             R4A1(I) = R4S1                                             
             L4A1(I) = L4S1                                             
          ENDIF                                                         
        ELSE                                                            
          R4S1 = R4A1(I) + 2.                                           
          L4S1 = L4A1(I) .AND. L4A2(I)                                  
          IF (R4S1.GT.0) THEN                                           
            R4A1(I) = R4S1                                              
            L4A1(I) = L4S1                                              
          ENDIF                                                         
        ENDIF                                                           
 50   CONTINUE                                                          
      DO 51 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S3(1) = R4A1(I) + 4.                                        
          L4S3(1) = .NOT.L4A1(I)                                        
          IF (L4S3(1)) THEN                                             
             R4A2(I) = R4S3(1)                                          
             L4A2(I) = L4S3(1)                                          
          ENDIF                                                         
        ELSE                                                            
          R4S3(1) = R4A1(I) + 2.                                        
          L4S3(1) = L4A1(I) .AND. L4A2(I)                               
          IF (R4S3(1).GT.0) THEN                                        
            R4A1(I) = R4S3(2)                                           
            L4A1(I) = L4S3(2)                                           
          ENDIF                                                         
        ENDIF                                                           
 51   CONTINUE                                                          
      WRITE(6,*) '** TETS NO. 2 - 4 **'                                 
      WRITE(6,*) R4S1,L4S1,R4A1,L4A1,R4A2,L4A2                          
      WRITE(6,*) R4S3(1),L4S3(1),R4S3(2),L4S3(2)                        

      DO 60 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          L4S1 = .NOT.L4A1(I)                                           
          IF (R4S1.GT.0) GOTO 60                                        
          IF (L4S1) GOTO 60                                             
        ELSE                                                            
          R4S1 = R4A2(I) - R4A1(I)                                      
          L4S1 = L4A1(I).AND.L4A2(I)                                    
          IF (R4S1.GT.0) GOTO 60                                        
          IF (L4S1) GOTO 60                                             
        ENDIF                                                           
 60   CONTINUE                                                          
      DO 61 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S3(1) = R4A1(I) + R4A2(I)                                   
          L4S3(1)  = .NOT.L4A1(I)                                       
          IF (R4S3(1).GT.0) GOTO 61                                     
          IF (L4S3(1)) GOTO 61                                          
        ELSE                                                            
          R4S3(1) = R4A2(I) - R4A1(I)                                   
          L4S3(1) = L4A1(I).AND.L4A2(I)                                 
          IF (R4S3(1).GT.0) GOTO 61                                     
          IF (L4S3(1)) GOTO 61                                          
        ENDIF                                                           
 61   CONTINUE                                                          
      WRITE(6,*) '** TETS NO. 1 - 5 **'                                 
      WRITE(6,*) R4S1,L4S1,R4S3(1),L4S3(1)                              

      R4S1 = 10.                                                        
      DO 70 I=1,R4S1                                                    
        IF (R4S1.GT.0) THEN                                             
          R4S1 = R4A1(I) + 1.                                           
        ELSE                                                            
          R4S1 = R4A1(I) + 2.                                           
        ENDIF                                                           
        R4S1 = R4A1(I) + I                                              
        IF (R4S1.GT.10) GOTO 71                                         
 70   CONTINUE                                                          
 71   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 - 6 **'                                 
      WRITE(6,*) R4S1                                                   

      DO 83 JJ=1,10                                                     
        DO 80 I=1,10                                                    
          IF (L4A1(I)) THEN                                             
            R4S1 = R4A1(I) + R4A2(I)                                    
            L4S1 = L4A1(I).AND.L4A2(I)                                  
          ELSE                                                          
            R4S1 = R4A1(I) - R4A2(I)                                    
            L4S1 = L4A1(I).AND.L4A2(I)                                  
          ENDIF                                                         
 80     R4A1(I) = R4S1                                                  
        DO 81 I=1,10                                                    
          IF (L4A1(I)) THEN                                             
            R4S3(1) = R4A1(I) + R4S1                                    
            L4S3(1) = L4A1(I).AND.L4A2(I)                               
          ELSE                                                          
            R4S3(1) = R4A1(I) - R4A2(I)                                 
            L4S3(1) = .NOT.L4A2(I)                                      
          ENDIF                                                         
 81     R4A1(I) = R4S1                                                  
        DO 82 I=1,10                                                    
          IF (L4A2(I)) THEN                                             
            L4S1 = L4A1(I) .AND.L4A2(I)                                 
            L4S2 = .NOT. L4A2(I)                                        
          ELSE                                                          
            L4S1 = L4A1(I)                                              
            L4S2 = .NOT. L4A2(I)                                        
          ENDIF                                                         
 82     L4A1(I) = L4S1                                                  
 83   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 - 7 **'                                 
      WRITE(6,*) R4S1,L4S1,L4S2,R4A1,L4A1,R4S3(1),L4S3(1)               

      DO 90 I=1,10                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I) + 1.                                           
          L4S1 = .NOT. L4A2(I)                                          
          IF (R4S1.GT.0) GOTO 90                                        
        ELSE                                                            
          R4S1 = R4A2(I) + 1.                                           
          L4S1 = L4A1(I).AND.L4A2(I)                                    
          IF (L4S1) GOTO 90                                             
        ENDIF                                                           
        R4A1(I) = R4S1                                                  
         L4A1(I) = L4S1.AND.L4A2(I)                                     
 90   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 2 - 8 **'                                 
      WRITE(6,*) R4S1,L4S1,R4A1,L4A1                                    
      STOP                                                              
      END                                                               
