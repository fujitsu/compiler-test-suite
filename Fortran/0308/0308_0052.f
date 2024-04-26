      PARAMETER (J=2,JJJ=J*J*J)                                         
      INTEGER*4 I04A(2,2,2),I04B(2,2,2),I1,I2,I3,H,L                    
      REAL*4    R04A(2,2,2)                                             
      DATA (((R04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*1.0/           
      DATA (((I04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*0/             
      DATA (((I04B(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*10/            
      DATA H,L/1,2/                                                 

      I04A(:,1:2,H:L)=INT(R04A(:,1:2,H:L))                              

      DO 1 I1=1,2
      DO 2 I2=1,2
      DO 3 I3=1,2
        IF (I04A(I1,I2,I3)+I04B(I1,I2,I3).NE.11) 
     1  WRITE(6,*) 'NG I04A+I04B',I04A(I1,I2,I3)+I04B(I1,I2,I3)
        IF (ABS(R04A(I1,I2,I3)-1.00000000)>1.0E-6)
     1  WRITE(6,*) 'NG R04A',R04A(I1,I2,I3)
    3 CONTINUE
    2 CONTINUE
    1 CONTINUE
      WRITE(6,*) 'OK'
      GOTO 300                                                          

  200 WRITE(6,*) 'NG'

  300 STOP                                                              
      END                                                               
