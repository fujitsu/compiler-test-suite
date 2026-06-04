      PROGRAM  CV5007                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)
      type STR
      REAL*8 DA10(-10:10),DA20(-10:10),DA30(-10:10),DB10(-20:-1,20),DB20(20,-20:-1),DB30(-10:10,-10:10), DC10(-10:10,-10:10,-10:10)                               
      LOGICAL*4 LD10(20),LD20(20),LD30(20,20)                       
      REAL*4 RA10(20),RA20(20),RB10(20,20)                       
      end type STR
      TYPE(STR) STR_DATA

      DATA     STR_DATA%DA10/21*1.D0/,STR_DATA%DA20/21*2.D0/,STR_DATA%DA30/21*3.D0/                
      DATA     STR_DATA%DB10/400*2.D0/,STR_DATA%DB20/400*4.D0/,STR_DATA%DB30/441*6.D0/             
      DATA     STR_DATA%DC10/9261*1.D0/                                          
      DATA     STR_DATA%LD10/20*.FALSE./,STR_DATA%LD20/20*.FALSE./                        
      DATA     STR_DATA%LD30/400*.FALSE./                                        
      DATA     STR_DATA%RA10/20*1./,STR_DATA%RA20/20*2./,STR_DATA%RB10/400*3./                     
      DATA     IT1/1/,IT2/-10/                                          
                                                                       
      DO 10 III=1,2                                                     
        DO 20 I=IT2,-1                                                  
          STR_DATA%DA10(I) = STR_DATA%DA20(I) * STR_DATA%DA30(I)                                   
          STR_DATA%DA20(I+1) = DBLE(STR_DATA%RA10(-I+1)) + STR_DATA%DB10(I,20)                     
          DO 25 J=1,10                                                  
            STR_DATA%DB10(I,J) = STR_DATA%DB20(J,I-5) + STR_DATA%DB30(I,J)                         
            STR_DATA%RB10(J,-I) = STR_DATA%RA10(J) + STR_DATA%RA20(-I)                             
            DX1 = STR_DATA%DB30(I,J) + DBLE(STR_DATA%RB10(J,-I))                          
            IF ( STR_DATA%DB10(I,J) .GT. DX1 ) THEN                              
              STR_DATA%LD10(J) = .TRUE.                                          
              STR_DATA%DB20(J,I) = DNINT( DSQRT(DX1) )                           
            ELSE                                                        
              STR_DATA%LD20(J) = .TRUE.                                          
              STR_DATA%DB30(I,J) = DX1 - STR_DATA%DB10(I,J)                               
            ENDIF                                                       
            DO 26 K=-10,10,2                                            
              STR_DATA%DC10(I,J,K) = STR_DATA%DC10(I,J,K) + STR_DATA%DB20(J,I+IT2) - STR_DATA%DB30(I+11,J-11)                      
 26         CONTINUE                                                    
            IF ( STR_DATA%DB20(J,I) .GE. STR_DATA%DB30(I,J) ) THEN                        
              STR_DATA%LD30(J,I+11) = .TRUE.                                     
            ENDIF                                                       
 25       CONTINUE                                                      
          STR_DATA%DA30(I+1) = STR_DATA%DA10(I+2) + STR_DATA%DA20(I+3)                             
 20     CONTINUE                                                        
        WRITE(6,*) ' **** CVCT5007 *** NO.1 ** III = ',III              
        WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=-10,-1)                        
        WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=-9,0)                          
        WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(K),K=-9,0)                          
        WRITE(6,*) ' (DB10) ',((STR_DATA%DB10(I,J),I=-10,-1),J=1,10)             
        WRITE(6,*) ' (RB10) ',((STR_DATA%RB10(I,J),I=1,10),J=1,10)               
        WRITE(6,*) ' (DB20) ',((STR_DATA%DB20(I,J),I=1,10),J=-10,-1)             
        WRITE(6,*) ' (DB30) ',((STR_DATA%DB30(I,J),I=-10,-1),J=1,10)             
        WRITE(6,*) ' (LD10) ',(STR_DATA%LD10(K),K=1,10)                          
        WRITE(6,*) ' (LD20) ',(STR_DATA%LD20(K),K=1,10)                          
        WRITE(6,*) ' (DC10) ',(((STR_DATA%DC10(I,J,K),I=-10,-1),J=1,10) ,K=-10,10,2)                        
        WRITE(6,*) ' (LD20) ',((STR_DATA%LD30(I,J),I=1,10),J=1,10)               
        DO 30 I1=10,0,-1                                                
          IF ( STR_DATA%DA20(I1) .GT. STR_DATA%DA10(I1) ) THEN                            
            STR_DATA%LD10(I1+1) = .NOT.STR_DATA%LD10(I1+1)                                
            STR_DATA%DA10(I1) = STR_DATA%DA20(I1)                                         
          ELSEIF ( STR_DATA%DA30(I1) .GT. STR_DATA%DA20(I1) ) THEN                        
            STR_DATA%LD20(I1+1) = STR_DATA%LD20(I1+1) .OR. STR_DATA%LD10(I1+10)                    
            STR_DATA%DA20(I1) = STR_DATA%DA30(I1)                                         
          ENDIF                                                         
          DO 30 J1=-20,-11                                              
            N = J1 + 10                                                 
            STR_DATA%DB30(N,I1) = DMIN1( STR_DATA%DB10(J1,I1+1),STR_DATA%DB20(I1+1,J1) )           
            STR_DATA%DB20(I1+10,J1) = STR_DATA%DB30(N,I1) - DBLE( STR_DATA%RB10(I1+1,N+11) )       
             DO 40 K1=IT1,10                                            
               STR_DATA%DC10(I1,J1+10,K1) = STR_DATA%DC10(I1-10,J1+10,K1)+ STR_DATA%DB10(J1,K1)                    
 40          CONTINUE                                                   
            STR_DATA%DB10(J1,1) = DMAX1( STR_DATA%DB30(J1+10,I1),STR_DATA%DB20(I1+10,J1) )         
 30     CONTINUE                                                        
        WRITE(6,*) ' **** CVCT5007 ** NO.2 *** III = ',III              
        WRITE(6,*) ' (LD10) ',(STR_DATA%LD10(K),K=11,1,-1)                       
        WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=10,0,-1)                       
        WRITE(6,*) ' (LD20) ',(STR_DATA%LD20(K),K=11,1,-1)                       
        WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=10,0,-1)                       
        WRITE(6,*) ' (DB30) ',((STR_DATA%DB30(I,J),I=-10,-1),J=10,0,-1)          
        WRITE(6,*) ' (DB20) ',((STR_DATA%DB20(I,J),I=20,10,-1),J=-20,-11)        
        WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,1),I=-20,-11)                     
        WRITE(6,*) ' (DC10) ',(((STR_DATA%DC10(I,J,K),I=10,0,-1) ,J=-10,-1),K=1,10)                             
                                                                       
 10   CONTINUE                                                          
                                                                       
      STOP                                                              
      END                                                               
