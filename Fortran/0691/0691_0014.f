      DOUBLE PRECISION A,B,C,S,T,U,DIF
      DIMENSION D(5),E(5,5,5),A(20),B(20)
      DOUBLE PRECISION D,E
      DOUBLE PRECISION F(5) ,N(5,5,5)
      DOUBLE PRECISION FUN
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED
     *9H RESULT -13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -/)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
 1031 FORMAT(1H0 12X,4H*OK*10X,2H( I2,2H ))
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      WRITE(6,101)
      T   =0.111111111111111D0
      U   =3.9393D70
      C   =-1.911911D-60
      S   =0.1D1
      D(1)=44444.4D4
      D(5)=33333.3D3
      E(1,1,1)=2.22222D2
      E(2,2,2)=1.11111D1
      E(5,5,5)=5.5555D5
      F(3)=6.6666D6
      F(4)=7.7777D7
      N(3,3,3)=8.8888D8
      N(1,2,3)=1.23456D7
      N(4,3,2)=4.3215D6
      A( 1)=T
      B( 1)=0.111111111111111D0
      A( 2)=U
      B( 2)=3.9393D70
      A( 3)=C
      B( 3)=-1.911911D-60
      A( 4)=D(1)
      B( 4)=44444.4D4
      A( 5)=D(5)
      B( 5)=33333.3D3
      A( 6)=E(1,1,1)
      B( 6)=2.22222D2
      A( 7)=E(2,2,2)
      B( 7)=1.11111D1
      A( 8)=E(5,5,5)
      B( 8)=5.5555D5
      A( 9)=F(3)
      B( 9)=6.6666D6
      A(10)=F(4)
      B(10)=7.7777D7
      A(11)=S
      B(11)=0.1D1
      A(12)=N(3,3,3)
      B(12)=8.8888D8
      A(13)=N(1,2,3)
      B(13)=1.23456D7
      A(14)=N(4,3,2)
      B(14)=4.3215D6
      A(15)=F(3)+N(4,3,2)
      B(15)=10.9881D6
      A(16)=E(2,2,2)-S
      B(16)=1.01111D1
      A(17)=S*C
      B(17)=-1.911911D-60
      A(18)=U/S
      B(18)=3.9393D70
      A(19)=FUN(S,T)
      B(19)=0.31111111111111111D2
      A(20)=FUN(S,T)+2.4D1
      B(20)=0.55111111111111111D2
      DO 10 I=1,20
      DIF=A(I)-B(I)
      IF(B(I))1,2,1
    1 IF(DABS(DIF)-1.0D-15*DABS(B(I)))700,700,701
    2 IF(DABS(DIF)-1.0D-15)700,700,701
  700 CONTINUE
      WRITE(6,1031)I
      GO TO 10
  701 WRITE(6,102)I,A(I),B(I),DIF
   10 CONTINUE
  709 WRITE(6,999)
      STOP
      END
      DOUBLE PRECISION FUNCTION FUN(S,T)
      DOUBLE PRECISION S,T
      FUN=S*3.4D1+T-99.9D1/33.3D1
      RETURN
      END
