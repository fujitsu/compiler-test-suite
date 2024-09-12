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
      DATA     NN/14/,N1/1/                                             
      DO 10 I1=1,NN                                                     
       IL1=I1+N1+1                                                      
       IL2=I1-N1+1                                                      
       DO 20 I2=2,NN                                                    
         DA10(IL1,I2)= DREAL(CD30(I1,I2+1))                             
         DA20(IL1,I2)= DIMAG(CD30(I1+1,I2))                             
         DO 30 I3=2,NN                                                  
          DO 30 I4=2,NN                                                 
            DB10(I2,I3,I4)= DB30(I2,I3,I4)-DA20(IL2,I4)                 
            DB20(I2,I3,I4)= DB30(I2,I3,I4)-DA10(IL2,I4)                 
  30     CONTINUE                                                       
         DA30(IL1,I2)=DB10(I2,I3,2)                                     
         DX = DIMAG(CD10(I1,I2))+DA10(IL1,I2+1)                         
         DY = DREAL(CD20(I1,I2))+DA20(IL1,I2-1)                         
         IF ( DX-DY ) 20,21,22                                          
  22       CD30(I1,I2) = DCMPLX(DX,DY)                                  
         GOTO 20                                                        
  21     DA30(IL1,I2)= DMIN1(DX,DY)                                     
  20   CONTINUE                                                         
  10  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA20) ',((DA20(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA30) ',((DA30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD30) ',((CD30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      DO 50 J1=2,NN                                                     
        DX = DIMAG(CD10(J1,NN))-DA10(J1,NN)                             
        DY = DREAL(CD20(J1,NN))-DA20(J1,NN)                             
        IF ( DX.GT.DY ) THEN                                            
          DZ = DREAL(CD30(J1,NN))                                       
        ELSE                                                            
          DZ = DIMAG(CD30(J1,NN))                                       
        ENDIF                                                           
        DO 60 J2=2,NN                                                   
          CD10(J1,J2) = DCMPLX(DX,DY)                                   
          CD20(J1,J2) = DCMPLX(DY,DZ)                                   
          DA10(J1-1,J2)= DMIN1(DX,DY)+DZ                                
          IF ( DA10(J1,J2).GT.DA30(J1,J2) ) DZ = 0.D0                   
          CD30(J1,J2) = DCMPLX(DZ,DX)                                   
          DO 70 J3=2,NN                                                 
            DB10(J1,J2,J3) = DB20(J1,J2,J3)-DX*DA10(J1,J3)              
            DB20(J1,J2,J3) = DB30(J1,J2,J3)-DY*DA20(J1-1,J3)            
            DB30(J1,J2,J3) = DB10(J1,J2,J3)-DZ*DA30(J1+1,J3)            
  70      CONTINUE                                                      
          DA20(J1,J2) = DMAX1(DA20(J1,J2+1),DX)                         
          DA30(J1,J2) = DMAX1(DA30(J1,J2+1),DY)                         
  60    CONTINUE                                                        
  50  CONTINUE                                                          
      WRITE(6,*) ' (DA20) ',((DA20(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA30) ',((DA30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD10) ',((CD10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD20) ',((CD20(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD30) ',((CD30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)      
      STOP                                                              
      END                                                               
