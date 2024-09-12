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
      DATA     NN/14/,N1/4/                                             

      DO 10 I1=2,N1                                                     
       DX = DIMAG(CD10(I1,1))+DREAL(CD20(I1,NN))                        
       DY = DREAL(CD10(I1,NN))+DIMAG(CD30(I1,NN))                       
       DZ = DMAX1(DX,DY)                                                
       DX = DSQRT(DZ)                                                   
       NX = I1                                                          
       DO 20 I2=2,NN                                                    
         NX=NX+1                                                        
         DA10(NX,I2)=DA20(I1,I1+1)-DA30(I2+1,I1-1)                      
         CD10(I1,NX)=DCMPLX(DX,DY)                                      
         DO 30 I3=2,NN,2                                                
           DB30(I1,I2,I3)=DB10(I1,I2,I3-1)-DA30(I1,I2)                  
           DB20(I1,I2,I3)=DB20(I1,I2,3)+DREAL(CD20(I1,I3))              
           DB10(I1,I2,I3)=DB30(I1,I2,5)*DA10(I3,1)                      
  30     CONTINUE                                                       
         DA20(NX,I1)=DA30(I2,I1)-DA10(NX,I2)                            
  20   CONTINUE                                                         
  10  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA20) ',((DA20(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD10) ',(CD10(I,1),I=1,10)                          
      WRITE(6,*) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)      
      DO 50 J1=1,JC5                                                    
       DO 50 J2=1,JC5                                                   
        DA30(J1,J2)=DIMAG(CD10(J1,J2))-DA20(J1,J2)                      
        IF ( DA30(J1,J2).GT.5.D0 ) DA10(J1,J2)=DIMAG(CD30(J1,J2))       
        DO 40 J3=1,NN                                                   
         DB10(J1,J2,J1)=DB20(J1,J2,J2)+DB30(J1,J2,J3)                   
         DB20(J1,J2,J2)=DB10(J1,J2,J1)*DB30(J1,J2,J3)                   
  40    CONTINUE                                                        
        DB30(J1,J2,1) = DREAL(CD20(J1,J2))-DA30(J1,J2)                  
  50  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA30) ',((DA30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',((DB30(I,J,1),I=1,10),J=1,10)               
      STOP                                                              
      END                                                               
