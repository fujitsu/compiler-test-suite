      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-B,D,O-Z),LOGICAL*4(L),COMPLEX*16(C)            
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)            
      DIMENSION   CD10(20,20),CD20(20,20)                               

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     CD10,CD20/400*(-1.D0,2.D0),400*(3.D0,-2.D0)/             
      DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/                         
      DO 10 K=1,N3-1                                                    
       DO 10 I=N3,N5                                                    
        DO 10 J=2,N4                                                    
         DA10(I,J) = DA20(K,J-1)*DA30(I,J+1)                         
         DA20(I,J) = DA30(K,J-1)+DA10(N4,J-1)                           
         DA30(I,J) = DA10(K,J-1)-DA20(I,J)                         
  10  CONTINUE                                                          
      DO 20 I=N4,N2,-1                                                  
       DO 20 J=I,2,-1                                                   
        DO 20 K=N5,N2,-1                                                
         DB10(I,J,K) = DB20(N2,I+1,K-1)+DB30(I,J,K-N2+1)             
         DB20(I-N1,J,K) = DB10(N4,I+1,K) - DB30(N2-1,J,K)               
         DB30(I,J+N1-1,K) = DB20(I,J,K) * DB10(I,J,K-1)                 
  20  CONTINUE                                                          
      DO 30 I1=2,N4                                                     
       DO 30 I2=I1,2,-1                                                 
        DO 30 I3=I2,N5                                                  
         DX = DA10(I1,I2)+DIMAG(CD10(I1,I3))                            
         DY = DA20(I1,I3)*DIMAG(CD20(I1,I3))                            
         IF ( DX.GT.DY ) THEN                                           
           DZ = DX + DREAL(CD10(I1-1,I3))                               
         ELSE                                                           
           DZ = DY + DREAL(CD20(I1-1,I3))                               
         ENDIF                                                          
         CD10(I2,I3) = DCMPLX(DX,DMAX1(DZ,DY))                          
         CD20(I2,I3) = DCMPLX(DY,DMIN1(DX,DZ))                          
  30  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA30) ',((DA30(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (CD10) ',((CD10(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (CD20) ',((CD20(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB20) ',(((DB20(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      WRITE(6,*) ' (DB30) ',(((DB30(K1,K2,K3),K1=1,10),K2=1,10)         
     1                         ,K3=1,5)                                 
      STOP                                                              
      END                                                               
