      PROGRAM MAIN                                                    
      REAL    R10(100),R11(100),R12(100),R13(100,100),R14(100,100)      
      REAL    R15(100)/100*0/
      DO 1 I=1,100                                                      
       DO 1 J=1,100                                                     
         R11(I) = I                                                     
         R13(I,J) = I + J                                               
         R14(I,J) = -I                                                  
  1   CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      DO 10 I=1,100                                                     
        R10(I) = - R11(I)                                               
        R12(I) = R10(I)*SIN(R11(I))                                     
        DO 11 J=1,100                                                   
          R12(J) = R13(I,J)                                             
          R14(I,J) = R12(J)*R10(I)                                      
   11   CONTINUE                                                        
        R15(I) = R15(I) + R10(I)                                        
   10 CONTINUE                                                          
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R12 = ',R12                                          
      WRITE(6,*) ' R14 = ',((R14(I,J),I=1,10),J=1,2)                    
      WRITE(6,*) ' R15 = ',R15                                          
      WRITE(6,*) '----- TEST NO.2 ----- '                               
      DO 20 I=1,100                                                     
        R10(I) = - R11(I)                                               
        DO 21 J=1,100                                                   
          R12(J) = R13(I,J)                                             
          R14(I,J) = R12(J)*R10(I)                                      
   21   CONTINUE                                                        
        R10(I) = R12(I)*SIN(R11(I))                                     
        R15(I) = R15(I) * R10(I)                                        
   20 CONTINUE                                                          
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R12 = ',R12                                          
      WRITE(6,*) ' R14 = ',((R14(I,J),I=1,10),J=1,2)                    
      WRITE(6,*) ' R15 = ',R15                                          
      WRITE(6,*) '----- TEST NO.3 ----- '                               
      DO 30 I=1,100                                                     
        R10(I) = - R11(I)                                               
        R12(I) = COS(R11(I))                                            
        DO 31 J=1,100                                                   
          R12(J) = R13(I,J)                                             
          R14(I,J) = R12(J)*R10(I)                                      
          R11(I) = R12(J)                                               
   31   CONTINUE                                                        
        R10(I) = R12(I)*SIN(R11(I))                                     
        R15(I) = R15(I) * R10(I)                                        
   30 CONTINUE                                                          
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R11 = ',R11                                          
      WRITE(6,*) ' R12 = ',R12                                          
      WRITE(6,*) ' R14 = ',((R14(I,J),I=1,10),J=1,2)                    
      WRITE(6,*) ' R15 = ',R15                                          
      STOP                                                              
      END                                                               
