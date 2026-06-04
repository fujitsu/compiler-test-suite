      PROGRAM CV5213                                                    
        type STR
           REAL    R10(10),R11(10),R12(10,10,3),R13(10,10,3),R14(10),R15(10) 
        end type STR
        TYPE(STR) STR_DATA
                                                                       
      DO 1 I=1,10                                                       
       DO 1 J=1,10                                                      
        DO 1 K=1,3                                                      
          STR_DATA%R11(I) = I                                                    
          STR_DATA%R12(I,J,K) = I                                                
          STR_DATA%R13(J,I,K) = I                                                
  1       STR_DATA%R15(J) = J                                                    
                                                                       
                                                                       
      WRITE(6,*) '***** CVCT5213 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      DO 10 I=1,10                                                      
        DO 10 J=1,3                                                     
          STR_DATA%R10(I) = I                                                    
          RS1 = STR_DATA%R11(I) + STR_DATA%R10(I)                                         
          DO 11 K=1,10                                                  
            STR_DATA%R12(K,I,J) = RS1 + STR_DATA%R10(I)                                   
            STR_DATA%R13(K,I,J) = RS1 + STR_DATA%R12(K,I,J)                               
   11     CONTINUE                                                      
          STR_DATA%R14(I) = STR_DATA%R10(I) + RS1                                         
          STR_DATA%R15(I) = STR_DATA%R15(I) + STR_DATA%R14(I)                                      
   10 CONTINUE                                                          
                                                                       
      WRITE(6,*) ' R10 = ',STR_DATA%R10                                          
      WRITE(6,*) ' R13 = ',STR_DATA%R13                                          
      WRITE(6,*) ' R14 = ',STR_DATA%R14                                          
      WRITE(6,*) ' R15 = ',STR_DATA%R15                                          
      STOP                                                              
      END                                                               
