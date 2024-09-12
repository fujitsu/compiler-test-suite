      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)                                
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)            

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     N1/1/,N2/2/,N3/10/,NN/20/                                
      DO 10 I=1,NN                                                      
       DO 10 J=1,10,N1                                                  
        DO 10 K=1,N3                                                    
         DO 10 II=2,N3                                                  
          DB10(I,K,II) = DB20(I,J,II) * DB30(I,J+N1,II)                 
          DB20(I,1,II-1) = DB10(I,K,II) + DB20(I,J+1,II)                
          DB30(I,J,II) = DA20(I,II)*DA30(I,II)                          
  10  CONTINUE                                                          
      DO 20 I=1,N3                                                      
       DO 20 J=I,NN                                                     
        DO 20 K=J,N3                                                    
          DA10(I,K) = DA20(I,K) * DA10(1,J)                             
          DA30(I,K) = DA30(N3,N3) + DA10(I,J)                           
  20  CONTINUE                                                          
      DO 30 I1=N2,N3                                                    
       DO 30 I2=2,N3+1                                                  
        DO 30 I3=2,N3                                                   
         DA20(I1,I1) = DA20(I1,I1) + DA10(I1,I3)                        
         DA10(I1,I3) = DA10(I2,I3+N3) * DA20(I1+1,I2)                   
         DB30(I2,I3,I3) = DB30(I1,I3+1,I3)-DB20(I1,I2,I2+1)             
         DB20(I3,I2,I2) = DB10(I3,NN-I3,I1)-DB30(I2-1,I3,21-I3)         
         DB10(I3,I1,I2) = DA30(I1,I3)*2.D0                              
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
      STOP                                                              
      END                                                               
