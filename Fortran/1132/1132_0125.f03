      PROGRAM  CV5005                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)                                  
      type STR
         REAL*8  DA10(30),DA20(30),DA30(30),DB10(20,20),DB20(20,20),DB30(20,20),DC10(20,20,20),DC20(20,20,20),DC30(20,20,20) 
         LOGICAL*4  LD10(30),LD20(30),LD30(20,20),LD40(20,20,20)         
      end type STR
      TYPE(STR) STR_DATA

      DATA     STR_DATA%DA10/30*1.D0/,STR_DATA%DA20/30*2.D0/,STR_DATA%DA30/30*3.D0/                
      DATA     STR_DATA%DB10/400*4.D0/,STR_DATA%DB20/400*5.D0/,STR_DATA%DB30/400*6.D0/             
      DATA     STR_DATA%DC10/8000*2.D0/,STR_DATA%DC20/8000*1.D0/,STR_DATA%DC30/8000*4.D0/          
      DATA     STR_DATA%LD10/30*.FALSE./,STR_DATA%LD20/30*.FALSE./,STR_DATA%LD30/400*.FALSE./      
      DATA     STR_DATA%LD40/8000*.FALSE./                                       
      DO 5 I=1,30,2                                                     
 5      STR_DATA%LD10(I) = .TRUE.                                                
                                                                      
      DO 10 I=1,20                                                      
        STR_DATA%DA10(I) = STR_DATA%DA20(I) + STR_DATA%DA30(I)                                     
        STR_DATA%DA20(I) = DNINT( DSQRT(STR_DATA%DA10(I)) )                               
        IF ( STR_DATA%DA20(I) ) 11,12,13                                         
 11       STR_DATA%DA30(I) = - STR_DATA%DA20(I) + STR_DATA%DA30(I)                                 
          GO TO 14                                                      
 12     STR_DATA%DA30(I) = 0.0D0                                                 
        GO TO 14                                                        
 13     STR_DATA%DA30(I) = STR_DATA%DA20(I)                                               
 14       DO 20 J=1,10                                                  
            STR_DATA%DB10(I,J) = STR_DATA%DB20(I,J) + STR_DATA%DB30(I,J)                           
            STR_DATA%DB20(I,J) = STR_DATA%DB20(I,J+10) * 2.D0                             
            IF ( STR_DATA%DB10(I,J) .GT. STR_DATA%DB20(I,J) ) THEN                        
              STR_DATA%LD30(I,J) = .TRUE.                                        
            ENDIF                                                       
            DO 30 K=11,20                                               
              DX = STR_DATA%DC10(I,J,K) * STR_DATA%DB30(I,J) / 2.0D0                      
              DY = STR_DATA%DC20(I,J,K) * STR_DATA%DB20(I,J)                              
              DZ = STR_DATA%DC30(I,J,K) * STR_DATA%DB10(I,J)                              
              IF ( DX .GT. DZ  .AND. DY .GT. DZ ) THEN                  
                STR_DATA%LD40(I,J,K) = .TRUE.                                    
              ELSEIF ( DZ .GT. DX  .OR.  DZ.LT.DY ) THEN                
                STR_DATA%LD40(I,J,K-10) = .TRUE.                                 
              ENDIF                                                     
              STR_DATA%DC10(I,J,K) = STR_DATA%DC10(I,J,K) + DMIN1(DX,DY,DZ)               
 30         CONTINUE                                                    
            IF ( STR_DATA%LD30(I,J) ) THEN                                       
              STR_DATA%DB30(I,J) = STR_DATA%DB10(I,J) - STR_DATA%DB20(I,J)                         
            ENDIF                                                       
 20       CONTINUE                                                      
        IF ( STR_DATA%LD10(I) ) THEN                                             
          STR_DATA%DA10(1)  = STR_DATA%DA10(1)  + STR_DATA%DA20(I)                                 
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5005 *** NO.1 **** '                        
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=1,20)                            
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=1,20)                            
      WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(K),K=1,20)                            
      do j=1,10
      WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J),I=1,20)
      WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),I=1,20)
      WRITE(6,*) ' (LD30) ',(STR_DATA%LD30(I,J),I=1,20)
      do k=1,20
      WRITE(6,*) ' (DC10) ',(STR_DATA%DC10(I,J,K),I=1,10)
      WRITE(6,*) ' (LD40) ',(STR_DATA%LD40(I,J,K),I=1,10)
      enddo
      enddo
      do j=11,20
      WRITE(6,*) ' (DB30) ',(STR_DATA%DB30(I,J),I=1,10)
      enddo
                                                                       
      ICNT = 0                                                          
      DO 40 I=1,15                                                      
        STR_DATA%DA20(I) = STR_DATA%DA10(I*2) + STR_DATA%DA30(I*2-1)                               
        IF ( STR_DATA%DA20(I) .LT. STR_DATA%DA10(I) ) THEN                                
          STR_DATA%LD20(I) = .TRUE.                                              
        ENDIF                                                           
        GO TO 45                                                        
 50     IF ( STR_DATA%LD10(I) .AND. STR_DATA%LD20(I) ) THEN                               
          ICNT = ICNT + 1                                               
        ENDIF                                                           
        DO 60 J=20,11,-1                                                
          DX = DNINT( DSQRT(STR_DATA%DB10(J,I+1)) )                              
          DY = DMOD( STR_DATA%DB20(J,I),STR_DATA%DB30(J,I) )                              
          IF ( DY ) 61,62,62                                            
 62         STR_DATA%DB20(J-1,I) = STR_DATA%DB30(J,I+1) + DY                              
            GO TO 63                                                    
 61       STR_DATA%DB30(J,I) = DX - DY                                           
 63       STR_DATA%DB10(J,I) = STR_DATA%DB20(J,I) + STR_DATA%DB30(J,I)                             
            N = J - 1                                                   
            DO 70 K=5,N                                                 
              STR_DATA%DC20(I,J,K) = DMAX1( STR_DATA%DB10(K,I),STR_DATA%DB30(K,I) )                
              STR_DATA%DC30(I,J,K) = STR_DATA%DC10(I,J,K-1) + STR_DATA%DC20(I,J,K-1)               
              IF ( STR_DATA%DC20(I,J,K) .LT. STR_DATA%DC30(I,J,K) ) THEN                  
                STR_DATA%LD40(I,J,K) = .TRUE.                                    
              ENDIF                                                     
 70         CONTINUE                                                    
 60     CONTINUE                                                        
        GO TO 41                                                        
 45   CONTINUE                                                          
        STR_DATA%DB20(20,I+5) = DMAX1( STR_DATA%DA10(I),STR_DATA%DA20(I) )                         
        STR_DATA%DB30(20,I+5) = DMIN1( STR_DATA%DA10(I),STR_DATA%DA30(I) )                         
        GO TO 50                                                        
 41     STR_DATA%DA10(I) = STR_DATA%DA20(I) - STR_DATA%DA30(I)                                     
 40   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5005 *** NO.2 **** '                        
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=1,15)                            
      WRITE(6,*) ' (LD20) ',(STR_DATA%LD20(K),K=1,15)                            
      WRITE(6,*) ' ICNT = ',ICNT                                        
      do j=1,15
      WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J),I=20,11,-1)
      WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),I=20,11,-1)
      WRITE(6,*) ' (DB30) ',(STR_DATA%DB30(I,J),I=20,11,-1)
      enddo
      do j=20,11,-1
         do K=5,20
      WRITE(6,*) ' (DC20)',(STR_DATA%DC20(I,J,K),I=1,15)
      WRITE(6,*) ' (DC30)',(STR_DATA%DC30(I,J,K),I=1,15)
      WRITE(6,*) ' (LD40)',(STR_DATA%LD40(I,J,K),I=1,15)
      enddo
      enddo
      STOP                                                              
      END                                                               
