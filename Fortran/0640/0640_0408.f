      PROGRAM MAIN                                                    
      REAL * 4    R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)                  
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +      ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                 
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +      ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      DO 10 I=1,10                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) GOTO 10                                          
        R4S2 = R4A1(I) + 1.                                             
 10   CONTINUE                                                          
      DO 11 I=1,10                                                      
        L4S1 = L4A1(I) .AND.L4A2(I)                                     
        IF (L4S1) GOTO 11                                               
        L4A1(I) = L4A2(I).AND.L4S1                                      
 11   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 1 **'                                     
      WRITE(6,*) R4S1,R4A1,L4S1,L4A1                                    

      DO 20 I=1,10                                                      
        R4S1 = R4A1(I)                                                  
        IF (L4A1(I)) GOTO 20                                            
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) GOTO 20                                          
        R4S1 = R4A2(I) + 2.                                             
 20   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5-1 **'                                   
      WRITE(6,*)  R4S1                                                  

      DO 30 I=1,10                                                      
        IF (L4A1(I)) GOTO 31                                            
        R4S1 = R4A1(I)                                                  
        IF (R4S1.EQ.I) THEN                                             
         R4A1(I) = R4S1                                                 
        ELSE                                                            
          R4A2(I) = R4S1 + R4A1(I)                                      
        ENDIF                                                           
 31     IF (L4A2(I)) GOTO 32                                            
        R4S1 = R4A1(I)                                                  
        IF (R4S1.GT.0 ) THEN                                            
          R4A1(I) = R4S1                                                
        ELSE                                                            
          R4A2(I) = R4S1 + R4A2(I)                                      
        ENDIF                                                           
 32     L4S1  = L4A1(I)                                                 
        IF (L4S1) THEN                                                  
          L4A1(I) = L4S1                                                
        ELSE                                                            
          L4A2(I) = L4S1.AND.L4A1(I)                                    
        ENDIF                                                           
        IF (L4A1(I).AND.L4A2(I)) THEN                                   
         IF (R4A1(I).NE.R4A2(I)) THEN                                   
             R4S1 = R4A1(I) + R4A2(I)                                   
             R4S1 = R4A1(I) + R4A2(I)                                   
             L4S1 = L4A1(I) .AND. L4A2(I)                               
             GOTO 30                                                    
           ELSE                                                         
             R4S1 = R4A1(I) - R4A2(I)                                   
             R4S1 = R4A1(I) - R4A2(I)                                   
             L4S1 = L4A1(I) .OR. L4A2(I)                                
         ENDIF                                                          
       ENDIF                                                            
 30   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 - 2 **'                                 
      WRITE(6,*) R4S1,L4S1,L4A1,R4A1                                    

      DO 40 I=1,10                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) THEN                                             
          R4A1(I) = R4S1                                                
        ELSE                                                            
          R4A1(I) = R4S1 + 1.                                           
        ENDIF                                                           
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.LT.0.) THEN                                            
          R4A1(I) = R4S1                                                
        ELSE                                                            
          R4A1(I) = R4S1 + 1.                                           
        ENDIF                                                           
        L4S1 = L4A1(I).AND.L4A2(I)                                      
        IF (L4S1) THEN                                                  
          L4A1(I) = L4S1                                                
        ELSE                                                            
          L4A1(I) = .NOT.L4S1                                           
        ENDIF                                                           
 40   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 - 3 **'                                 
      WRITE(6,*)  R4S1,L4S1                                             
      WRITE(6,*)  R4A1,L4A1                                             

      DO 50 I=1,10                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.NE.I) THEN                                             
          R4A1(I) = R4S1                                                
        ENDIF                                                           
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) THEN                                             
          R4A1(I) = R4S1                                                
        ENDIF                                                           
        L4S1 = L4A1(I).AND.L4A2(I)                                      
        IF (L4S1) THEN                                                  
           L4A1(I) = L4S1                                               
        ENDIF                                                           
 50   CONTINUE                                                          
      WRITE(6,*) '** TETS NO. 5 - 4 **'                                 
      WRITE(6,*) R4S1,R4A1,L4S1,L4A1                                    

      DO 60 I=1,10                                                      
        R4S1 = R4A1(I) + 1.                                             
        IF (R4S1.GT.0) GOTO 60                                          
        R4A1(I) = R4S1                                                  
        R4S1 = R4A1(I) + 2.                                             
        IF (R4S1.LT.0 ) GOTO 60                                         
        R4A1(I) = R4S1                                                  
        L4S1 = L4A1(I)                                                  
        IF (L4S1)  GOTO 60                                              
        L4A1(I) = L4S1                                                  
 60   CONTINUE                                                          
      WRITE(6,*) '** TETS NO. 5 - 5 **'                                 
      WRITE(6,*) R4S1,L4S1,R4A1,L4A1                                    

      R4S1 = 10.                                                        
      DO 70 I=1,R4S1                                                    
        R4S1 = R4A1(I) + I                                              
        IF (R4S1.GT.10) GOTO 71                                         
 70   CONTINUE                                                          
 71   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 - 6 **'                                 
      WRITE(6,*) R4S1                                                   

      DO 83 JJ=1,10                                                     
      DO 80 I=1,10                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
 80   R4A1(I) = R4S1                                                    
      DO 81 I=1,10                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
 81   R4A1(I) = R4S1                                                    
      DO 82 I=1,10                                                      
        L4S1 = L4A1(I).AND.  L4A2(I)                                    
 82   L4A1(I) = L4S1                                                    
 83   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 - 7 **'                                 
      WRITE(6,*) R4S1,R4A1,L4S1,L4A1                                    

      DO 90 I=1,10                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) GOTO 91                                          
        R4S1 = R4A2(I)                                                  
 91     R4S1 = R4A1(I) + R4A2(I)                                        
        IF (R4S1.GT.0) GOTO 92                                          
        R4S1 = R4A1(I)                                                  
 92     L4S1 = L4A1(I) .AND. L4A2(I)                                    
        IF (L4S1)  GOTO 90                                              
        L4A1(I) = L4S1                                                  
 90   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 5 - 8 **'                                 
      WRITE(6,*) R4S1,L4S1,R4A1,L4A1                                    
      STOP                                                              
      END                                                               
