      PROGRAM CV5280                                                    
      PARAMETER (L1=10,L2=10,L3=10)                                     
      type STR
         REAL    B(L1,L2),B2(L1,L2),B3(L1,L2)                              
         REAL    A(L1,L2,L3)                                               
         COMPLEX*8 CA(L1),CB(L1),CC(L1)                                    
      end type STR
      TYPE(STR) STR_DATA
                                                                        
      STR_DATA%B=0

      DO 1 I=1,L1                                                       
        STR_DATA%CA(I)=CMPLX(FLOAT(I),FLOAT(I))                                  
        STR_DATA%CB(I)=CMPLX(FLOAT(I),FLOAT(2*I))                                
        STR_DATA%CC(I)=CMPLX(FLOAT(I-5),FLOAT(4*I))                              
                                                                        
        DO 1 J=1,L2                                                     
          STR_DATA%B2(I,J) = I + 2*J                                             
          STR_DATA%B3(I,J) = I + 3*J                                             
          DO 1 K=1,L3                                                   
            STR_DATA%A(I,J,K)= I + J + K                                         
1     CONTINUE                                                          
                                                                        
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '***** CVCT5280 *****'                                 
                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- '                               
                                                                        
      DO 10 I=1,L1                                                      
          STR_DATA%CA(I) = STR_DATA%CB(I) + STR_DATA%CC(I)                                         
          DO 10 J=2,L2                                                  
            STR_DATA%B(I,J) = STR_DATA%B2(I,J-1) * STR_DATA%B3(I,J)                                
10    CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) ' CA=',STR_DATA%CA                                              
      WRITE(6,*)                                                        
      WRITE(6,*) ' B=',STR_DATA%B                                                
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.2 ----- '                               
                                                                        
      DO 20 I=1,L1                                                      
        DO 20 J=1,L2                                                    
          STR_DATA%B(I,J) = STR_DATA%B2(I,J) + STR_DATA%B3(I,J)                                    
          DO 20 K=2,L3                                                  
            STR_DATA%A(I,J,K) = STR_DATA%A(I,J,K-1) * STR_DATA%B(I,J)                              
20    CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) ' A=',STR_DATA%A                                                
                                                                        
      STOP                                                              
      END                                                               
