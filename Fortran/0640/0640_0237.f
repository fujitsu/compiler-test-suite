      PROGRAM MAIN                                                    
      LOGICAL * 4 L1(10),L2(10),L3(10),L4(10),L5(10,10,10,10)           
      LOGICAL * 4 LS1,LS2,LS3,LS4                                       
      REAL    * 4 R1(10),R2(10),R3(10),R4(10),R5(10,10,10,10)           
      REAL    * 4 RS1,RS2,RS3,RS4                                       
      DATA N/10/                                                        
      DATA L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,                     
     +        .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                    

      DO 99 I=1,10                                                      
        L2(I) = L1(I)                                                   
        L3(I) = .NOT.L2(I)                                              
        L4(I) = L1(I)                                                   
        R1(I) = 1.                                                      
        R2(I) = R1(I)                                                   
        R3(I) = R2(I) + 1.                                              
        R4(I) =  I                                                      
 99   CONTINUE                                                          

      DO 100 I1=1,N                                                     
        LS1 = L1(I1)                                                    
        DO 101 I2=1,N                                                   
          LS2 = L2(I2)                                                  
          DO 102 I3=1,N                                                 
            LS3 = L3(I3)                                                
            DO 103 I4=1,N                                               
              LS4 = L4(I4)                                              
              DO 104 I5=1,N                                             
                L5(I2,I3,I4,I5) = LS1.OR.LS2.OR.LS3.OR.(.NOT.LS4)       
 104          CONTINUE                                                  
              L4(I4) = .TRUE.                                           
 103        CONTINUE                                                    
            L3(I3) = .FALSE.                                            
 102      CONTINUE                                                      
          L2(I2) = .TRUE.                                               
 101    CONTINUE                                                        
        L1(I1) = .TRUE.                                                 
 100  CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 1 +++++'                               
      WRITE(6,*) LS1,LS2,LS3,LS4                                        
      WRITE(6,*) L1,L2,L3,L4,L5                                         

      DO 200 I1=1,N                                                     
        RS1 = R1(I1)                                                    
        DO 201 I2=1,N                                                   
          RS2 = R2(I2)                                                  
          DO 202 I3=1,N                                                 
            RS3 = R3(I3)                                                
            DO 203 I4=1,N                                               
              RS4 = R4(I4)                                              
              DO 204 I5=1,N                                             
                R5(I2,I3,I4,I5) = RS1 + RS2 + RS3 - RS4                 
 204          CONTINUE                                                  
              R4(I4) = 1.                                               
 203        CONTINUE                                                    
            R3(I3) = 2.                                                 
 202      CONTINUE                                                      
          R2(I2) = 2.                                                   
 201    CONTINUE                                                        
        R1(I1) = 0.                                                     
 200  CONTINUE                                                          
      WRITE(6,*) '+++++ TEST NO. 2 +++++'                               
      WRITE(6,*) RS1,RS2,RS3,RS4                                        
      WRITE(6,*) R1,R2,R3,R4,R5                                         
      STOP                                                              
      END                                                               
