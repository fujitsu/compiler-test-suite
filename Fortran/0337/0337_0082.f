      DIMENSION ARRAY(2,2)
      INTEGER Y,Z
      ITEM=1
      K=-500
      N=0
      P=1.0
      J=1
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
C
   10 N=N+1
      IF(N-1)11,12,11
   11 CONTINUE
C
  210 FORMAT(1H1/ )
   12 CONTINUE
C
  220 FORMAT(1H0 7X,9H*** ITEM(,I2,5H) ***,7X
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       10HINT(X) -  ,5H*****,22X,9H( PAGE = I3,2H ),
     3       ///6X,11H- JUSTICE -,20X,12H- ARGUMENT -,16X,
     4       19H- COMPUTED RESULT -,9X,17H- COMPARE VALUE -  )
C
      L=0
   20 X=FLOAT(K)/100.0
      Y=INT(X)
      Z1=FLOAT(IFIX(ABS(X)))
      Z2=SIGN(Z1,X)
      Z=IFIX(Z2)
      IF(MOD(L,10))30,40,30
   40 CONTINUE
C
  230 FORMAT(1H )
   30 IF(Y-Z)50,60,50
   60 CONTINUE
C
  240 FORMAT(1H ,9X, 4H*OK*,23X,E14.7,23X,I6,21X,I6)
      GO TO 70
   50 WRITE(6,250)X,Y,Z
  250 FORMAT(1H ,9X,7H*ERROR*,20X,E14.7,23X,I6,21X,I6)
   70 L=L+1
      IF(K-500)90,100,100
   90 K=K+1
      IF(L-50)20,10,10
  100 ITEM=ITEM+1
      N=N+1
      IF(N-1)21,22,21
   21 CONTINUE
   22 CONTINUE
C
      L=0
      ISW=1
   29 GO TO (1,2,3,4,5,6,7,8,9,80,81,82,83),ISW
    1 X=-1.234E-30
      ISW=2
      GO TO 23
    2 X=0.0
      ISW=3
      GO TO 23
    3 X=32767.89E0
      ISW=4
      GO TO 23
    4 X=-32767.0E0
      ISW=5
      GO TO 23
    5 ITEM=ITEM+1
C
  400 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X=ABS(P-2.0)*(-0.5)
      ISW=6
   23 Y=INT(X)
      Z1=FLOAT(IFIX(ABS(X)))
      Z2=SIGN(Z1,X)
      Z=IFIX(Z2)
      IF(L)24,25,24
C
   25 CONTINUE
C
   24 IF(Y-Z)26,27,26
   27 CONTINUE
C
      GO TO 28
   26 WRITE(6,250)X,Y,Z
   28 L=L+1
      GO TO 29
    6 X=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=7
      GO TO 23
    7 X=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      ISW=8
      GO TO 23
    8 X=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)
      ISW=9
      GO TO 23
    9 X=SIN(P-1.0)-SQRT(P**2/4.0)
      ISW=10
      GO TO 23
   80 X=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      ISW=11
      GO TO 23
   81 X=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      ISW=12
      GO TO 23
   82 X=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      ISW=13
      GO TO 23
   83 CONTINUE
      STOP
      END
