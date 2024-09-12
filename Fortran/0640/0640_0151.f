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

      DC10 = 0
      DC20 = 0

      IT1 = 2                                                           
      IT2 = 10                                                          
      DO 10 I=1,10                                                      
        DA10(1,I) = DA20(I,I) + DA30(IT1,I)                             
        DA30(1,I) = DA40(10,I) - DA20(I,I)                              
          DO 10 J=I+10,20                                               
            DA20(I,J) = DB30(I,J,IT2) * DA10(IT2,J)                     
            DA40(I,J) = DB20(I,J,J) / 2.0D0 + DA20(I,J-1)               
            IF ( DA10(J,I) .GT. DA30(J,I) ) THEN                        
              LA10(I,J) = .TRUE.                                        
            ENDIF                                                       
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(1,K),K=1,10)                          
      WRITE(6,*) ' (DA30) ',(DA30(1,K),K=1,10)                          
      do j=1,10
         WRITE(6,*) ' (DA20) ',(DA20(I,j),I=1,10)
      enddo
      do j=1,10
         WRITE(6,*) ' (DA40) ',(DA40(I,J),I=1,10)
      enddo
      do j=1,10
         WRITE(6,*) ' (LA10) ',(LA10(I,J),I=1,10)
      enddo
      IT1 = 1                                                           
      IT2 = 2                                                           
      DO 20 I=IT2,15                                                    
        DO 30 J=I,15                                                    
          IF ( DA20(I,J) .LT. DA40(I,J) ) THEN                          
            LA20(J,I) = .TRUE.                                          
          ENDIF                                                         
          DA20(I,J) = DA40(I,J) + DA10(I,J)                             
          DB30(I,J,IT2) = DB30(I,J,IT1) * DA30(I,J)                     
          DA10(IT1,J) = DA20(I,J-IT1) - DA40(I,J+1)                     
 30     CONTINUE                                                        
        DC10(I) = DC20(I) + DA20(15,I) - DA20(IT2,I)                    
        DC20(1) = DC20(1) + DB30(I,IT2,IT1)                             
 20   CONTINUE                                                          
      WRITE(6,*) ' (DC10) ',(DC10(K),K=1,15)                            
      WRITE(6,*) ' (DC20) ', DC20(1)                                    
      WRITE(6,*)   (DA10(1,K),K=1,15)                                   
      do j=1,15
         WRITE(6,*) ' (DA20) ',(DA20(I,J),I=1,15)
      enddo
      do j=1,15
         WRITE(6,*) ' (DB30) ',(DB30(I,J,2),I=1,15)
      enddo
      do j=1,15
         WRITE(6,*) ' (LA20) ',(LA20(I,J),I=1,15)
      enddo
      DO 40 I=1,15                                                      
        DC20(I) = DC20(I) + DC10(I) - DA10(I,20)                        
        DO 50 J=2,I                                                     
          DA20(I,J) = DA30(I,J) + DA10(J,I)                             
          DA10(J+1,I) = DA40(I+1,J+1) - DA30(I,J)                       
           DO 60 K=2,10,2                                               
             DB10(I,J,K) = DB20(I,J,K) + DB30(I,J,K)                    
             DB20(I,J+1,K-1) = DB10(I,J,K+1) * 2.0D0 - DA30(I,K)        
 60        CONTINUE                                                     
          DA40(I,J) = DA10(J,I) + DA30(I,J)                             
          DA30(20,I) = DA30(20,I) + DA40(I,J-1)                         
 50     CONTINUE                                                        
        DC10(I) = DC20(I) * 2.0D0                                       
 40   CONTINUE                                                          
      WRITE(6,*) ' (DC10) ',(DC10(K),K=1,15)                            
      WRITE(6,*) ' (DC20) ',(DC20(K),K=1,15)                            
      WRITE(6,*) ' (DA30) ',(DA30(20,K),K=1,15)                         
      do j=1,15
      WRITE(6,*) ' (DA10) ',(DA10(I,J),I=1,15)
      WRITE(6,*) ' (DA20) ',(DA20(I,J),I=1,15)
      WRITE(6,*) ' (DA40) ',(DA40(I,J),I=1,15)
      do k=1,10
      WRITE(6,*) ' (DB10) ',(DB10(I,J,K),I=1,15)
      WRITE(6,*) ' (DB20) ',(DB20(I,J,K),I=1,15)
      enddo
      enddo
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
      WRITE(6,*) '(LA10)',LA10                                          
      WRITE(6,*) ' (LD10)',LD10                                         
      WRITE(6,*) ' (LD20)',LD20                                         
      STOP                                                              
      END                                                               
