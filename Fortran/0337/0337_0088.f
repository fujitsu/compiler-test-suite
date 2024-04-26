      INTEGER Y,Z
      DIMENSION ARRAY(2),X(17),M(17)
      E(C)=1.0+C-C
      F(C)=(C**2+EXP(SIN(C-1.0)))/SQRT(4.0*C)
C
      ARRAY(1)=-0.5
      ARRAY(2)=0.01
      N=1
      ITEM=1
      J=1
      P=1.0
      ISW=1
C
  100 GO TO (1,2,3,4,5,6),ISW
    1 X(1)=2.0
      X(2)=-2.0
      Y=MAX1(2.0,-2.0)
      ISW=2
      GO TO 110
    2 X(1)=ARRAY(1)
      X(2)=ARRAY(2)
      Y=MAX1(ARRAY(1),ARRAY(2))
      ISW=3
      GO TO 110
    3 X(1)=((P**2-2.0)*6.0+1.0)/10.0
      X(2)=(ARRAY(1)*(-10.0)+5.0*P)/1000.0
      Y=MAX1(((P**2-2.0)*6.0+1.0)/10.0,(ARRAY(1)*(-10.0)+5.0*P)/1000.0)
      ISW=4
      GO TO 110
    4 X(1)=ABS(P-2.0)*(-0.5)
      X(2)=FLOAT(2*J**2-IFIX(10.0/3.0)+2)/100.0
      Y=MAX1(ABS(P-2.0)*(-0.5),FLOAT(2*J**2-IFIX(10.0/3.0)+2)/100.0)
      ISW=5
      GO TO 110
    5 X(1)=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      X(2)=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      Y=MAX1((EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0,(ALOG(P**2-1.0*SQRT(4.0
     1       *P)+2.0)+P)/100.0)
      ISW=6
  110 M(1)=IFIX(X(1))
      M(2)=IFIX(X(2))
      IF(Y-M(1))120,130,130
  120 Z=M(1)
      GO TO 140
  130 IF(Y-M(2))150,160,160
  150 Z=M(2)
  140 WRITE(6,13)X(1),X(2),Y,Z
   13 FORMAT(1H ,8X,7H*ERROR*,23X,2(E14.7,4X),19X,I6,18X,I6)
      GO TO 100
  160 WRITE(6,14)
   14 FORMAT(1H ,8X,4H*OK*)
      GO TO 100
    6 ITEM=2
      WRITE(6,15)ITEM
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X(1)=-32767.0
      X(2)=-1234.0
      X(3)=0.0
      X(4)=1234.0
      X(5)=32767.0
      Y=MAX1(-32767.0,-1234.0,0.0,1234.0,32767.0)
      DO 170 I=1,5
      M(I)=IFIX(X(I))
      IF(Y.LT.M(I)) GO TO 180
  170 CONTINUE
      WRITE(6,16)
   16 FORMAT(1H ,8X,4H*OK*)
      GO TO 190
  180 Z=M(I)
      WRITE(6,17)(X(I),I=1,3),Y,Z,X(4),X(5)
   17 FORMAT(1H ,8X,7H*ERROR*,14X,3(E14.7,3X),12X,I6,18X,I6
     *       /30X,2(E14.7,3X))
  190 ITEM=3
      N=N+1
      WRITE(6,18)
   18 FORMAT(1H1 / )
C
      L=0
      K=-10
  200 A=FLOAT(K)
      X(1)=2.0*A-3.0
      X(2)=A
      X(3)=(-1.0)**K*A-3.0*A
      X(4)=80.0/(A+11.0)+1.0
      X(5)=10.0-A
      X(6)=7.0+A-3.0*A
      X(7)=A-7.0+(-2.0)*A
      X(8)=3.0*A+9.0
      X(9)=-A-2.0
      Y=MAX1(X(1),X(2),X(3),X(4),X(5),X(6),X(7),X(8),X(9))
      DO 210 I=1,9
      M(I)=IFIX(X(I))
      IF(Y-M(I))220,210,210
  210 CONTINUE
      WRITE(6,19)
   19 FORMAT(1H ,8X,4H*OK*)

   20 FORMAT(1H ,29X,3(E14.7,3X)/30X,3(E14.7,3X))
      GO TO 230
  220 Z=M(I)
      WRITE(6,21)(X(I),I=1,3),Y,Z
   21 FORMAT(1H ,8X,7H*ERROR*,14X,3(E14.7,3X),12X,I6,18X,I6)
      WRITE(6,20)(X(I),I=4,9)
  230 K=K+1
      L=L+3
      IF(MOD(L,3))300,310,300
  310 WRITE(6,24)
   24 FORMAT(1H )
  300 IF(L-39)240,250,250
  240 IF(K-10)200,200,260
  250 N=N+1
      WRITE(6,18)
C
      L=0
      GO TO 200
  260 ITEM=4
      N=N+1
      WRITE(6,18)
C
      X(1)=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      X(2)=F(P)*ARRAY(1)
      X(3)=EXP(ALOG(F(P**2)))/100.0-P*0.02
      X(4)=F(ARRAY(2)*100.0)/100.0
      X(5)=-3.2768
      X(6)=3.2768
      X(7)=0.0
      X(8)=-15.0
      X(9)=-1000.0
      X(10)=-1970.0
      X(11)=2345.0
      X(12)=1970.0
      X(13)=-32.9
      X(14)=-6.059
      X(15)=9999.0
      X(16)=-9999.0
      X(17)=87.0
      Y=MAX1(SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5,F(P)*ARRAY(1),
     1EXP(ALOG(F(P**2)))/100.0-P*0.02,F(ARRAY(2)*100.0)/100.0,-3.2768,
     23.2768,0.0,-15.0,-1000.0,-1970.0,2345.0,1970.0,-32.9,-6.059,
     39999.0,-9999.0,87.0)
      DO 270 I=1,17
      M(I)=IFIX(X(I))
      IF(Y-M(I))280,270,270
  270 CONTINUE
      WRITE(6,19)

   23 FORMAT(1H ,29X,3(E14.7,3X)
     *        /  30X,3(E14.7,3X)
     *        /  30X,3(E14.7,3X)
     *        /  30X,3(E14.7,3X)
     *        /  30X,2(E14.7,3X))
      GO TO 290
  280 Z=M(I)
      WRITE(6,21)(X(I),I=1,3),Y,Z
      WRITE(6,23)(X(I),I=4,17)
  290 CONTINUE
      STOP
      END
