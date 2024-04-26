      PARAMETER (J1=3,JJJ1=J1*J1*J1)   
      PARAMETER (J2=10,JJ2=J2*J2)
      REAL*4 RA(3,3,3),RB(3,3,3),RC(10,10,10)
      COMPLEX*8 CA(3,3,3),CB(3,3,3)
      INTEGER*4 N
      DATA (((RA(I1,I2,I3),I1=1,J1),I2=1,J1),I3=1,J1)/JJJ1*0.0/
      DATA (((CA(I1,I2,I3),I1=1,J1),I2=1,J1),I3=1,J1)/JJJ1*(0.0,0.0)/
      DATA (((CB(I1,I2,I3),I1=1,J1),I2=1,J1),I3=1,J1)/JJJ1*(0.0,0.0)/
      DATA (((RB(I1,I2,I3),I1=1,J1),I2=1,J1),I3=1,J1)/J1*1.0,J1*0.0
     .            ,J1*1.0,J1*2.0,J1*0.0,J1*2.0,J1*3.0,J1*0.0,J1*3.0/
      DATA (((RC(I1,I2,I3),I1=1,J2),I2=1,J2),I3=1,J2)/JJ2*1.0,JJ2*2.0
     .,JJ2*3.0,JJ2*4.0,JJ2*5.0,JJ2*6.0,JJ2*7.0,JJ2*8.0,JJ2*9.0,JJ2*10.0/

      N=3
      CB(1:3,1:3:2,:)=SIN(CMPLX(RC(1:3,3:6:3,1:3)))

      CALL SUB(RA,CA,N)

      DO 10 K1=1,3
        DO 10 K2=1,3
          DO 10 K3=1,3
            IF(RA(K1,K2,K3) .NE. RB(K1,K2,K3)) GOTO 20                  
   10       IF(CA(K1,K2,K3) .NE. CB(K1,K2,K3)) GOTO 30                  

      WRITE(6,*) 'OK'                             
      GOTO 40                                                           

   20 WRITE(6,*) 'NG'                        
      WRITE(6,*) 'RA=',RA                                               
      WRITE(6,*) 'N=',N                                                 
      GOTO 40                                                           

   30 WRITE(6,*) 'NG'                        
      WRITE(6,*) 'CA=',CA                                               
      WRITE(6,*) 'CB=',CB                                               
      WRITE(6,*) 'N=',N                                                 
      GOTO 40                                                           

   40 STOP                                                              
      END                                                               
      SUBROUTINE SUB(RA,CA,N)                                           
      PARAMETER (J=10,JJ=J*J)
      INTEGER*4 H,I,K,L,I1,I2,I3,N
      REAL*4 RA(N,N,N),RB(10,10,10)
      COMPLEX*8 CA(N,N,N)
      DATA (((RB(I1,I2,I3),I1=1,J),I2=1,J),I3=1,J)/JJ*1.0,JJ*2.0,JJ*3.0
     .               ,JJ*4.0,JJ*5.0,JJ*6.0,JJ*7.0,JJ*8.0,JJ*9.0,JJ*10.0/

      H=1                                                               
      I=3                                                               
      L=1                                                               
      K=3                                                               
      RA(H:I,1:3:2,:)=RB(H:I,3:6:3,1:3)                                 
      CA(L:K,1:3:2,:)=SIN(CMPLX(RB(L:K,3:6:3,1:3)))                     

      RETURN                                                            
      END                                                               

