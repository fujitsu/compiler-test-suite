      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)                                
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)            

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     N1/1/,N2/2/,N3/3/,N4/10/,N5/15/,NN/20/                   

      DO 10 II=1,5                                                      
       DO 10 K=2,N4                                                     
        DO 10 J=2,N5                                                    
         DO 10 I=2,N5                                                   
           DB10(K,J,I) = DB10(K,J+N3,I)*DB20(K+N4-1,N5,I)               
           DB20(K,J,I) = DB30(K,J-1,I)+DB10(K,K+1,I)                    
           DB30(K,J,I) = DA20(K,I)*DB10(K+N1+1,J+N2-1,I+II)             
  10  CONTINUE                                                          

      DO 20 I=N2,10                                                     
       DO 20 J=2,N4                                                     
        DO 20 K=2,NN-5                                                  
          DA10(I,K+N3) = DA30(I+N1,K) - DA20(I+10,J)                    
          DA20(I+N1,K) = DA20(I+N2+1,I) * DA30(I,K)                     
          DA30(I,K+N2) = DA10(N3,K) + DA10(I,K)                         
  20  CONTINUE                                                          

      DO 30 I1=3,15                                                     
       DO 30 II=1,N3                                                    
       DO 30 I2=3,15                                                    
        DO 30 I3=3,15                                                   
         DA20(I1+N1,I2) = DA20(I1+N1,I2) + DA10(I1,I3)                  
         DA10(I1,I3) = DA10(I1-N1+2,I3) * DA20(I1,I2+N1+1)              
         DB30(I2,I3+N2,I1) = DB30(I1,I2,I3)-DB20(I1-N2+1,I2,I3)         
         DB20(I1,I2,I3) = DB10(I3,I2,I1)-DB30(I2,I3,I1+1+N2)            
         DB10(I3,I1,I2+N3) = DA30(I1+N1,I3)*2.D0                        
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
