      DIMENSION A(6)
      REAL*8 XD
      IW=1
      DIFF=2.0E-5
      ITEM=1
      N=0
      K=0
      A(1)=7.052308E-2
      A(2)=4.228201E-2
      A(3)=9.270527E-3
      A(4)=1.520143E-4
      A(5)=2.765672E-4
      A(6)=4.306380E-5
      ISW=1
      IIW=1
      IISW=1
      WRITE(6,11)
   11 FORMAT(1H1/7X,24H*FORTRAN*          ENTER)
  100 N=N+1
      IF(N-1)110,120,110
  110 WRITE(6,12)
   12 FORMAT(1H1 / )
  120 WRITE(6,13)ITEM,N
   13 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       49H*****  TEST  OF  STANDARD  EXTERNAL  FUNCTION  - ,
     2       16HERFC(X) - ******,22X,9H( PAGE = ,I3,2H )
     3       ///9X,11H- JUSTICE -,9X,12H- ARGUMENT -,12X,
     4       19H- COMPUTED RESULT -,8X,17H- COMPARE VALUE -,13X,
     5       14H- DIFFERENCE - / )
      L=0
  130 IF(ITEM-4) 500,600,500
  600 X=FLOAT(K)/10.0
      GO TO 550
  500 X=FLOAT(K)/10000.0
  550 Y=ERFC(X)
      Z=0.0
      DO 140  I=1,6
      Z=Z+A(I)*X**I
  140 CONTINUE
      Z=1.0/(1.0+Z)**16
      XD=X
      Z=ERFC(XD)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      GO TO(800,900),ISW
  800 IF(K-98)150,160,160
  150 K=K+2
      IF(L-50)130,100,100
  160 ITEM=2
      IF(K-980)170,180,180
  170 GO TO(1,2),IW
    1 IW=2
      K=K+2
      GO TO 100
    2 K=K+20
      IF(L-50)130,100,100
  180 ITEM=3
      IF(K-9800)190,200,200
  190 GO TO(3,4),IIW
    3 IIW=2
      K=K+20
      GO TO 100
    4 K=K+200
      IF(L-50)130,100,100
  200 ITEM=4
      K=10
      ISW=2
      GO TO 100
  900 IF(K-50) 210,220,220
  210 K=K+2
      IF(L-50)130,100,100
  220 WRITE(6,14)
   14 FORMAT(1H0/7X,23H*FORTRAN*          EXIT)
      STOP
      END
C
      SUBROUTINE    PRTN ( L, D, A, R, V )
C
      DIFF = V - R
      IF(R) 90,80,90
   80 IF(ABS(DIFF)-D) 100,120,120
   90 IF(ABS(DIFF)-D*ABS(V)) 100,120,120
  100 WRITE (6,1) A,R,V,DIFF
    1 FORMAT(1H ,9X,7H*OK*   ,11X,E15.7,12X,E15.7,11X,E15.7,14X,E15.7)
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT(1H ,9X,7H*ERROR*,11X,E15.7,12X,E15.7,11X,E15.7,14X,E15.7)
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39)200,190,200
  190 WRITE (6,3)
    3 FORMAT (1H )
  200 RETURN
      END