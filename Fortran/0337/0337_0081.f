      DIMENSION  ARRAY(2,2)
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
      P=1.0
      DIFF=1.0E-5
      ITEM=0
      K=-500
      N=0
      ITEM=ITEM+1
   55 N=N+1
      IF(N-1) 5,15,5
    5 CONTINUE
C
  201 FORMAT(1H1 / )
   15 CONTINUE
C
  202 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       10HAINT(X) - ,5H*****,22X,9H( PAGE = ,I3,2H )
     3       ///9X,11H- JUSTICE -,9X,12H- ARGUMENT -,12X,
     4       19H- COMPUTED RESULT -,8X,17H- COMPARE VALUE -,13X,
     5       14H- DIFFERENCE - / )
      L=0
   45 X=FLOAT(K)/100.0
      Y=AINT(X)
      Z1=FLOAT(IFIX(ABS(X)))
      Z=SIGN(Z1,X)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      IF(K-500) 25,35,35
   25 K=K+1
      IF(L-50) 45,55,55
   35 ITEM=ITEM+1
      N=N+1
C
      ISW=1
   75 GO TO (1,2,3,4,6),ISW
    1 X=-1.234E-30
      ISW=2
      GO TO 65
    2 X=0.0
      ISW=3
      GO TO 65
    3 X=+3.435E3
      ISW=4
      GO TO 65
    4 X=-3.435E3
      ISW=5
   65 Y=AINT(X)
      Z1=FLOAT(IFIX(ABS(X)))
      Z=SIGN(Z1,X)
      CALL PRTN(L,DIFF,X,Y,Z)
      GO TO 75
    6 ITEM=ITEM+1
C
  204 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      IISW=1
   85 GO TO (91,92,93,94,95,96,97,98,99),IISW
   91 X=ARRAY(1,1)
      IISW=2
      GO TO 100
   92 X=ARRAY(1,2)
      IISW=3
      GO TO 100
   93 X=ARRAY(2,1)
      IISW=4
      GO TO 100
   94 X=ARRAY(2,2)
      IISW=5
      GO TO 100
   95 X=((P**2-2.0)*6.0+1.0)/10.0
      IISW=6
      GO TO 100
   96 X=(P**2+P*0.1-P/10.0)/(-100.0)
      IISW=7
      GO TO 100
   97 X=(ARRAY(1,1)*(-10.0)+5.0*P)/10000.0
      IISW=8
      GO TO 100
   98 X=ARRAY(1,1)**2+(P/10.0)*2.0+ARRAY(2,2)/10.0
      IISW=9
  100 Y=AINT(X)
      Z1=FLOAT(IFIX(ABS(X)))
      Z=SIGN(Z1,X)
      CALL PRTN(L,DIFF,X,Y,Z)
      GO TO 85
   99 CONTINUE
      STOP
      END
C
      SUBROUTINE    PRTN ( L, D, A, R, V )
      DIFF = V - R
      IF(R) 90,80,90
   80 IF(ABS(DIFF)-D) 100,120,120
   90 IF(ABS(DIFF)-D*ABS(V)) 100,120,120
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
