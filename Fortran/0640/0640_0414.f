      PROGRAM MAIN                                                    
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)                     
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
      DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
     +       ,  .FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./                   
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
     +       ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
      DATA N/10/                                                        

      DO 10 I=1,10                                                      
       R4S1 = R4A1(I)                                                   
       L4S1 = L4A1(I).AND.L4A2(I)                                       
 10   CONTINUE                                                          
      WRITE(6,*) '*** TEST NO. 1 **'                                    
      WRITE(6,*) R4S1,L4S1                                              

      DO 20 I=1,N                                                       
       R4S1 = R4A1(I) + R4A2(I)                                         
       L4S1 = L4A1(I).OR.L4A2(I)                                        
 20   CONTINUE                                                          
      CALL SUBL(N)                                                      
      DO 21 I=1,N                                                       
        R4S2 = R4A1(I) + R4A2(I) + 1.                                   
        L4S2 = .NOT.(L4A1(I).AND.L4A2(I))                               
 21   CONTINUE                                                          
      WRITE(6,*) '*** TEST NO. 2 **'                                    
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2                                    
      STOP                                                              
      END                                                               
      SUBROUTINE SUBL(N)                                                
      INTEGER * 4 N                                                     
      N = 10                                                            
      RETURN                                                            
      END                                                               
