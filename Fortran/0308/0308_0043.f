      PARAMETER (J=5,JJJ=J*J*J)                                         
      INTEGER*4 I04A(5,5,5),I04B(5,5,5),I,N,I1,I2,I3,H,L,K1,K2,K3       
      REAL*4    R04A(5,5,5)                                             
      DATA (((R04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*1.0/           
      DATA (((I04A(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJJ*0/             
      DATA (((I04B(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/25*0,0,4*1,0,4*1   
     .         ,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1   
     .         ,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1,0,4*1/  

      CALL SUB(I,N,L)                                                   
      DO 10 H=1,L                                                       
         I04A(I:N,1:5,I:N)=INT(R04A(I:N,1:5,I:N))                       
         DO 10 K1=1,5                                                   
           DO 10 K2=1,5                                                 
             DO 10 K3=1,5                                               
   10          IF(I04A(K1,K2,K3) .NE. I04B(K1,K2,K3)) GOTO 20           

      WRITE(6,*) 'OK' 
      GOTO 30                                                           

   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'I04A=',I04A                                           

   30 STOP                                                              
      END                                                               

      SUBROUTINE SUB(I,N,L)                                             
      INTEGER*4 I,N,L                                                   

      I=2                                                               
      N=5                                                               
      L=10                                                              

      RETURN                                                            
      END                                                               
