      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)                                
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),LD10(20,20),      
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)            

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     LD10/400*.FALSE./                                        
      DATA     N1/1/,N2/2/,N3/10/,N4/15/,NN/20/                         
      DO 10 I=1,N3                                                      
       DO 10 J=1,10,N1                                                  
        DO 10 K=1,NN                                                    
         DO 10 II=1,N4,N2                                               
           DA10(K,II) = DA20(K,J+N1)*DA30(II,II)                        
           DB10(K,J,II) = DB20(K,N3,II) + DB30(K,I,II)                  
           DA20(K,J) = DB10(K,J+N3,II+N2)-DB20(K,J,NN)                  
           DB20(K,J,II) = DA10(K,II) + DA30(I,J)                        
  10  CONTINUE                                                          
      DO 20 I=1,N3                                                      
       DO 20 J=I,N3                                                     
        DO 20 K=J,N3                                                    
          DA30(I,K) = DA30(K,I) + DA10(I,K)                             
          DB30(I,J,K) = DB30(K,N3,I)*DB20(I,J,K)                        
  20  CONTINUE                                                          
      DO 30 I1=N2,N3                                                    
       DO 30 I2=2,15,N2                                                 
        DO 30 I3=2,N3,N2                                                
          DX = DMAX1(DA10(I2,I3),DB10(I1,I2,I3))                        
          DY = DMAX1(DA20(I1,I3),DB20(I1,I2,I3))                        
          IF ( DX.GT.DY ) THEN                                          
            LD10(I2,I3) = .TRUE.                                        
            DB10(I1+N2,I2,I3) = DX                                      
          ELSE                                                          
            LD10(I1,I3) = .NOT.LD10(I3,I3)                              
            DB20(I1,I2+N2,I3) = DX                                      
          ENDIF                                                         
  30   CONTINUE                                                         
      WRITE(6,*) ' (DA10) ',((DA10(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA30) ',((DA30(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB20) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,5)          
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB30) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,5)          
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (LD10) ',((DA30(K1,K2),K1=1,20),K2=1,20)             
      STOP                                                              
      END                                                               
