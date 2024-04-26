      DIMENSION ARRAY(2,2)
      E(P)=1.0+P-P
      F(P)=(P**2+EXP(SIN(P-1.0)))/SQRT(4.0*P)
      DIFF=1.0E-5
      P=1.0
      J=1
      N=0
      ITEM=1
      ISW=1
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
      X1=10.0
  100 K=-150
  101 N=N+1
      IF(N-1)110,120,110
  110 CONTINUE
C
   12 FORMAT(1H1 / )
  120 CONTINUE
C
   13 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       15HSIGN(X1,X2) -  ,5H*****,17X,9H( PAGE = ,I3,2H ),
     3       ///2X,11H- JUSTICE -,14X,13H- ARGUMENTS -,18X,
     4       19H- COMPUTED RESULT -,7X,17H- COMPARE VALUE -,10X,
     5       14H- DIFFERENCE -)
C
      L=0
  130 IF(K)140,150,140
  140 X2=FLOAT(K)/10.0
      Y=SIGN(X1,X2)
      IF(X2)160,160,170
  160 Z=(-1.0)*ABS(X1)
      GO TO 180
  170 Z=ABS(X1)
  180 CALL R2RTN(L,DIFF,X1,X2,Y,Z)
      L=L+1
  150 IF(K-150)190,200,200
  190 K=K+1
      IF(L-50)130,101,101
  200 GO TO (1,2,3,4,5,6,7,8,9,10,21,22,23),ISW
    1 X1=-10.0
      ISW=2
      ITEM=2
      GO TO 100
    2 X1=0.0
      X2=3.4
      ITEM=3
      ISW=3
      N=N+1
C
      L=0
  210 Y=SIGN(X1,X2)
      IF(X2)220,220,230
  220 Z=(-1.0)*ABS(X1)
      GO TO 240
  230 Z=ABS(X1)
  240 CALL R2RTN(L,DIFF,X1,X2,Y,Z)
      L=L+1
      GO TO 200
    3 ITEM=4
C
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X1=ARRAY(1,1)
      X2=ARRAY(1,2)
      ISW=4
      GO TO 210
    4 X1=ARRAY(2,1)
      X2=ARRAY(2,2)
      ISW=5
      GO TO 210
    5 X1=((P**2-2.0)*6.0+1.0)/10.0
      X2=(P**2+P*0.1-P/10.0)/(-100.0)
      ISW=6
      GO TO 210
    6 X1=(ARRAY(1,1)*(-10.0)+5.0*P)/1000.0
      X2=ARRAY(1,1)**2+(P/10.0)*2.0+ARRAY(2,2)/10.0
      ISW=7
      GO TO 210
    7 X1=ABS(P-2.0)*(-0.5)
      X2=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=8
      GO TO 210
    8 X1=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      X2=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)
      ISW=9
      GO TO 210
    9 X1=SIN(P-1.0)-SQRT(P**2/4.0)
      X2=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      ISW=10
      GO TO 210
   10 X1=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      X2=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      ISW=11
      GO TO 210
   21 X1=F(P)*ARRAY(1,1)
      X2=EXP(ALOG(F(P**2)))/100.0-P*0.02
      ISW=12
      GO TO 210
   22 X1=F(ARRAY(2,1)*100.0)/100.0
      X2=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*ARRAY(2,2)
      ISW=13
      GO TO 210
   23 CONTINUE
      STOP
      END
      SUBROUTINE R2RTN(L,D,X1,X2,Y,Z)
      IF (L)    120,110,100
  100 IF (L-10) 120,110,101
  101 IF (L-20) 120,110,102
  102 IF (L-30) 120,110,103
  103 IF (L-40) 120,110,120
  110 CONTINUE
C
   10 FORMAT(1H )
  120 XX=ABS(Z-Y)
      IF(Y)150,160,150
  150 DF=D*ABS(Z)
      GO TO 170
  160 DF=D
  170 IF(XX-DF)130,140,140
  130 CONTINUE
C
   11 FORMAT(1H ,4X,4H*OK*,9X,E14.7,4X,E14.7,3(11X,E14.7))
      RETURN
  140 WRITE(6,12)X1,X2,Y,Z,XX
   12 FORMAT(1H ,4X,7H*ERROR*,6X,E14.7,4X,3(E14.7,11X),E14.7)
      RETURN
      END
