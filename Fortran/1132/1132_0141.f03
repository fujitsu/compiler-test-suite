      PROGRAM CV5209                                                    
        type STR
           INTEGER I10(100),I11(100,5),I12(100,5)                            
           LOGICAL L10(100),L11(100,5)                                       
           REAL    R20(100,10)/1000*0/,R21(100),R22(100),R23(100,5)
           LOGICAL L30S,L31S,L32S                                            
           LOGICAL L30(10,5),L31(10,5),L32(10)                               
           REAL    R30(10),R31(10)            
        end type STR
        TYPE(STR) STR_DATA
                                                                       
      WRITE(6,*) '***** CVCT5209 *****'                                 
      DO 1 I=1,100                                                      
       DO 1 J=1,5                                                       
         STR_DATA%I10(I) = I + J                                                 
         STR_DATA%I11(I,J) = I*J                                                 
         STR_DATA%I12(I,J) = I - J                                               
         STR_DATA%L10(I) = 0.EQ.MOD(I,2)                                         
         STR_DATA%L11(I,J) = .NOT.STR_DATA%L10(I)                                         
         STR_DATA%R20(I,J) = I + J                                               
         STR_DATA%R21(I)   = I*J                                                 
         STR_DATA%R22(I)   = I - J                                               
         STR_DATA%R23(I,J) = I * (J-1)                                           
  1   CONTINUE                                                          
                                                                       
      DO 2 I=1,10                                                       
        DO 2 J=1,5                                                      
          STR_DATA%L30(I,J) = 0.EQ.MOD(I,2)                                      
          STR_DATA%L31(I,J) = .NOT.STR_DATA%L30(I,J)                                      
          STR_DATA%R30(I) = I                                                    
          STR_DATA%R31(I) = I*J                                                  
  2   CONTINUE                                                          
                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- UPPER SAB    '                  
      IS3 = 0                                                           
        DO 10 I=1,100                                                   
          IS1 = STR_DATA%I10(I)                                                  
          IF(STR_DATA%L10(I)) THEN                                               
            IS2 = I                                                     
          ELSE                                                          
            IS2 = - I                                                   
          ENDIF                                                         
          IS3 = IS3 + STR_DATA%I10(I)                                            
          DO 10 K=1,2                                                   
          DO 10 J=1,5                                                   
            IF(STR_DATA%L11(I,J)) STR_DATA%I11(I,J) = IS1                                 
            STR_DATA%I12(I,J) = IS1 + I + IS2                                    
   10   CONTINUE                                                        
                                                                       
      WRITE(6,*) ' I = ',I,' J = ',J,' K = ',K                          
      WRITE(6,*) ' IS1 = ',IS1,' IS2 = ',IS2,' IS3 = ',IS3              
      WRITE(6,*) ' I11 = ',((STR_DATA%I11(I,J),I=1,5),J=2,3)                     
      WRITE(6,*) ' I12 = ',((STR_DATA%I12(I,J),I=4,9),J=3,5)                     
                                                                       
      WRITE(6,*) '----- TEST NO.2 ----- LOWER SAB    '                  
      R21S = 0.                                                         
        DO 21 I=1,10                                                    
        DO 21 K=1,2                                                     
          DO 20 J=1,10                                                  
            STR_DATA%R20(I,J) = STR_DATA%R20(I,J)*2.                                      
            R20S = STR_DATA%R20(I,J)                                             
   20     CONTINUE                                                      
          R20S = STR_DATA%R21(I)                                                 
          STR_DATA%R22(I) = R20S + STR_DATA%R23(I,K)                                      
          R21S = R21S + STR_DATA%R22(I)                                          
   21   CONTINUE                                                        
                                                                       
      WRITE(6,*) ' R20 = ',((STR_DATA%R20(I,J),I=1,5),J=2,3)                     
      WRITE(6,*) ' R22 = ',STR_DATA%R22                                          
      WRITE(6,*) ' R21S = ',R21S                                        
                                                                       
      WRITE(6,*) '----- TEST NO.3 ----- UPPER/LOWER SAB '               
        DO 31 J=1,10                                                    
          STR_DATA%L30S = STR_DATA%R30(J).NE.STR_DATA%R31(J)                                       
          STR_DATA%L31S = .NOT.STR_DATA%L30S                                              
          STR_DATA%L32S = 0.EQ.MOD(J,2)                                          
          DO 30 K=1,5                                                   
            STR_DATA%L30(J,K) = STR_DATA%L30S.AND.STR_DATA%L31(J,K)                                
            STR_DATA%L31(J,K) = STR_DATA%L30S.AND..TRUE..OR.STR_DATA%L31S                          
            IF(STR_DATA%L31(J,K)) STR_DATA%L32S = STR_DATA%L30(J,K)                                
   30     CONTINUE                                                      
          STR_DATA%L32(J) = STR_DATA%L30S                                                 
          STR_DATA%L31S = STR_DATA%L32(J).OR.STR_DATA%L32S                                         
          STR_DATA%L32S = .NOT.STR_DATA%L32(J)                                            
   31   CONTINUE                                                        
                                                                       
      WRITE(6,*) ' L30  = ',STR_DATA%L30                                         
      WRITE(6,*) ' L31  = ',STR_DATA%L31                                         
      WRITE(6,*) ' L31S = ',STR_DATA%L31S                                        
      WRITE(6,*) ' L32S = ',STR_DATA%L32S                                        
                                                                       
      STOP                                                              
      END                                                               
