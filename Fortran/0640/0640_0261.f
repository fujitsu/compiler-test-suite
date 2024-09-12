      PROGRAM MAIN                                                   
      IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)                         
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),                  
     *            DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)          
      DIMENSION   CD10(20,20),CD20(20,20),CD30(20,20)                   
      PARAMETER  (JC5=20)                                               

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/            
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/          
      DATA     CD10,CD20/400*(-1.D0,2.D0),400*(3.D0,-2.D0)/             
      DATA     CD30/400*(2.D0,0.1D0)/                                   
      DATA     NN/15/                                                   
      DO 10 I=1,JC5                                                     
        CD20(I,20) = (1.D0,2.D0)                                        
       DO 20 J=1,JC5                                                    
         CD10(I,J) = CD20(I,J)-CD30(I,J)                                
         DO 30 K=1,NN                                                   
          DO 40 L=1,NN                                                  
            DB10(J,K,L) = DB20(J,K,L+1)+DB30(J,K+1,L+1)                 
            DB20(J,K,L) = DIMAG(CD30(K,L))-DB30(I,J,K)                  
  40      CONTINUE                                                      
          CD30(1,1) = CD30(1,1)+CD20(I,J)                               
  30     CONTINUE                                                       
         DA10(I,J) = DA20(I,J)/DA30(I,J)                                
  20   CONTINUE                                                         
       DA20(1,1) = DA20(1,1)+DA10(I,1)                                  
  10  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA20) ',DA20(1,1)                                   
      WRITE(6,*) ' (CD10) ',((CD10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD20) ',(CD20(I,20),I=1,20)                         
      WRITE(6,*) ' (CD30) ',CD30(1,1)                                   
      WRITE(6,*) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      DO 50 I1=1,NN                                                     
       DO 50 I2=1,NN                                                    
        DX = DIMAG(CD20(I1+1,I2))                                       
        DY = DREAL(CD30(I1,I2+1))                                       
        DO 60 I3=1,JC5                                                  
         CD10(I2,I3)= DCMPLX(DX,DY)                                     
         DO 70 I4=1,JC5                                                 
           DB30(I2,I4,I3)=DB20(I2+1,I4,I3)-DA20(I4,I3)                  
           DB10(I4,I3,I2)=DB30(I2+1,I4,I3)+DA30(I4,I3)                  
  70     CONTINUE                                                       
         DA20(I1,I3)=DIMAG(CD10(I2,I3))-DA10(I1,I3)                     
  60    DA30(1,I3) = DREAL(CD10(I1,I3))-DA10(I2,I3)                     
  50  CONTINUE                                                          
      WRITE(6,*) ' (CD10) ',((CD10(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)             
      WRITE(6,*) ' (DA30) ',(DA20(1,K2),K2=1,10)                        
      WRITE(6,*) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10),        
     *                         K3=1,10)                                 
      WRITE(6,*) ' (DB30) ',(((DB30(K1,K2,K3),K1=1,10),K2=1,10),        
     *                         K3=1,10)                                 
      STOP                                                              
      END                                                               
