      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)                                  
      DIMENSION     DA10(-10:10),DA20(-10:10),DA30(-10:10),             
     *         DB10(-20:-1,20),DB20(20,-20:-1),DB30(-10:10,-10:10),     
     *         DC10(-10:10,-10:10,-10:10)                               
      DIMENSION     LD10(20),LD20(20),LD30(20,20)                       
      DIMENSION     RA10(20),RA20(20),RB10(20,20)                       

      DATA     DA10/21*1.D0/,DA20/21*2.D0/,DA30/21*3.D0/                
      DATA     DB10/400*2.D0/,DB20/400*4.D0/,DB30/441*6.D0/             
      DATA     DC10/9261*1.D0/                                          
      DATA     LD10/20*.FALSE./,LD20/20*.FALSE./                        
      DATA     LD30/400*.FALSE./                                        
      DATA     RA10/20*1./,RA20/20*2./,RB10/400*3./                     
      DATA     IT1/1/,IT2/-10/                                          
      DO 10 III=1,2                                                     
        DO 20 I=IT2,-1                                                  
          DA10(I) = DA20(I) * DA30(I)                                   
          DA20(I+1) = DBLE(RA10(-I+1)) + DB10(I,20)                     
          DO 25 J=1,10                                                  
            DB10(I,J) = DB20(J,I-5) + DB30(I,J)                         
            RB10(J,-I) = RA10(J) + RA20(-I)                             
            DX1 = DB30(I,J) + DBLE(RB10(J,-I))                          
            IF ( DB10(I,J) .GT. DX1 ) THEN                              
              LD10(J) = .TRUE.                                          
              DB20(J,I) = DNINT( DSQRT(DX1) )                           
            ELSE                                                        
              LD20(J) = .TRUE.                                          
              DB30(I,J) = DX1 - DB10(I,J)                               
            ENDIF                                                       
            DO 26 K=-10,10,2                                            
              DC10(I,J,K) = DC10(I,J,K) + DB20(J,I+IT2)                 
     *                           - DB30(I+11,J-11)                      
 26         CONTINUE                                                    
            IF ( DB20(J,I) .GE. DB30(I,J) ) THEN                        
              LD30(J,I+11) = .TRUE.                                     
            ENDIF                                                       
 25       CONTINUE                                                      
          DA30(I+1) = DA10(I+2) + DA20(I+3)                             
 20     CONTINUE                                                        
        WRITE(6,*) ' (DA10) ',(DA10(K),K=-10,-1)                        
        WRITE(6,*) ' (DA20) ',(DA20(K),K=-9,0)                          
        WRITE(6,*) ' (DA30) ',(DA30(K),K=-9,0)                          
        WRITE(6,*) ' (DB10) ',((DB10(I,J),I=-10,-1),J=1,10)             
        WRITE(6,*) ' (RB10) ',((RB10(I,J),I=1,10),J=1,10)               
        WRITE(6,*) ' (DB20) ',((DB20(I,J),I=1,10),J=-10,-1)             
        WRITE(6,*) ' (DB30) ',((DB30(I,J),I=-10,-1),J=1,10)             
        WRITE(6,*) ' (LD10) ',(LD10(K),K=1,10)                          
        WRITE(6,*) ' (LD20) ',(LD20(K),K=1,10)                          
        WRITE(6,*) ' (DC10) ',(((DC10(I,J,K),I=-10,-1),J=1,10)          
     *                              ,K=-10,10,2)                        
        WRITE(6,*) ' (LD20) ',((LD30(I,J),I=1,10),J=1,10)               
        DO 30 I1=10,0,-1                                                
          IF ( DA20(I1) .GT. DA10(I1) ) THEN                            
            LD10(I1+1) = .NOT.LD10(I1+1)                                
            DA10(I1) = DA20(I1)                                         
          ELSEIF ( DA30(I1) .GT. DA20(I1) ) THEN                        
            LD20(I1+1) = LD20(I1+1) .OR. LD10(I1+10)                    
            DA20(I1) = DA30(I1)                                         
          ENDIF                                                         
          DO 30 J1=-20,-11                                              
            N = J1 + 10                                                 
            DB30(N,I1) = DMIN1( DB10(J1,I1+1),DB20(I1+1,J1) )           
            DB20(I1+10,J1) = DB30(N,I1) - DBLE( RB10(I1+1,N+11) )       
             DO 40 K1=IT1,10                                            
               DC10(I1,J1+10,K1) = DC10(I1-10,J1+10,K1)                 
     *                                 + DB10(J1,K1)                    
 40          CONTINUE                                                   
            DB10(J1,1) = DMAX1( DB30(J1+10,I1),DB20(I1+10,J1) )         
 30     CONTINUE                                                        
        WRITE(6,*) ' (LD10) ',(LD10(K),K=11,1,-1)                       
        WRITE(6,*) ' (DA10) ',(DA10(K),K=10,0,-1)                       
        WRITE(6,*) ' (LD20) ',(LD20(K),K=11,1,-1)                       
        WRITE(6,*) ' (DA20) ',(DA20(K),K=10,0,-1)                       
        WRITE(6,*) ' (DB30) ',((DB30(I,J),I=-10,-1),J=10,0,-1)          
        WRITE(6,*) ' (DB20) ',((DB20(I,J),I=20,10,-1),J=-20,-11)        
        WRITE(6,*) ' (DB10) ',(DB10(I,1),I=-20,-11)                     
        WRITE(6,*) ' (DC10) ',(((DC10(I,J,K),I=10,0,-1)                 
     *                   ,J=-10,-1),K=1,10)                             
 10   CONTINUE                                                          
      STOP                                                              
      END                                                               
