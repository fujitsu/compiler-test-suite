      DOUBLE PRECISION A,B,C,S,T,U,DIF
      DIMENSION D(5),E(5,5,5),A(20),B(20)
      DOUBLE PRECISION D,E
      DOUBLE PRECISION F(5) ,N(5,5,5)
      DOUBLE PRECISION FUN
      COMPLEX G,H,L,K,Y,Z
      DIMENSION P(10),Q(5,5,5),Y(40),Z(40)
      COMPLEX P,Q
      COMPLEX J(10,10),R(5,5,5)
      COMPLEX FUNC
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0 12X,4H*OK*10X,2H( I2,2H ))
C
  104 FORMAT(1H0,8X,15H*ERROR* *ERROR*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0 12X,11H*OK*   *OK*3X,2H( I2,2H ))
C
  106 FORMAT(1H0,8X,15H*ERROR*    *OK*,3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  107 FORMAT(1H0,11X,12H*OK* *ERROR*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  108 FORMAT(1H0,11X,12HREAL    IMAG,6X,3(13X,4HREAL,10X,4HIMAG)//)

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
      G   =(3.8,4.7)
      H   =(-6.8,3.9)
      L   =(4.4,-1.3)
      K   =(0.0,0.0)
      P(1)=(-99.9,99.9)
      P(5)=(4.7,-6.9)
      Q(1,1,1)=(0.1,0.1)
      Q(2,2,2)=(2.2,2.2)
      Q(3,3,3)=(99.0,12.0)
      J(1,1)  =(1.7E2,1.7E2)
      J(4,5)  =(0.0,1.4)
      R(4,4,4)=(-199.4,-199.4)
      R(1,2,3)=(-3.9,0.0)
      R(5,4,3)=(34.5,34.5)
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
      Y(21)=G
      Z(21)=(3.8,4.7)
      Y(22)=H
      Z(22)=(-6.8,3.9)
      Y(23)=L
      Z(23)=(4.4,-1.3)
      Y(24)=K
      Z(24)=(0.0,0.0)
      Y(25)=P(1)
      Z(25)=(-99.9,99.9)
      Y(26)=P(5)
      Z(26)=(4.7  ,-6.9)
      Y(27)=Q(1,1,1)
      Z(27)=(0.1,0.1)
      Y(28)=Q(2,2,2)
      Z(28)=(2.2,2.2)
      Y(29)=Q(3,3,3)
      Z(29)=(99.0,12.0)
      Y(30)=J(1,1)
      Z(30)=(1.7E2,1.7E2)
      Y(31)=J(4,5)
      Z(31)=(0.0,1.4)
      Y(32)=R(4,4,4)
      Z(32)=(-199.4,-199.4)
      Y(33)=R(1,2,3)
      Z(33)=(-3.9,0.0)
      Y(34)=R(5,4,3)
      Z(34)=(34.5,34.5)
      Y(35)=G+H
      Z(35)=(-3.0,8.6)
      Y(36)=G-L
      Z(36)=(-0.6,6.0)
      Y(37)=P(1)*Q(1,1,1)
      Z(37)=(-19.98,0.0)
      Y(38)=P(1)/Q(1,1,1)
      Z(38)=(0.0   ,998.9995)
      Y(39)=FUNC(G,H)
      Z(39)=(-43.27,-16.24)
      Y(40)=FUNC(G,H)-R(1,2,3)
      Z(40)=(-39.37,-16.24)
      DO 10 I=1,20
      DIF=A(I)-B(I)
      IF(B(I))1,2,1
    1 IF(DABS(DIF)-1.0D-15*DABS(B(I)))700,700,701
    2 IF(DABS(DIF)-1.0D-15)700,700,701
  700 WRITE(6,103)I
C
      GO TO 10
  701 WRITE(6,102)I,A(I),B(I),DIF
   10 CONTINUE
      I=21
      M=27
C
  800 DO 20 I=I,M
      RL  =REAL(Z(I))
      AG  =AIMAG(Z(I))
      DIFR=REAL(Y(I))-RL
      DIFI=AIMAG(Y(I))-AG
      IF(RL)7,8,7
    7 IF(ABS(DIFR)-1.0E-5*ABS(RL))702,703,703
    8 IF(ABS(DIFR)-1.0E-5)702,703,703
  702 IF(AG)3,4,3
    3 IF(ABS(DIFI)-1.0E-5*ABS(AG))704,705,705
    4 IF(ABS(DIFI)-1.0E-5)704,705,705
  703 IF(AG)5,6,5
    5 IF(ABS(DIFI)-1.0E-5*ABS(AG))706,707,707
    6 IF(ABS(DIFI)-1.0E-5)706,707,707
  704 WRITE(6,105)I
C
      GO TO 20
  705 WRITE(6,107)I,Y(I),Z(I),DIFR,DIFI
      GO TO 20
  706 WRITE(6,106)I,Y(I),Z(I),DIFR,DIFI
      GO TO 20
  707 WRITE(6,104)I,Y(I),Z(I),DIFR,DIFI
   20 CONTINUE
      IF(M-40)708,709,709
  708 I=28
      M=40
C
      GO TO 800
  709 CONTINUE
      STOP
      END
      DOUBLE PRECISION FUNCTION FUN(S,T)
      DOUBLE PRECISION S,T
      FUN=S*3.4D1+T-99.9D1/33.3D1
      RETURN
      END
      COMPLEX FUNCTION FUNC(G,H)
      COMPLEX G,H
      FUNC=G*H+(1.1,1.1)-(0.2,0.2)
      RETURN
      END
