      PROGRAM MAIN                                                    
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10),R4A3(10,10)         
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +       ,   .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                 
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

      R4S3 = 0
      L4S3 = .FALSE.

      COUNT = 0.                                                        
      DO 10 I=1,10                                                      
        DO 10 J=1,10                                                    
          R4A3(I,J) = COUNT                                             
          COUNT = COUNT + 1.                                            
 10   CONTINUE                                                          

      DO 20 I=1,10                                                      
        DO 21 J=1,10                                                    
           R4S1 = R4A3(I,J)   + 1.                                      
           R4A3(I,J) = R4S1                                             
           R4S3(1) = R4A3(I,J) + 1.                                     
 21     CONTINUE                                                        
 20   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 1 **'                                     
      WRITE(6,*) R4S1,R4A3,R4S3                                         

      DO 30 I=1,10                                                      
        DO 31 J=1,10                                                    
           R4S1 = R4A1(I) + R4A2(J)                                     
           R4S2 = R4A1(J) + 1.                                          
           R4S3(1) = R4A2(J) + 1.                                       
           R4A1(J) = R4S1 + R4S2 + R4S3(1)                              
           R4A3(I,J) = R4S1                                             
           L4S1 = L4A1(I)                                               
           L4S2 = L4A2(J)                                               
           L4S3(1) = L4A1(I) .AND. L4A2(J)                              
 31      CONTINUE                                                       
 30    CONTINUE                                                         
       WRITE(6,*) '** TEST NO. 2 **'                                    
       WRITE(6,*) R4S1,R4S2,R4S3,R4A1,R4A3,L4S1,L4S2,L4S3               

      DO 40 I=1,10                                                      
        R4S1 = R4A1(I)                                                  
        R4S3(1) = R4A1(I) + R4A2(I)                                     
        L4S1 = L4A1(I) .AND. L4A2(I)                                    
        L4S2 = .NOT.L4A1(I)                                             
        L4S3(1) = .NOT.(L4A1(I).AND.L4A2(I))                            
        DO 41 J=1,10                                                    
          R4A1(J) = R4S1                                                
          R4A2(J) = R4S3(1)                                             
          L4A1(J) = L4S1 .AND. L4S2                                     
          L4A2(J) = L4S3(1)                                             
 41     CONTINUE                                                        
 40    CONTINUE                                                         
       WRITE(6,*) '** TEST NO. 3 **+'                                   
       WRITE(6,*) R4S1,R4S3,L4S1,L4S2,L4S3,R4A1,R4A2,L4A1,L4A2          

      DO 50 I=1,10                                                      
        R4A1(I) = R4S1                                                  
        R4A2(I) = R4S1 + R4S2                                           
        L4A1(I) = L4S1                                                  
        L4A2(I) = L4S3(1)                                               
        DO 51 J=1,10                                                    
          R4S1 = R4A1(I)                                                
          R4S2 = R4A1(I) + R4A2(I)                                      
          R4S3(4) = R4A1(I) - R4A2(I)                                   
          L4S1 = L4A1(I)                                                
          L4S2 = L4A1(I).OR.L4A2(I)                                     
          L4S3(4) = .NOT.L4A1(I)                                        
 51     CONTINUE                                                        
 50   CONTINUE                                                          
      WRITE(6,*) '** TEST NO. 4 ***'                                    
      WRITE(6,*) R4S1,R4S2,R4S3,L4S1,L4S2,L4S3,R4A1,R4A2,L4A1,L4A2      
      STOP                                                              
      END                                                               
