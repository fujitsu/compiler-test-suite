      DIFF=1.0E-5
      K=-628
      N=0
      P=1.0
      J=1
      ISW=1
      Pi=3.14159265
      ITEM=1
   10 N=N+1
      IF(N-1)11,12,11
   11 CONTINUE
C
  210 FORMAT(1H1 / )
   12 CONTINUE
C
  220 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       48H*****  TEST  OF  STANDARD  EXTERNAL  FUNCTION  -,
     2       10H COS(X) - ,7H*******,22X,9H( PAGE = ,I3,2H )
     3       ///9X,11H- JUSTICE -,9X,12H- ARGUMENT -,12X,
     4       19H- COMPUTED RESULT -,8X,17H- COMPARE VALUE -,13X,
     5       14H- DIFFERENCE - / )
C
      L=0
   20 X=FLOAT(K)/100.0
      Y=COS(X)
      Z=SIN(X+Pi/2.0)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      IF(K-628)30,40,30
   30 K=K+1
      IF(L-50)20,10,10
   40 ITEM=2
      N=N+1
C
      L=0
      X=-Pi/2.0
      DO 100 I=1,6
      Y=COS(X)
      Z=SIN(X+Pi/2.0)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      X=X+Pi/4.0
  100 CONTINUE
      ITEM=3
C
  230 FORMAT(1H  / )
  240 FORMAT(1H ,18X,3H- (,I3,3H) -)
C
   80 GO TO(1,2,3,4,5,6,7,8,9),ISW
    1 X=ABS(P-2.0)*(-0.5)
      ISW=2
      GO TO 90
    2 X=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=3
      GO TO 90
    3 X=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      ISW=4
      GO TO 90
    4 X=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)
      ISW=5
      GO TO 90
    5 X=SIN(P-1.0)-SQRT(P**2/4.0)
      ISW=6
      GO TO 90
    6 X=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      ISW=7
      GO TO 90
    7 X=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      ISW=8
      GO TO 90
    8 X=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      ISW=9
   90 Y=COS(X)
      Z=SIN(X+Pi/2.)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      GO TO 80
    9 CONTINUE
      STOP
      END
C
      SUBROUTINE    PRTN ( L, D, A, R, V )
      DIFF = V - R
   80 IF(ABS(DIFF)-D) 100,120,120
  100 CONTINUE
C
    1 FORMAT(1H ,9X,7H*OK*   ,11X,E15.7,12X,E15.7,11X,E15.7,14X,E15.7)
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT(1H ,9X,7H*ERROR*,11X,E15.7,12X,E15.7,11X,E15.7,14X,E15.7)
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39)200,190,200
  190 CONTINUE
C
    3 FORMAT (1H )
  200 RETURN
      END
