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
      DATA     NN/14/,N1/1/,N2/2/                                       

      DO 10 I1=1,NN                                                     
       DO 20 I2=1,NN                                                    
         DA10(I1,I2) = DA20(I1,I2+N1)+DA30(N1+I1,I2)                    
         DA20(I1,I2) = DA10(I1+N1,I2)-DREAL(CD10(I1,I2+N1))             
         DO 30 I3=1,NN                                                  
           DB30(I1,I2,I3)=DB10(I1,I2,I3+N2)+DB20(I1,I2+N1,I3)           
           DB20(I1,I2,I3)=DB10(I1,I2,I3+N2)+DB30(I1,I2+N1,I3)           
           DB10(I1,I2,N1)=DB10(I1,I2,N1)+DIMAG(CD10(I3,I2))             
  30     CONTINUE                                                       
         DA30(I1,I2)=DB30(I1,I2,1)-DB20(I1,I2,NN+N1)                    
  20   CONTINUE                                                         
  10  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA20) ',((DA20(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA30) ',((DA30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DB10) ',((DB10(I,J,1),I=1,10),J=1,10)               
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)      

      DO 50 J1=2,NN                                                     
         CD10(J1,NN) = DCMPLX(DA30(J1,NN),DA30(NN,J1))                  
        DO 60 J2=1,J1                                                   
          DX = DREAL(CD10(J1,J2))+DA10(J1,J2)                           
          DY = DIMAG(CD10(J1,J2))+DA20(J1,J2)                           
          DZ = DMIN1(DX,DY)                                             
          CD20(J1,J2) = DCMPLX(DX,DZ)                                   
          DO 70 J3=J2+1,NN                                              
            CD30(J2,J3) = CD10(J3,1)-CD20(J1,J2)                        
            DX = DREAL(CD30(J2,J3))                                     
            DY = DIMAG(CD30(J2,J3))                                     
            DB10(J1,J2,J3) = DB20(J1,J2,J3+N1) -DX                      
            DB20(J1,J2,J3) = DB10(J1,J2,J3-N1)-DY                       
  70      CONTINUE                                                      
          IF ( DIMAG(CD20(J1,J2)).LT.1.D0 ) GOTO 60                     
          DZ = DMAX1(DA20(J1,J2),DA20(J2,J1))                           
          DA10(J1,J2) = DZ - DIMAG(CD20(J1,J2))                         
  60    CONTINUE                                                        
  50  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD10) ',(CD10(I,NN),I=1,20)                         
      WRITE(6,*) ' (CD20) ',((CD20(I,J),I=1,20),J=1,10)                 
      WRITE(6,*) ' (CD30) ',((CD30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)      
      STOP                                                              
      END                                                               
