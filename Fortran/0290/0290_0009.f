      PARAMETER (J=2,JJJ=J*J*J)                                         
      INTEGER*4 I04A(2,2,2),I04B(2,2,2),I,N,I1,I2,I3,H,L                
      REAL*4    R04A(2,2,2)                                             
      DATA (((R04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*1.0/           
      DATA (((I04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*0/             
      DATA (((I04B(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*10/            
      DATA I,N,H,L/1,2,1,2/                                             

      I04A(I:N,1:2,H:L)=INT(R04A(I:N,1:2,H:L))                          

      WRITE(6,  *,ERR=200) I04A+I04B
      WRITE(6,*) 'R04A=',R04A                                           
      WRITE(6,*) '*** OK ***'                                 
      GOTO 300                                                          

  200 WRITE(6,*) '*** IS NG ?? ***'                                 

  300 STOP                                                              
      END                                                               
