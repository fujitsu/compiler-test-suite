      PROGRAM  CV5000                                                   
        IMPLICIT   REAL*8(D),LOGICAL*4(L)                                 
        type STR
           REAL*8  DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20), DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
           LOGICAL*4  LA10(20,20),LA20(20,20), LD10(20,20,20),LD20(20,20,20)                     
           REAL*8 DC10(20),DC20(20)
        end type STR
        TYPE(STR) STR_DATA

      DATA     STR_DATA%DA10/400*1.0D0/,STR_DATA%DA20/400*2.0D0/,STR_DATA%DA30/400*3.0D0/          
      DATA     STR_DATA%DA40/400*2.0D0/,STR_DATA%DB10/8000*1.0D0/,STR_DATA%DB20/8000*2.0D0/        
      DATA     STR_DATA%DB30/8000*4.0D0/                                         
      DATA     STR_DATA%LA10/400*.FALSE./,STR_DATA%LA20/400*.FALSE./                      
      DATA     STR_DATA%LD10/8000*.FALSE./,STR_DATA%LD20/8000*.FALSE./                    


      STR_DATA%DC10 = 0
      STR_DATA%DC20 = 0
      IT1 = 2                                                           
      IT2 = 10                                                          
      DO 10 I=1,10                                                      
        STR_DATA%DA10(1,I) = STR_DATA%DA20(I,I) + STR_DATA%DA30(IT1,I)                             
        STR_DATA%DA30(1,I) = STR_DATA%DA40(10,I) - STR_DATA%DA20(I,I)                              
          DO 10 J=I+10,20                                               
            STR_DATA%DA20(I,J) = STR_DATA%DB30(I,J,IT2) * STR_DATA%DA10(IT2,J)                     
            STR_DATA%DA40(I,J) = STR_DATA%DB20(I,J,J) / 2.0D0 + STR_DATA%DA20(I,J-1)               
            IF ( STR_DATA%DA10(J,I) .GT. STR_DATA%DA30(J,I) ) THEN                        
              STR_DATA%LA10(I,J) = .TRUE.                                        
            ENDIF                                                       
 10   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5000 *** NO.1 **** '                        
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(1,K),K=1,10)                          
      WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(1,K),K=1,10)                          
      do j=1,10
         WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(I,j),I=1,10)
      enddo
      do j=1,10
         WRITE(6,*) ' (DA40) ',(STR_DATA%DA40(I,J),I=1,10)
      enddo
      do j=1,10
         WRITE(6,*) ' (LA10) ',(STR_DATA%LA10(I,J),I=1,10)
      enddo

      IT1 = 1                                                           
      IT2 = 2                                                           
      DO 20 I=IT2,15                                                    
        DO 30 J=I,15                                                    
          IF ( STR_DATA%DA20(I,J) .LT. STR_DATA%DA40(I,J) ) THEN                          
            STR_DATA%LA20(J,I) = .TRUE.                                          
          ENDIF                                                         
          STR_DATA%DA20(I,J) = STR_DATA%DA40(I,J) + STR_DATA%DA10(I,J)                             
          STR_DATA%DB30(I,J,IT2) = STR_DATA%DB30(I,J,IT1) * STR_DATA%DA30(I,J)                     
          STR_DATA%DA10(IT1,J) = STR_DATA%DA20(I,J-IT1) - STR_DATA%DA40(I,J+1)                     
 30     CONTINUE                                                        
        STR_DATA%DC10(I) = STR_DATA%DC20(I) + STR_DATA%DA20(15,I) - STR_DATA%DA20(IT2,I)                    
        STR_DATA%DC20(1) = STR_DATA%DC20(1) + STR_DATA%DB30(I,IT2,IT1)                             
 20   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5000 *** NO.2 *** '                         
      WRITE(6,*) ' (DC10) ',(STR_DATA%DC10(K),K=1,15)                            
      WRITE(6,*) ' (DC20) ', STR_DATA%DC20(1)                                    
      WRITE(6,*)   (STR_DATA%DA10(1,K),K=1,15)                                   
      do j=1,15
         WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(I,J),I=1,15)
      enddo
      do j=1,15
         WRITE(6,*) ' (DB30) ',(STR_DATA%DB30(I,J,2),I=1,15)
      enddo
      do j=1,15
         WRITE(6,*) ' (LA20) ',(STR_DATA%LA20(I,J),I=1,15)
      enddo

      DO 40 I=1,15                                                      
        STR_DATA%DC20(I) = STR_DATA%DC20(I) + STR_DATA%DC10(I) - STR_DATA%DA10(I,20)                        
        DO 50 J=2,I                                                     
          STR_DATA%DA20(I,J) = STR_DATA%DA30(I,J) + STR_DATA%DA10(J,I)                             
          STR_DATA%DA10(J+1,I) = STR_DATA%DA40(I+1,J+1) - STR_DATA%DA30(I,J)                       
           DO 60 K=2,10,2                                               
             STR_DATA%DB10(I,J,K) = STR_DATA%DB20(I,J,K) + STR_DATA%DB30(I,J,K)                    
             STR_DATA%DB20(I,J+1,K-1) = STR_DATA%DB10(I,J,K+1) * 2.0D0 - STR_DATA%DA30(I,K)        
 60        CONTINUE                                                     
          STR_DATA%DA40(I,J) = STR_DATA%DA10(J,I) + STR_DATA%DA30(I,J)                             
          STR_DATA%DA30(20,I) = STR_DATA%DA30(20,I) + STR_DATA%DA40(I,J-1)                         
 50     CONTINUE                                                        
        STR_DATA%DC10(I) = STR_DATA%DC20(I) * 2.0D0                                       
 40   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5000 *** NO.3 **** '                        
      WRITE(6,*) ' (DC10) ',(STR_DATA%DC10(K),K=1,15)                            
      WRITE(6,*) ' (DC20) ',(STR_DATA%DC20(K),K=1,15)                            
      WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(20,K),K=1,15)                         
      do j=1,15
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(I,J),I=1,15)
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(I,J),I=1,15)
      WRITE(6,*) ' (DA40) ',(STR_DATA%DA40(I,J),I=1,15)
      do k=1,10
      WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J,K),I=1,15)
      WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J,K),I=1,15)
      enddo
      enddo
                                                                       
      DO 70 I=1,20                                                      
       DO 70 J=1,20                                                     
         IF ( STR_DATA%LA10(I,J) .OR. STR_DATA%LA20(J,I) ) THEN                           
           STR_DATA%LA10(I,J) = .NOT. STR_DATA%LA20(J,I)                                  
         ENDIF                                                          
         DO 70 K=1,20                                                   
           IF ( STR_DATA%DB10(I,J,K) .GT. STR_DATA%DB30(I,J,K) ) THEN                     
             STR_DATA%LD10(I,J,K) = .NOT. STR_DATA%LD20(I,J,K)                             
           ENDIF                                                        
           IF ( STR_DATA%DB20(I,J,K) .GT. STR_DATA%DB30(I,J,K) ) THEN                     
             STR_DATA%LD20(I,J,K) = .NOT. STR_DATA%LD10(I,J,K)                            
           ENDIF                                                        
 70   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5000 *** NO.4 **** '                        
      WRITE(6,*) '(LA10)',STR_DATA%LA10                                          
      WRITE(6,*) ' (LD10)',STR_DATA%LD10                                         
      WRITE(6,*) ' (LD20)',STR_DATA%LD20                                         
                                                                       
      STOP                                                              
      END                                                               
