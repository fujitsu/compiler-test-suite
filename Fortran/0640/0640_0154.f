      PROGRAM MAIN                                                   
      IMPLICIT   REAL*8(D),LOGICAL*4(L),INTEGER*4(I)                    
      DIMENSION     DA10(30),DA20(30),DA30(30),DB10(20,20),             
     *           DB20(20,20),DB30(20,20),DC10(20,20,20),                
     *           DC20(20,20,20),DC30(20,20,20)                          
      DIMENSION     LD10(30),LD20(20,20),LD30(20,20,20)                 
      DIMENSION     IL10(30),IL20(20,20),IL30(20,20,20)                 

      DATA     IT1/1/,IT2/2/,IT3/3/                                     
      DATA     DA10/30*1.D0/,DA20/30*2.D0/,DA30/30*3.D0/                
      DATA     DB10/400*1.D0/,DB20/400*2.D0/,DB30/400*4.D0/             
      DATA     DC20/8000*5.D0/,DC10/8000*1.D0/,DC30/8000*2.D0/          
      DATA     LD10/30*.FALSE./,LD20/400*.FALSE./,LD30/8000*.FALSE./    
      DO 5 I=1,30                                                       
        IL10(I) = I                                                     
        IF ( I.LE.20 ) THEN                                             
          DO 6 J =1,20                                                  
            IL20(I,J) = J                                               
            DO 6 K=1,20                                                 
  6           IL30(I,J,K) = K                                           
        ENDIF                                                           
  5   CONTINUE                                                          

      DO 10 I=IT2,15                                                    
        DA10(IL10(I)) = DA20(IL10(I)) + DA30(IL10(I))                   
         DO 20 J=3,21-I                                                 
           DB10(I,J) = DB20(I+1,J) + DB30(I,J+1)                        
           DB20(I,J) = DB10(I,J-1) + DB30(I+1,J)                        
            DO 30 K=1,10                                                
              DC10(I,J,K) = DC20(I,J-1,K+1) + DC30(I,J,K+1)             
              DC20(I,J,K) = DC10(I,J,K+10) + DC30(I,J,K)                
 30         CONTINUE                                                    
           DB30(I,J) = DB10(I-1,J-1) - DB20(I-1,J-1)                    
 20      CONTINUE                                                       
        DA30(IL10(I)) = DA10(I-1) * DA30(IL10(I))                       
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,15)                            
      WRITE(6,*) ' (DA30) ',(DA30(K),K=1,15)                            
      DO J=1,10
         WRITE(6,*) ' (DB10) ',(DB10(I,J),I=1,15)
         WRITE(6,*) ' (DB20) ',(DB20(I,J),i=1,15)
      ENDDO
      DO J=3,12
         DO k=1,10
            WRITE(6,*) ' (DC10) ',(DC10(I,J,K),I=1,15)
            WRITE(6,*) ' (DC20) ',(DC20(I,J,K),I=1,15)
         ENDDO
      ENDDO
      DX1 = 0.0D0                                                       
      DO 40 I=2,IL10(10)                                                
        DA20(I) = DA10(I) * 2.D0 - DA30(I+1)                            
        N = IL10(I)                                                     
        IF ( DA10(I) .GT. DA20(I) ) THEN                                
          LD10(N) = .TRUE.                                              
        ENDIF                                                           
        DO 45 J=2,N                                                     
          DX2 = DB10(I,J) + DB30(I+1,J)                                 
          DY2 = DB20(I,J) + DB30(I,J+1)                                 
          IF ( DX2 .LT. DY2 ) THEN                                      
            LD20(I,J) = .TRUE.                                          
          ENDIF                                                         
          DB30(I,J) = DX2 - DY2 + DB30(I,J)                             
           DO 50 K=11,20                                                
             DC30(K,J,I) = DC10(I+1,J+N,K-1) - DC20(I,J+1,K-1)          
             DC10(I,J,K) = DC30(K-1,J-1,I) + DC20(I,J,K)                
 50        CONTINUE                                                     
          IF ( LD20(I,J) ) THEN                                         
            DB10(1,J) = DB30(I,J-1) * 2.0D0                             
          ELSE                                                          
            DB10(2,J) = DB30(I-1,J) * 2.0D0                             
          ENDIF                                                         
 45     CONTINUE                                                        
      DX1 = DMAX1( DA10(I),DA20(I),DA30(I) )                            
 40   CONTINUE                                                          
      WRITE(6,*) ' (DA20) ',(DA20(K),K=1,10)                            
      WRITE(6,*) ' (DB10) ',((DB10(I,J),I=1,2),J=1,10)                  
      DO j=1,10
         WRITE(6,*) ' (DB30) ',(DB30(I,J),I=1,10)
         do k=1,10
            WRITE(6,*) ' (DC30) ',(DC30(I,J,K),I=11,20)
         enddo
         do k=11,20
            WRITE(6,*) ' (DC10) ',(DC10(I,J,K),I=1,10)
         enddo
      enddo
      WRITE(6,*) ' DX1 = ',DX1                                          
      DCNT1 = 0.0D0                                                     
      DCNT2 = 0.0D0                                                     
      DCNT3 = 0.0D0                                                     
      DO 60 I1=1,IT3                                                    
        DCNT1 = DCNT1 + DA10(I1)+ DA10(I1+IT3)                          
        DO 70 I2=IT2,I1                                                 
          IF ( DB10(I1,I2) .GT. DCNT2 ) THEN                            
            DCNT2 = DB10(I1,I2)                                         
          ENDIF                                                         
          DB20(I1,I2) = DB10(I1+IT1,I2) - DB30(I1,I2)                   
           DO 80 I3=20,I2,-1                                            
 80          DC20(I3,I2,I1) = DMAX1( DC10(I1,I2,I3),DC30(I3,I2,I1) )    
          DB10(I1,I2) = DA20(I2) + DA30(I2) - DB20(I1,I2)               
 70     CONTINUE                                                        
        DA20(I1) = DA30(I) - DB10(IT3,I1)                               
        IF ( LD10(I1) .OR. .NOT. LD20(I1,I2) ) THEN                     
          LD30(I1,I1,I1) = .TRUE.                                       
        ENDIF                                                           
 60   CONTINUE                                                          
      WRITE(6,*) ' DCNT1 = ',DCNT1                                      
      WRITE(6,*) ' DCNT2 = ',DCNT2                                      
      WRITE(6,*) ' (DA20) ',(DA20(K),K=1,10)                            
      DO J=1,10
         WRITE(6,*) ' (DB10) ',(DB10(I,J),I=1,10)
         WRITE(6,*) ' (DB20) ',(DB20(I,J),I=1,10)
         DO K=1,10
            WRITE(6,*) ' (DC20) ',(DC20(I,J,K),I=20,2,-1)
         ENDDO
      ENDDO
      WRITE(6,*) ' (LD30) ',(LD30(K,K,K),K=1,10)                        
      STOP                                                              
      END                                                               
