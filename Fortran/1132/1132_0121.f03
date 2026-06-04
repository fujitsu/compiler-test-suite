      PROGRAM  CV5001                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)                                  
      type STR
       REAL*8   DA10(20),DA20(20),DA30(20),DA40(20), DB10(20,20),DB20(20,20),DB30(20,20)
       REAL*8   DC10(20,20,20),DC20(20,20,20),DC30(20,20,20), DD10(10,10,10,10)           
       LOGICAL*4  LD10(20),LD30(20,20,20)                             
      end type STR
      TYPE(STR) STR_DATA

      DATA     STR_DATA%DA10/20*1.D0/,STR_DATA%DA20/20*2.D0/,STR_DATA%DA30/20*3.D0/                
      DATA     STR_DATA%DA40/20*4.D0/                                            
      DATA     STR_DATA%DB10/400*2.D0/,STR_DATA%DB30/400*1.D0/,STR_DATA%DB20/400*4.D0/             
      DATA     STR_DATA%DC10/8000*1.D0/,STR_DATA%DC20/8000*2.D0/,STR_DATA%DC30/8000*3.D0/          
      DATA     STR_DATA%DD10/10000*1.D0/                                         
      DATA     STR_DATA%LD10/20*.FALSE./                                         
      DATA     STR_DATA%LD30/8000*.FALSE./                                       
      DATA     IT1/1/,IT2/2/,IT3/10/                                    

      DO 10 I=1,IT3                                                     
        STR_DATA%DA10(I) = STR_DATA%DA20(I+1) + STR_DATA%DA30(I+IT3)                               
        STR_DATA%DA20(I) = STR_DATA%DA40(I+2) * STR_DATA%DA30(I) - STR_DATA%DA10(I)                         
          DO 20 J=11,20                                                 
            STR_DATA%DB10(I,J) = STR_DATA%DB20(I,J) + STR_DATA%DB30(IT3,J)                         
            STR_DATA%DB20(I,J) = STR_DATA%DB30(I,J) * 2.0D0                               
            DX = DMAX1( STR_DATA%DB10(I,J),STR_DATA%DB20(I,J) )                           
            DY = STR_DATA%DB10(I,J-1) - STR_DATA%DB20(I+IT3,J)                            
            STR_DATA%DB30(I,J) = DX - DY                                         
            N = J                                                       
              DO 20 K=1,N-1                                             
                STR_DATA%DC10(I,J,K) = STR_DATA%DC20(I,J,K) + STR_DATA%DB10(I,K)                   
                STR_DATA%DC20(I,J,K) = STR_DATA%DC30(I,J,K) + STR_DATA%DC10(I,J-1,K)               
 20       CONTINUE                                                      
        STR_DATA%DA30(I) = STR_DATA%DA30(I+1) - STR_DATA%DA10(I) + STR_DATA%DA20(I)                         
        STR_DATA%DA40(1) = STR_DATA%DA40(1) + STR_DATA%DB10(I,1)                                   
 10   CONTINUE                                                          
      WRITE(6,*) ' *** CVCT5001 ** NO.1 *** '                           
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=1,10)                            
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=1,10)                            
      WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(K),K=1,10)                            
      WRITE(6,*) ' (DA40) ',STR_DATA%DA40(1)                                     
      do j=11,20
      WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J),I=1,10)
      WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),I=1,10)
      WRITE(6,*) ' (DB30) ',(STR_DATA%DB30(I,J),I=1,10)
      do k=1,20
      WRITE(6,*) ' (DC10) ',(STR_DATA%DC10(I,J,K),I=1,10)
      WRITE(6,*) ' (DC20) ',(STR_DATA%DC20(I,J,K),I=1,10)
      enddo 
      enddo 
      DO 30 I=IT1,9                                                     
        DO 40 J=I,10                                                    
          STR_DATA%DB30(I,J) = STR_DATA%DB10(I,J+1) + STR_DATA%DB20(I+1,J)                         
            DO 50 K=IT3,2,-1                                            
              STR_DATA%DC30(I,J,K) = STR_DATA%DC20(I,J,K-1) - STR_DATA%DC10(I,J,K)                 
              STR_DATA%DC20(I,J,K) = STR_DATA%DC30(I+10,J,K) + STR_DATA%DD10(I,J,K,IT2)            
              IF ( STR_DATA%DC30(I,J,K) .GT. STR_DATA%DC20(I,J,K) ) THEN                  
                STR_DATA%LD30(I,J,K) = .TRUE.                                    
              ENDIF                                                     
 50         CONTINUE                                                    
          STR_DATA%DB10(I,J) = STR_DATA%DB30(I,J) + STR_DATA%DA10(J+1)                             
          STR_DATA%DB20(I,J) = STR_DATA%DB30(I,J) + STR_DATA%DA20(J+2)                             
 40     CONTINUE                                                        
        STR_DATA%DA10(I) = STR_DATA%DA30(I) + STR_DATA%DA40(I)                                     
        STR_DATA%DA20(I) = DMAX1( STR_DATA%DA30(I),STR_DATA%DA40(I) )                              
        DX = STR_DATA%DA10(I) - STR_DATA%DA20(I)                                          
        IF ( DX .GT. 3.0D0 ) THEN                                       
          STR_DATA%LD10(I) = .TRUE.                                              
        ENDIF                                                           
 30   CONTINUE                                                          
      WRITE(6,*) ' *** CVCT5001 ** NO.2 *** '                           
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=1,10)                            
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=1,10)                            
      do j=1,10
      WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J),I=1,10)
      WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),I=1,10)
      WRITE(6,*) ' (DB30) ',(STR_DATA%DB30(I,J),I=1,10)
      do k=10,20
      WRITE(6,*) ' (DC20) ',(STR_DATA%DC20(I,J,K),I=1,10)
      WRITE(6,*) ' (DC30) ',(STR_DATA%DC30(I,J,K),I=1,10)
      WRITE(6,*) ' (LD30) ',(STR_DATA%LD30(I,J,K),I=1,10)
      enddo
      enddo
                                                                       
      DO 60 I1=11,20                                                    
       DO 70 I2=1,10                                                    
         STR_DATA%DA30(I1) = STR_DATA%DA30(I1) + STR_DATA%DB10(I1,I2) + STR_DATA%DA10(I2)                   
         STR_DATA%DB20(I1,I2) = STR_DATA%DC30(I1,10,I2) + STR_DATA%DC10(10,I1,I2)                  
           DO 70 I3=2,I2                                                
             STR_DATA%DC30(I1,10,I3) = STR_DATA%DC20(I1,I2,I3) / 2.0D0                    
               DO 80 I4=I3,10                                           
                 STR_DATA%DD10(I1-10,I2,I3,I4) = STR_DATA%DD10(I1-10,I2,I3,I4) + STR_DATA%DC20(I1,I2,I4)
 80            CONTINUE                                                 
             STR_DATA%DC20(I1,I2,I3) = STR_DATA%DC30(I1,I2,I3) + STR_DATA%DC10(10,I1,I3)           
 70    CONTINUE                                                         
       STR_DATA%DA10(I1) = STR_DATA%DA40(I1) + STR_DATA%DA30(I1-1)                                 
 60   CONTINUE                                                          
      WRITE(6,*) ' *** CVCT5001 ** NO.3 *** '                           
      WRITE(6,*)   (STR_DATA%DA10(K),K=11,20)                                    
      WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(K),K=11,20)                           
      do j=1,10
         WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),I=11,20)
         do k=1,10
            WRITE(6,*) ' (DC20) ',(STR_DATA%DC20(I,J,K),I=11,20)
         enddo
      enddo
      do k=1,10
         WRITE(6,*) ' (DC30) ',(STR_DATA%DC30(I,10,K),I=11,20)
      enddo
      STOP                                                              
      END                                                               



