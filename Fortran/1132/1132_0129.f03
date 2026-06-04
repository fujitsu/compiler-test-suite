      PROGRAM  CV5000                                                   
      IMPLICIT   REAL*8(D),LOGICAL*4(L)                         
      type STR
         REAL*8  DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20), DB10(20,20,20),DB20(20,20,20),DB30(20,20,20),DC10(20),DC20(20)           
         LOGICAL*4 LA10(20,20),LA20(20,20),LD10(20,20,20),LD20(20,20,20)                          
      end type STR
      TYPE(STR) STR_DATA

      DATA     STR_DATA%DA10/400*1.0D0/,STR_DATA%DA20/400*2.0D0/,STR_DATA%DA30/400*3.0D0/          
      DATA     STR_DATA%DA40/400*2.0D0/,STR_DATA%DB10/8000*1.0D0/,STR_DATA%DB20/8000*2.0D0/        
      DATA     STR_DATA%DB30/8000*4.0D0/                                         
      DATA     STR_DATA%LA10/400*.FALSE./,STR_DATA%LA20/400*.FALSE./                      
      DATA     STR_DATA%LD10/8000*.FALSE./,STR_DATA%LD20/8000*.FALSE./                    
      DO 70 I=1,20                                                      
       DO 70 J=1,20                                                     
         IF ( STR_DATA%LA10(I,J) .OR. STR_DATA%LA20(J,I) ) THEN                           
           STR_DATA%LA10(I,J) = .NOT. STR_DATA%LA20(J,I)                                  
         ENDIF                                                          
         DO 70 K=1,20                                                   
           IF ( STR_DATA%DB10(I,J,K) .GT. STR_DATA%DB30(I,J,K) ) THEN                     
             STR_DATA%LD10(I,J,K) = .NOT.STR_DATA%LD20(I,J,K)                             
           ENDIF                                                        
           IF ( STR_DATA%DB20(I,J,K) .GT. STR_DATA%DB30(I,J,K) ) THEN                     
             STR_DATA%LD20(I,J,K) = .NOT. STR_DATA%LD10(I,J,K)                            
           ENDIF                                                        
 70   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5000 *** NO.4 **** '                        
      WRITE(6,*) '(LA10)',((STR_DATA%LA10(I,J),I=1,10),J=11,20)                  
      WRITE(6,*) ' (LD10)',(((STR_DATA%LD10(I,J,K),I=3,4),J=3,4),K=5,6)          
      WRITE(6,*) ' (LD20)',(((STR_DATA%LD10(I,J,K),I=4,5),J=5,6),K=5,6)          
                                                                       
      STOP                                                              
      END                                                               
