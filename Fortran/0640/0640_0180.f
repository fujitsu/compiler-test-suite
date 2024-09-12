      PROGRAM MAIN                                                    
      INTEGER I10(100),I11(100,5),I12(100,5)                            
      LOGICAL L10(100),L11(100,5)                                       
      REAL    R20(100,10)/1000*0/,R21(100),R22(100),R23(100,5)
      LOGICAL L30S,L31S,L32S                                            
      LOGICAL L30(10,5),L31(10,5),L32(10)                               
      REAL    R30(10),R31(10)                                           
      DO 1 I=1,100                                                      
       DO 1 J=1,5                                                       
         I10(I) = I + J                                                 
         I11(I,J) = I*J                                                 
         I12(I,J) = I - J                                               
         L10(I) = 0.EQ.MOD(I,2)                                         
         L11(I,J) = .NOT.L10(I)                                         
         R20(I,J) = I + J                                               
         R21(I)   = I*J                                                 
         R22(I)   = I - J                                               
         R23(I,J) = I * (J-1)                                           
  1   CONTINUE                                                          
      DO 2 I=1,10                                                       
        DO 2 J=1,5                                                      
          L30(I,J) = 0.EQ.MOD(I,2)                                      
          L31(I,J) = .NOT.L30(I,J)                                      
          R30(I) = I                                                    
          R31(I) = I*J                                                  
  2   CONTINUE                                                          
                                                                        
      WRITE(6,*) '----- TEST NO.1 -----'
      IS3 = 0                                                           
        DO 10 I=1,100                                                   
          IS1 = I10(I)                                                  
          IF(L10(I)) THEN                                               
            IS2 = I                                                     
          ELSE                                                          
            IS2 = - I                                                   
          ENDIF                                                         
          IS3 = IS3 + I10(I)                                            
          DO 10 K=1,2                                                   
          DO 10 J=1,5                                                   
            IF(L11(I,J)) I11(I,J) = IS1                                 
            I12(I,J) = IS1 + I + IS2                                    
   10   CONTINUE                                                        
      WRITE(6,*) ' I = ',I,' J = ',J,' K = ',K                          
      WRITE(6,*) ' IS1 = ',IS1,' IS2 = ',IS2,' IS3 = ',IS3              
      WRITE(6,*) ' I11 = ',((I11(I,J),I=1,5),J=2,3)                     
      WRITE(6,*) ' I12 = ',((I12(I,J),I=4,9),J=3,5)                     
      WRITE(6,*) '----- TEST NO.2 -----'
      R21S = 0.                                                         
        DO 21 I=1,10                                                    
        DO 21 K=1,2                                                     
          DO 20 J=1,10                                                  
            R20(I,J) = R20(I,J)*2.                                      
            R20S = R20(I,J)                                             
   20     CONTINUE                                                      
          R20S = R21(I)                                                 
          R22(I) = R20S + R23(I,K)                                      
          R21S = R21S + R22(I)                                          
   21   CONTINUE                                                        
      WRITE(6,*) ' R20 = ',((R20(I,J),I=1,5),J=2,3)                     
      WRITE(6,*) ' R22 = ',R22                                          
      WRITE(6,*) ' R21S = ',R21S                                        
      WRITE(6,*) '----- TEST NO.3 -----'
        DO 31 J=1,10                                                    
          L30S = R30(J).NE.R31(J)                                       
          L31S = .NOT.L30S                                              
          L32S = 0.EQ.MOD(J,2)                                          
          DO 30 K=1,5                                                   
            L30(J,K) = L30S.AND.L31(J,K)                                
            L31(J,K) = L30S.AND..TRUE..OR.L31S                          
            IF(L31(J,K)) L32S = L30(J,K)                                
   30     CONTINUE                                                      
          L32(J) = L30S                                                 
          L31S = L32(J).OR.L32S                                         
          L32S = .NOT.L32(J)                                            
   31   CONTINUE                                                        
      WRITE(6,*) ' L30  = ',L30                                         
      WRITE(6,*) ' L31  = ',L31                                         
      WRITE(6,*) ' L31S = ',L31S                                        
      WRITE(6,*) ' L32S = ',L32S                                        
      STOP                                                              
      END                                                               
