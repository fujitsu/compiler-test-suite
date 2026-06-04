      PROGRAM  CV5003                                                   
      IMPLICIT   REAL*8(D),LOGICAL*4(L),INTEGER*4(I)                    
      type STR
         REAL*8 DA10(30),DA20(30),DA30(30),DB10(20,20),DB20(20,20),DB30(20,20),DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)
         LOGICAL*4 LD10(30),LD20(20,20),LD30(20,20,20)
         INTEGER*4 IL10(30),IL20(20,20),IL30(20,20,20)
      end type STR
      TYPE(STR) STR_DATA

      DATA     IT1/1/,IT2/2/,IT3/3/                                     
      DATA     STR_DATA%DA10/30*1.D0/,STR_DATA%DA20/30*2.D0/,STR_DATA%DA30/30*3.D0/                
      DATA     STR_DATA%DB10/400*1.D0/,STR_DATA%DB20/400*2.D0/,STR_DATA%DB30/400*4.D0/             
      DATA     STR_DATA%DC20/8000*5.D0/,STR_DATA%DC10/8000*1.D0/,STR_DATA%DC30/8000*2.D0/          
      DATA     STR_DATA%LD10/30*.FALSE./,STR_DATA%LD20/400*.FALSE./,STR_DATA%LD30/8000*.FALSE./    


      DO 5 I=1,30                                                       
        STR_DATA%IL10(I) = I                                                     
        IF ( I.LE.20 ) THEN                                             
          DO 6 J =1,20                                                  
            STR_DATA%IL20(I,J) = J                                               
            DO 6 K=1,20                                                 
  6           STR_DATA%IL30(I,J,K) = K                                           
        ENDIF                                                           
  5   CONTINUE                                                          

      DO 10 I=IT2,15                                                    
        STR_DATA%DA10(STR_DATA%IL10(I)) = STR_DATA%DA20(STR_DATA%IL10(I)) + STR_DATA%DA30(STR_DATA%IL10(I))                   
         DO 20 J=3,21-I                                                 
           STR_DATA%DB10(I,J) = STR_DATA%DB20(I+1,J) + STR_DATA%DB30(I,J+1)                        
           STR_DATA%DB20(I,J) = STR_DATA%DB10(I,J-1) + STR_DATA%DB30(I+1,J)                        
            DO 30 K=1,10                                                
              STR_DATA%DC10(I,J,K) = STR_DATA%DC20(I,J-1,K+1) + STR_DATA%DC30(I,J,K+1)             
              STR_DATA%DC20(I,J,K) = STR_DATA%DC10(I,J,K+10) + STR_DATA%DC30(I,J,K)                
 30         CONTINUE                                                    
           STR_DATA%DB30(I,J) = STR_DATA%DB10(I-1,J-1) - STR_DATA%DB20(I-1,J-1)                    
 20      CONTINUE                                                       
        STR_DATA%DA30(STR_DATA%IL10(I)) = STR_DATA%DA10(I-1) * STR_DATA%DA30(STR_DATA%IL10(I))                       
 10   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5003 *** NO.1 **** '                        
      WRITE(6,*) ' (DA10) ',(STR_DATA%DA10(K),K=1,15)                            
      WRITE(6,*) ' (DA30) ',(STR_DATA%DA30(K),K=1,15)                            
      DO J=1,10
         WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J),I=1,15)
         WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),i=1,15)
      ENDDO
      DO J=3,12
         DO k=1,10
            WRITE(6,*) ' (DC10) ',(STR_DATA%DC10(I,J,K),I=1,15)
            WRITE(6,*) ' (DC20) ',(STR_DATA%DC20(I,J,K),I=1,15)
         ENDDO
      ENDDO
      DX1 = 0.0D0                                                       
      DO 40 I=2,STR_DATA%IL10(10)                                                
        STR_DATA%DA20(I) = STR_DATA%DA10(I) * 2.D0 - STR_DATA%DA30(I+1)                            
        N = STR_DATA%IL10(I)                                                     
        IF ( STR_DATA%DA10(I) .GT. STR_DATA%DA20(I) ) THEN                                
          STR_DATA%LD10(N) = .TRUE.                                              
        ENDIF                                                           
        DO 45 J=2,N                                                     
          DX2 = STR_DATA%DB10(I,J) + STR_DATA%DB30(I+1,J)                                 
          DY2 = STR_DATA%DB20(I,J) + STR_DATA%DB30(I,J+1)                                 
          IF ( DX2 .LT. DY2 ) THEN                                      
            STR_DATA%LD20(I,J) = .TRUE.                                          
          ENDIF                                                         
          STR_DATA%DB30(I,J) = DX2 - DY2 + STR_DATA%DB30(I,J)                             
           DO 50 K=11,20                                                
             STR_DATA%DC30(K,J,I) = STR_DATA%DC10(I+1,J+N,K-1) - STR_DATA%DC20(I,J+1,K-1)          
             STR_DATA%DC10(I,J,K) = STR_DATA%DC30(K-1,J-1,I) + STR_DATA%DC20(I,J,K)                
 50        CONTINUE                                                     
          IF ( STR_DATA%LD20(I,J) ) THEN                                         
            STR_DATA%DB10(1,J) = STR_DATA%DB30(I,J-1) * 2.0D0                             
          ELSE                                                          
            STR_DATA%DB10(2,J) = STR_DATA%DB30(I-1,J) * 2.0D0                             
          ENDIF                                                         
 45     CONTINUE                                                        
      DX1 = DMAX1( STR_DATA%DA10(I),STR_DATA%DA20(I),STR_DATA%DA30(I) )                            
 40   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5003 *** NO.2 **** '                        
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=1,10)                            
      WRITE(6,*) ' (DB10) ',((STR_DATA%DB10(I,J),I=1,2),J=1,10)                  
      DO j=1,10
         WRITE(6,*) ' (DB30) ',(STR_DATA%DB30(I,J),I=1,10)
         do k=1,10
            WRITE(6,*) ' (DC30) ',(STR_DATA%DC30(I,J,K),I=11,20)
         enddo
         do k=11,20
            WRITE(6,*) ' (DC10) ',(STR_DATA%DC10(I,J,K),I=1,10)
         enddo
      enddo
      WRITE(6,*) ' DX1 = ',DX1                                          
                                                                       
      DCNT1 = 0.0D0                                                     
      DCNT2 = 0.0D0                                                     
      DCNT3 = 0.0D0                                                     
      DO 60 I1=1,IT3                                                    
        DCNT1 = DCNT1 + STR_DATA%DA10(I1)+ STR_DATA%DA10(I1+IT3)                          
        DO 70 I2=IT2,I1                                                 
          IF ( STR_DATA%DB10(I1,I2) .GT. DCNT2 ) THEN                            
            DCNT2 = STR_DATA%DB10(I1,I2)                                         
          ENDIF                                                         
          STR_DATA%DB20(I1,I2) = STR_DATA%DB10(I1+IT1,I2) - STR_DATA%DB30(I1,I2)                   
           DO 80 I3=20,I2,-1                                            
 80          STR_DATA%DC20(I3,I2,I1) = DMAX1( STR_DATA%DC10(I1,I2,I3),STR_DATA%DC30(I3,I2,I1) )    
          STR_DATA%DB10(I1,I2) = STR_DATA%DA20(I2) + STR_DATA%DA30(I2) - STR_DATA%DB20(I1,I2)               
 70     CONTINUE                                                        
        STR_DATA%DA20(I1) = STR_DATA%DA30(I) - STR_DATA%DB10(IT3,I1)                               
        IF ( STR_DATA%LD10(I1) .OR. .NOT. STR_DATA%LD20(I1,I2) ) THEN                     
          STR_DATA%LD30(I1,I1,I1) = .TRUE.                                       
        ENDIF                                                           
 60   CONTINUE                                                          
      WRITE(6,*) ' **** CVCT5003 *** NO.3 **** '                        
      WRITE(6,*) ' DCNT1 = ',DCNT1                                      
      WRITE(6,*) ' DCNT2 = ',DCNT2                                      
      WRITE(6,*) ' (DA20) ',(STR_DATA%DA20(K),K=1,10)                            
      DO J=1,10
         WRITE(6,*) ' (DB10) ',(STR_DATA%DB10(I,J),I=1,10)
         WRITE(6,*) ' (DB20) ',(STR_DATA%DB20(I,J),I=1,10)
         DO K=1,10
            WRITE(6,*) ' (DC20) ',(STR_DATA%DC20(I,J,K),I=20,2,-1)
         ENDDO
      ENDDO
      WRITE(6,*) ' (LD30) ',(STR_DATA%LD30(K,K,K),K=1,10)                        
      STOP                                                              
      END                                                               
