      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(D),LOGICAL*4(L)                                  
      DIMENSION     DA10(20),DA20(20),DA30(20),DA40(20),                
     *         DB10(20,20),DB20(20,20),DB30(20,20),                     
     *         DC10(20,20,20),DC20(20,20,20),DC30(20,20,20),            
     *         DD10(10,10,10,10)                                        
      DIMENSION     LD10(20),LD30(20,20,20)                             

      DATA     DA10/20*1.D0/,DA20/20*2.D0/,DA30/20*3.D0/                
      DATA     DA40/20*4.D0/                                            
      DATA     DB10/400*2.D0/,DB30/400*1.D0/,DB20/400*4.D0/             
      DATA     DC10/8000*1.D0/,DC20/8000*2.D0/,DC30/8000*3.D0/          
      DATA     DD10/10000*1.D0/                                         
      DATA     LD10/20*.FALSE./                                         
      DATA     LD30/8000*.FALSE./                                       
      DATA     IT1/1/,IT2/2/,IT3/10/                                    
      DO 10 I=1,IT3                                                     
        DA10(I) = DA20(I+1) + DA30(I+IT3)                               
        DA20(I) = DA40(I+2) * DA30(I) - DA10(I)                         
          DO 20 J=11,20                                                 
            DB10(I,J) = DB20(I,J) + DB30(IT3,J)                         
            DB20(I,J) = DB30(I,J) * 2.0D0                               
            DX = DMAX1( DB10(I,J),DB20(I,J) )                           
            DY = DB10(I,J-1) - DB20(I+IT3,J)                            
            DB30(I,J) = DX - DY                                         
            N = J                                                       
              DO 20 K=1,N-1                                             
                DC10(I,J,K) = DC20(I,J,K) + DB10(I,K)                   
                DC20(I,J,K) = DC30(I,J,K) + DC10(I,J-1,K)               
 20       CONTINUE                                                      
        DA30(I) = DA30(I+1) - DA10(I) + DA20(I)                         
        DA40(1) = DA40(1) + DB10(I,1)                                   
 10   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,10)                            
      WRITE(6,*) ' (DA20) ',(DA20(K),K=1,10)                            
      WRITE(6,*) ' (DA30) ',(DA30(K),K=1,10)                            
      WRITE(6,*) ' (DA40) ',DA40(1)                                     
      do j=11,20
      WRITE(6,*) ' (DB10) ',(DB10(I,J),I=1,10)
      WRITE(6,*) ' (DB20) ',(DB20(I,J),I=1,10)
      WRITE(6,*) ' (DB30) ',(DB30(I,J),I=1,10)
      do k=1,20
      WRITE(6,*) ' (DC10) ',(DC10(I,J,K),I=1,10)
      WRITE(6,*) ' (DC20) ',(DC20(I,J,K),I=1,10)
      enddo 
      enddo 

      DO 30 I=IT1,9                                                     
        DO 40 J=I,10                                                    
          DB30(I,J) = DB10(I,J+1) + DB20(I+1,J)                         
            DO 50 K=IT3,2,-1                                            
              DC30(I,J,K) = DC20(I,J,K-1) - DC10(I,J,K)                 
              DC20(I,J,K) = DC30(I+10,J,K) + DD10(I,J,K,IT2)            
              IF ( DC30(I,J,K) .GT. DC20(I,J,K) ) THEN                  
                LD30(I,J,K) = .TRUE.                                    
              ENDIF                                                     
 50         CONTINUE                                                    
          DB10(I,J) = DB30(I,J) + DA10(J+1)                             
          DB20(I,J) = DB30(I,J) + DA20(J+2)                             
 40     CONTINUE                                                        
        DA10(I) = DA30(I) + DA40(I)                                     
        DA20(I) = DMAX1( DA30(I),DA40(I) )                              
        DX = DA10(I) - DA20(I)                                          
        IF ( DX .GT. 3.0D0 ) THEN                                       
          LD10(I) = .TRUE.                                              
        ENDIF                                                           
 30   CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,10)                            
      WRITE(6,*) ' (DA20) ',(DA20(K),K=1,10)                            
      do j=1,10
      WRITE(6,*) ' (DB10) ',(DB10(I,J),I=1,10)
      WRITE(6,*) ' (DB20) ',(DB20(I,J),I=1,10)
      WRITE(6,*) ' (DB30) ',(DB30(I,J),I=1,10)
      do k=10,20
      WRITE(6,*) ' (DC20) ',(DC20(I,J,K),I=1,10)
      WRITE(6,*) ' (DC30) ',(DC30(I,J,K),I=1,10)
      WRITE(6,*) ' (LD30) ',(LD30(I,J,K),I=1,10)
      enddo
      enddo
      DO 60 I1=11,20                                                    
       DO 70 I2=1,10                                                    
         DA30(I1) = DA30(I1) + DB10(I1,I2) + DA10(I2)                   
         DB20(I1,I2) = DC30(I1,10,I2) + DC10(10,I1,I2)                  
           DO 70 I3=2,I2                                                
             DC30(I1,10,I3) = DC20(I1,I2,I3) / 2.0D0                    
               DO 80 I4=I3,10                                           
                 DD10(I1-10,I2,I3,I4) =                                 
     *                   DD10(I1-10,I2,I3,I4) + DC20(I1,I2,I4)          
 80            CONTINUE                                                 
             DC20(I1,I2,I3) = DC30(I1,I2,I3) + DC10(10,I1,I3)           
 70    CONTINUE                                                         
       DA10(I1) = DA40(I1) + DA30(I1-1)                                 
 60   CONTINUE                                                          
      WRITE(6,*)   (DA10(K),K=11,20)                                    
      WRITE(6,*) ' (DA30) ',(DA30(K),K=11,20)                           
      do j=1,10
         WRITE(6,*) ' (DB20) ',(DB20(I,J),I=11,20)
         do k=1,10
            WRITE(6,*) ' (DC20) ',(DC20(I,J,K),I=11,20)
         enddo
      enddo
      do k=1,10
         WRITE(6,*) ' (DC30) ',(DC30(I,10,K),I=11,20)
      enddo
      STOP                                                              
      END                                                               



