      PROGRAM MAIN                                                   
      IMPLICIT   REAL*8(D),LOGICAL*4(L)                                 
      DIMENSION  DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20),       
     *           DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)           
      DIMENSION  LA10(20,20),LA20(20,20),DC10(20),DC20(20),             
     *           LD10(20,20,20),LD20(20,20,20)                          

      DATA     DA10/400*1.0D0/,DA20/400*2.0D0/,DA30/400*3.0D0/          
      DATA     DA40/400*2.0D0/,DB10/8000*1.0D0/,DB20/8000*2.0D0/        
      DATA     DB30/8000*4.0D0/                                         
      DATA     LA10/400*.FALSE./,LA20/400*.FALSE./                      
      DATA     LD10/8000*.FALSE./,LD20/8000*.FALSE./                    
      DO 70 I=1,20                                                      
       DO 70 J=1,20                                                     
         IF ( LA10(I,J) .OR. LA20(J,I) ) THEN                           
           LA10(I,J) = .NOT. LA20(J,I)                                  
         ENDIF                                                          
         DO 70 K=1,20                                                   
           IF ( DB10(I,J,K) .GT. DB30(I,J,K) ) THEN                     
             LD10(I,J,K) = .NOT.LD20(I,J,K)                             
           ENDIF                                                        
           IF ( DB20(I,J,K) .GT. DB30(I,J,K) ) THEN                     
             LD20(I,J,K) = .NOT. LD10(I,J,K)                            
           ENDIF                                                        
 70   CONTINUE                                                          
      WRITE(6,*) '(LA10)',((LA10(I,J),I=1,10),J=11,20)                  
      WRITE(6,*) ' (LD10)',(((LD10(I,J,K),I=3,4),J=3,4),K=5,6)          
      WRITE(6,*) ' (LD20)',(((LD10(I,J,K),I=4,5),J=5,6),K=5,6)          
      STOP                                                              
      END                                                               
