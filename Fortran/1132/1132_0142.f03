      PROGRAM CV5210                                                    
      type STR
         LOGICAL    L10(100,5),LS10,LS11,L11(10,5,5),L12(10)               
         INTEGER    I10(100,5),IS10,IS11,I11(10,5,5),I12(10)               
         REAL       R10(100,5),RS10,RS11,R11(10,5,5),R12(10),R13(100)      
         REAL*8     D10(100,5),DS10,DS11,D11(10,5,5),D12(10)               
         COMPLEX    C10(100,5),CS10,CS11,C11(10,5,5),C12(10)               
         COMPLEX*16 CD10(100,5),CDS10,CDS11,CD11(10,5,5),CD12(10)          
      end type STR
      TYPE(STR) STR_DATA
                                                                       
      WRITE(6,*) '***** CVCT5210 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 ----- UPPER SAB    '                  
        DO 10 I=1,100                                                   
          STR_DATA%LS10 = 0.EQ.MOD(I,2)                                          
          STR_DATA%IS10 = I                                                      
          STR_DATA%RS10 = FLOAT(I)                                               
          STR_DATA%DS10 = DBLE(STR_DATA%RS10)                                             
          STR_DATA%CS10 = STR_DATA%DS10                                                   
          STR_DATA%CDS10 = STR_DATA%CS10                                                  
          DO 10 K=1,5                                                   
            STR_DATA%L10(I,K) = STR_DATA%LS10                                             
            STR_DATA%I10(I,K) = STR_DATA%IS10                                             
            STR_DATA%R10(I,K) = STR_DATA%RS10                                             
            STR_DATA%D10(I,K) = STR_DATA%DS10                                             
            STR_DATA%C10(I,K) = STR_DATA%CS10                                             
            STR_DATA%CD10(I,K) = STR_DATA%CDS10 + STR_DATA%I10(I,K) + STR_DATA%R10(I,K) + STR_DATA%D10(I,K) + STR_DATA%C10(I,K)                  
   10   CONTINUE                                                        
                                                                    
      WRITE(6,*) ' I = ',I,' K = ',K                                    
      WRITE(6,*) ' IS10 = ',STR_DATA%IS10,' RS10 = ',STR_DATA%RS10,' DS10 = ',STR_DATA%DS10        
      WRITE(6,*) ' CS10 = ',STR_DATA%CS10,' CDS10 = ',STR_DATA%CDS10,' LS10 = ',STR_DATA%LS10      
      WRITE(6,*) ' L10 = ',(STR_DATA%L10(I1,5),I1=1,50)                          
      WRITE(6,*) ' CD10 = ',(STR_DATA%CD10(I1,5),I1=1,50)                        
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.2 ----- UPPER/LOWER SAB'                
        DO 20 I=1,10                                                    
          STR_DATA%LS10 = 0.EQ.MOD(I,2)                                          
          STR_DATA%IS10 = I                                                      
          STR_DATA%RS10 = FLOAT(I)                                               
          STR_DATA%DS10 = DBLE(STR_DATA%RS10)                                             
          STR_DATA%CS10 = STR_DATA%DS10                                                   
          STR_DATA%CDS10 = STR_DATA%CS10                                                  
          DO 21 K=1,5                                                   
            STR_DATA%LS11 = .NOT.STR_DATA%LS10                                            
            STR_DATA%IS11 = -STR_DATA%IS10                                                
            STR_DATA%RS11 = -STR_DATA%RS10                                                
            STR_DATA%DS11 = -STR_DATA%DS10                                                
            STR_DATA%CS11 = -STR_DATA%CS10                                                
            STR_DATA%CDS11 = STR_DATA%CS11 - STR_DATA%DS11 + STR_DATA%RS11 * STR_DATA%IS11                           
            STR_DATA%CD10(I,K) = STR_DATA%CDS11                                           
            DO 22 J=1,5                                                 
              STR_DATA%I11(I,J,K) = STR_DATA%IS10 + STR_DATA%IS11                                  
              STR_DATA%R11(I,J,K) = STR_DATA%RS10 + STR_DATA%RS11                                  
              STR_DATA%D11(I,J,K) = STR_DATA%DS10 + STR_DATA%DS11                                  
              STR_DATA%C11(I,J,K) = STR_DATA%CS10 + STR_DATA%CS11                                  
              STR_DATA%CD11(I,J,K) = STR_DATA%CDS10 + STR_DATA%CDS11 + STR_DATA%C11(I,J,K) + STR_DATA%D11(I,J,K) + STR_DATA%R11(I,J,K) + STR_DATA%I11(I,J,K)                     
              STR_DATA%L11(I,J,K) = STR_DATA%LS10.OR.STR_DATA%LS11                                 
   22       CONTINUE                                                    
            STR_DATA%L10(I,K) = STR_DATA%LS11                                             
            STR_DATA%I10(I,K) = STR_DATA%IS11                                             
            STR_DATA%R10(I,K) = STR_DATA%RS11                                             
            STR_DATA%D10(I,K) = STR_DATA%DS11                                             
            STR_DATA%C10(I,K) = STR_DATA%CS11                                             
            STR_DATA%CD10(I,K) = STR_DATA%CDS11 * STR_DATA%C10(I,K) + STR_DATA%R10(I,K) + STR_DATA%IS11              
   21     CONTINUE                                                      
          STR_DATA%L12(I) = STR_DATA%LS10                                                 
          STR_DATA%I12(I) = STR_DATA%IS10                                                 
          STR_DATA%R12(I) = STR_DATA%RS10                                                 
          STR_DATA%D12(I) = STR_DATA%DS10                                                 
          STR_DATA%C12(I) = STR_DATA%CS10 + STR_DATA%CDS10 + STR_DATA%DS10*STR_DATA%RS10 - STR_DATA%IS10                      
          STR_DATA%CD12(I) = STR_DATA%CDS10                                               
   20   CONTINUE                                                        
                                                                       
      WRITE(6,*) ' I = ',I,' K = ',K,' J = ',J                          
      WRITE(6,*) ' IS10 = ',STR_DATA%IS10,' RS10 = ',STR_DATA%RS10,' DS10 = ',STR_DATA%DS10        
      WRITE(6,*) ' CS10 = ',STR_DATA%CS10,' CDS10 = ',STR_DATA%CDS10,' LS10 = ',STR_DATA%LS10      
      WRITE(6,*) ' IS11 = ',STR_DATA%IS11,' RS11 = ',STR_DATA%RS11,' DS11 = ',STR_DATA%DS11        
      WRITE(6,*) ' CS11 = ',STR_DATA%CS11,' CDS11 = ',STR_DATA%CDS11,' LS11 = ',STR_DATA%LS11      
      WRITE(6,*) ' L11= ',(STR_DATA%L11(I1,5,2),I1=1,10)                         
      WRITE(6,*) ' CD11 = ',(STR_DATA%CD11(5,I1,3),I1=1,5)                       
      WRITE(6,*) ' L10 = ',(STR_DATA%L10(I1,5),I1=1,10)                          
      WRITE(6,*) ' CD10 = ',(STR_DATA%CD10(I1,5),I1=1,10)                        
      WRITE(6,*) ' L12 = ',(STR_DATA%L12(I1),I1=1,10)                            
      WRITE(6,*) ' C12 = ',(STR_DATA%C12(I1),I1=1,10)                            
                                                                       
      WRITE(6,*) '----- TEST NO.3 ----- UPPER/LOWER SAB '               
      DO 30 I=1,10                                                      
       STR_DATA%RS10 = STR_DATA%R12(I)                                                    
       DO 31 J=1,10                                                     
        STR_DATA%RS11 = STR_DATA%RS10                                                     
        DO 32 K=1,10                                                    
         RS12 = STR_DATA%RS11                                                    
         DO 33 L=1,5                                                    
          STR_DATA%R10(I,L) = STR_DATA%RS11                                               
   33    CONTINUE                                                       
   32   CONTINUE                                                        
   31  CONTINUE                                                         
   30 CONTINUE                                                          
                                                                       
      WRITE(6,*) ' R10 = ',(STR_DATA%R10(I,3),I=1,10)                            
                                                                       
      STOP                                                              
      END                                                               
