      PARAMETER (J=5,JJJ=J*J*J)                                         
      INTEGER*4 I04A(5,5,5),I04B(5,5,5),I,N,I1,I2,I3,K,L,M              
      REAL*4    R04A(5,5,5)                                             
      DATA (((R04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*1.0/           
      DATA (((I04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*0/             
      DATA (((I04B(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/25*0,0,4*1,0,4*1   
     .         ,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1   
     .         ,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1/  
      DATA    I,N/2,5/                                                  

      I04A(I:N,1:5,I:N)=INT(R04A(I:N,1:5,I:N))                          

      DO 10 K=1,5                                                       
        DO 10 L=1,5                                                     
          DO 10 M=1,5                                                   
   10       IF(I04A(K,L,M) .NE. I04B(K,L,M)) GOTO 20                    

      WRITE(6,*) 'OK'
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'I04A=',I04A                                           

   30 STOP                                                              
      END                                                               
