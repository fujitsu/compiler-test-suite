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
      DO 10 I1=2,NN                                                     
        DA10(I1,1) = DA20(I1+1,NN)-DIMAG(CD20(NN,I1+1))                 
        DO 20 I2=2,NN                                                   
          DA20(I1,I2) = DA20(I2,I1) - DIMAG(CD20(I2+1,I1-1))            
          DO 30 I3=2,NN                                                 
            DB10(I1,I3,I1) = DB20(I3-1,I2,I1)  + DA30(NN,I2)            
            DB20(I3,I2,I1) = DB10(I1+1,I3,I1-1)-DA20(2,I2)              
  30      CONTINUE                                                      
          DA30(I1,I2) = DA30(I2,I1) * DB10(I1,I2,I1-1)                  
          CD20(I2,I1) = CD10(I1+1,I2-1) - CD30(I1,I2)                   
  20    CONTINUE                                                        
        CD10(I1,1) = CD20(NN,I1)/(2.D0,2.D0)                            
  10  CONTINUE                                                          
      WRITE(6,*) ' (DA10) ',((DA10(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA20) ',DA20(1,1)                                   
      WRITE(6,*) ' (DA30) ',((DA30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD10) ',(CD10(I,1),I=1,10)                          
      WRITE(6,*) ' (CD20) ',((CD20(I,J),I=1,20),J=1,10)                 
      WRITE(6,*) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      DO 50 J1=2,NN                                                     
        DX = DA20(J1,1)/2.D0                                            
        DY = DA10(J1,1)-DA30(J1,1)                                      
        CD10(J1,NN) = DCMPLX(DX,DY)                                     
        DO 60 J2=2,J1                                                   
          CD20(J2,J1) = CD30(J1,J1)-CD10(J2,NN)                         
          DO 70 J3=2,J2-1                                               
           DB30(J3,J2,J1) = DB20(J2,J2,J1)  * DB10(J3,J2,J1)            
           DB20(J3,J2,J1) = DB30(J3,J1,J1+1)- DB10(J3,J2,J1)            
 70       CONTINUE                                                      
          CD30(J2,J1) = CD20(J2-1,J1)                                   
 60     CONTINUE                                                        
        DA10(J1,1) = DMIN1(DA20(J1,1),DA20(J1,1))                       
 50   CONTINUE                                                          
      WRITE(6,*) ' (CD10) ',(CD10(I,15),I=1,10)                         
      WRITE(6,*) ' (CD20) ',((CD20(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (CD30) ',((CD30(I,J),I=1,10),J=1,10)                 
      WRITE(6,*) ' (DA10) ',(DA10(I,1),I=1,15)                          
      WRITE(6,*) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)      
      WRITE(6,*) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)      
      STOP                                                              
      END                                                               
