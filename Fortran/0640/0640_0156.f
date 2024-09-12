      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)                                  
      DIMENSION    DA10(30),DA20(30),DA30(30),                          
     *           DB10(20,20),DB20(20,20),DB30(20,20),                   
     *           DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)           
      DIMENSION    LD10(30),LD20(30),LD30(20,20),LD40(20,20,20)         

      DATA     DA10/30*1.D0/,DA20/30*2.D0/,DA30/30*3.D0/                
      DATA     DB10/400*4.D0/,DB20/400*5.D0/,DB30/400*6.D0/             
      DATA     DC10/8000*2.D0/,DC20/8000*1.D0/,DC30/8000*4.D0/          
      DATA     LD10/30*.FALSE./,LD20/30*.FALSE./,LD30/400*.FALSE./      
      DATA     LD40/8000*.FALSE./                                       

      DO 5 I=1,30,2                                                     
 5      LD10(I) = .TRUE.                                                
      DO 10 I=1,20                                                      
        DA10(I) = DA20(I) + DA30(I)                                     
        DA20(I) = DNINT( DSQRT(DA10(I)) )                               
        IF ( DA20(I) ) 11,12,13                                         
 11       DA30(I) = - DA20(I) + DA30(I)                                 
          GO TO 14                                                      
 12     DA30(I) = 0.0D0                                                 
        GO TO 14                                                        
 13     DA30(I) = DA20(I)                                               
 14       DO 20 J=1,10                                                  
            DB10(I,J) = DB20(I,J) + DB30(I,J)                           
            DB20(I,J) = DB20(I,J+10) * 2.D0                             
            IF ( DB10(I,J) .GT. DB20(I,J) ) THEN                        
              LD30(I,J) = .TRUE.                                        
            ENDIF                                                       
            DO 30 K=11,20                                               
              DX = DC10(I,J,K) * DB30(I,J) / 2.0D0                      
              DY = DC20(I,J,K) * DB20(I,J)                              
              DZ = DC30(I,J,K) * DB10(I,J)                              
              IF ( DX .GT. DZ  .AND. DY .GT. DZ ) THEN                  
                LD40(I,J,K) = .TRUE.                                    
              ELSEIF ( DZ .GT. DX  .OR.  DZ.LT.DY ) THEN                
                LD40(I,J,K-10) = .TRUE.                                 
              ENDIF                                                     
              DC10(I,J,K) = DC10(I,J,K) + DMIN1(DX,DY,DZ)               
 30         CONTINUE                                                    
            IF ( LD30(I,J) ) THEN                                       
              DB30(I,J) = DB10(I,J) - DB20(I,J)                         
            ENDIF                                                       
 20       CONTINUE                                                      
        IF ( LD10(I) ) THEN                                             
          DA10(1)  = DA10(1)  + DA20(I)                                 
        ENDIF                                                           
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,20)                            
      WRITE(6,*) ' (DA20) ',(DA20(K),K=1,20)                            
      WRITE(6,*) ' (DA30) ',(DA30(K),K=1,20)                            
      do j=1,10
      WRITE(6,*) ' (DB10) ',(DB10(I,J),I=1,20)
      WRITE(6,*) ' (DB20) ',(DB20(I,J),I=1,20)
      WRITE(6,*) ' (LD30) ',(LD30(I,J),I=1,20)
      do k=1,20
      WRITE(6,*) ' (DC10) ',(DC10(I,J,K),I=1,10)
      WRITE(6,*) ' (LD40) ',(LD40(I,J,K),I=1,10)
      enddo
      enddo
      do j=11,20
      WRITE(6,*) ' (DB30) ',(DB30(I,J),I=1,10)
      enddo
      ICNT = 0                                                          
      DO 40 I=1,15                                                      
        DA20(I) = DA10(I*2) + DA30(I*2-1)                               
        IF ( DA20(I) .LT. DA10(I) ) THEN                                
          LD20(I) = .TRUE.                                              
        ENDIF                                                           
        GO TO 45                                                        
 50     IF ( LD10(I) .AND. LD20(I) ) THEN                               
          ICNT = ICNT + 1                                               
        ENDIF                                                           
        DO 60 J=20,11,-1                                                
          DX = DNINT( DSQRT(DB10(J,I+1)) )                              
          DY = DMOD( DB20(J,I),DB30(J,I) )                              
          IF ( DY ) 61,62,62                                            
 62         DB20(J-1,I) = DB30(J,I+1) + DY                              
            GO TO 63                                                    
 61       DB30(J,I) = DX - DY                                           
 63       DB10(J,I) = DB20(J,I) + DB30(J,I)                             
            N = J - 1                                                   
            DO 70 K=5,N                                                 
              DC20(I,J,K) = DMAX1( DB10(K,I),DB30(K,I) )                
              DC30(I,J,K) = DC10(I,J,K-1) + DC20(I,J,K-1)               
              IF ( DC20(I,J,K) .LT. DC30(I,J,K) ) THEN                  
                LD40(I,J,K) = .TRUE.                                    
              ENDIF                                                     
 70         CONTINUE                                                    
 60     CONTINUE                                                        
        GO TO 41                                                        
 45   CONTINUE                                                          
        DB20(20,I+5) = DMAX1( DA10(I),DA20(I) )                         
        DB30(20,I+5) = DMIN1( DA10(I),DA30(I) )                         
        GO TO 50                                                        
 41     DA10(I) = DA20(I) - DA30(I)                                     
 40   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,15)                            
      WRITE(6,*) ' (LD20) ',(LD20(K),K=1,15)                            
      WRITE(6,*) ' ICNT = ',ICNT                                        
      do j=1,15
      WRITE(6,*) ' (DB10) ',(DB10(I,J),I=20,11,-1)
      WRITE(6,*) ' (DB20) ',(DB20(I,J),I=20,11,-1)
      WRITE(6,*) ' (DB30) ',(DB30(I,J),I=20,11,-1)
      enddo
      do j=20,11,-1
         do K=5,20
      WRITE(6,*) ' (DC20)',(DC20(I,J,K),I=1,15)
      WRITE(6,*) ' (DC30)',(DC30(I,J,K),I=1,15)
      WRITE(6,*) ' (LD40)',(LD40(I,J,K),I=1,15)
      enddo
      enddo
      STOP                                                              
      END                                                               
