      PROGRAM MAIN                                                    
      REAL * 4 R4S1,R4S2,R4S3(20),R4A1(20),R4A2(20)                     
      LOGICAL * 4 L4S1,L4S2,L4S3(20),L4A1(20),L4A2(20)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.                          
     +       ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./                
      DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,1.                           
     +       ,  2.,2.,2.,2.,2.,2.,2.,2.,2.,2./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      DO 10 I=1,15                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        R4A2(I) = R4S1                                                  
        R4S2 = R4A2(I) + 1.                                             
        R4A1(1) = R4S2                                                  
        R4S3(1) = R4A1(I) + R4A2(I)                                     
        L4S1 = L4A1(I)                                                  
        L4A2(I) = .NOT.L4S1                                             
        L4S2 = L4A2(I) .AND. L4S1                                       
        L4A1(I) = L4S2                                                  
10    CONTINUE                                                          
       WRITE(6,*) '** TEST NO. 1 - 1 **'                                
       WRITE(6,*) R4S1,R4S2,R4A1,R4A2,L4S1,L4S2,L4A1,L4A2               
      DO 11 I=1,16                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        R4A2(I) = R4S1                                                  
        R4S2 = R4A2(I) + 1.                                             
        R4A1(1) = R4S2                                                  
        R4S3(1) = R4A1(I) + R4A2(I)                                     
        L4S1 = L4A1(I)                                                  
        L4A2(I) = .NOT.L4S1                                             
        L4S2 = L4A2(I) .AND. L4S1                                       
        L4A1(I) = L4S2                                                  
11    CONTINUE                                                          
       WRITE(6,*) '** TEST NO. 1 -2 **'                                 
       WRITE(6,*) R4S1,R4S2,R4A1,R4A2,L4S1,L4S2,L4A1,L4A2               
      DO 12 I=1,17                                                      
        R4S1 = R4A1(I) + R4A2(I)                                        
        R4A2(I) = R4S1                                                  
        R4S2 = R4A2(I) + 1.                                             
        R4A1(I) = R4S2                                                  
        R4S3(1) = R4A1(I) + R4A2(I)                                     
        L4S1 = L4A1(I)                                                  
        L4A2(I) = .NOT.L4S1                                             
        L4S2 = L4A2(I) .AND. L4S1                                       
        L4A1(I) = L4S2                                                  
12    CONTINUE                                                          
       WRITE(6,*) '** TEST NO. 1 - 3 **'                                
       WRITE(6,*) R4S1,R4S2,R4A1,R4A2,L4S1,L4S2,L4A1,L4A2               

      DO 20 I=1,15                                                      
        IF (L4A1(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          R4A2(I) = R4S1                                                
          R4S2 = R4A2(I) + 1.                                           
          R4A1(1) = R4S2                                                
          R4S3(1) = R4A1(I) + R4A2(I)                                   
          L4S1 = L4A1(I)                                                
          L4A2(I) = .NOT.L4S1                                           
          L4S2 = L4A2(I) .AND. L4S1                                     
          L4A1(I) = L4S2                                                
        ENDIF                                                           
20    CONTINUE                                                          
       WRITE(6,*) '** TEST NO. 2 - 1 **'                                
       WRITE(6,*) R4S1,R4S2,R4A1,R4A2,L4S1,L4S2,L4A1,L4A2               
      DO 21 I=1,16                                                      
        IF (L4A2(I)) THEN                                               
          R4S1 = R4A1(I) + R4A2(I)                                      
          R4A2(I) = R4S1                                                
          R4S2 = R4A2(I) + 1.                                           
          R4A1(I) = R4S2                                                
          R4S3(1) = R4A1(I) + R4A2(I)                                   
          L4S1 = L4A1(I)                                                
          L4A2(I) = .NOT.L4S1                                           
          L4S2 = L4A2(I) .AND. L4S1                                     
          L4A1(I) = L4S2                                                
        ENDIF                                                           
21    CONTINUE                                                          
       WRITE(6,*) '** TEST NO. 2 -2 **'                                 
       WRITE(6,*) R4S1,R4S2,R4A1,R4A2,L4S1,L4S2,L4A1,L4A2               
      DO 22 I=1,17                                                      
        IF (L4A1(I))  THEN                                              
          R4S1 = R4A1(I) + R4A2(I)                                      
          R4A2(I) = R4S1                                                
          R4S2 = R4A2(I) + 1.                                           
          R4A1(I) = R4S2                                                
          R4S3(1) = R4A1(I) + R4A2(I)                                   
          L4S1 = L4A1(I)                                                
          L4A2(I) = .NOT.L4S1                                           
          L4S2 = L4A2(I) .AND. L4S1                                     
          L4A1(I) = L4S2                                                
        ENDIF                                                           
22    CONTINUE                                                          
       WRITE(6,*) '** TEST NO. 3 - 3 **'                                
       WRITE(6,*) R4S1,R4S2,R4A1,R4A2,L4S1,L4S2,L4A1,L4A2               
      STOP                                                              
      END                                                               
