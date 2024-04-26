      DIMENSION A(2,2)
      E(R)=1.0+R-R
      F(R)=(R**2+EXP(SIN(R-1.0)))/SQRT(4.0*R)
      N=0
      DIFF=1.0E-1
      K=-10000
      P=1.0
      A(1,1)=-0.5
      A(2,1)=0.01
      A(1,2)=-0.01
      A(2,2)=0.5
      IW=1
      IS=1
      IIW=1
      ISW=1
      IISW=1
      ITEM=3
  100 N=N+1
      IF(N-1)110,120,110
  110 CONTINUE
C
   12 FORMAT(1H1 / )
  120 CONTINUE
C
   13 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       49H*****  TEST  OF  STANDARD  EXTERNAL  FUNCTION  - ,
     2       10HTANH(X) - ,6H******,22X,9H( PAGE = ,I3,2H )
     3       ///9X,11H- JUSTICE -,9X,12H- ARGUMENT -,12X,
     4       19H- COMPUTED RESULT -,8X,17H- COMPARE VALUE -,
     5       13X,14H- DIFFERENCE - / )
      L=0
  130 X=FLOAT(K)/1000.0
      Y=TANH(X)
      Z=1.0-2.0/(EXP(2.0*X)+1.0)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      IF(K+1600)140,150,150
  140 K=K+100
      IF(L-50)130,100,100
  150 ITEM=2
      IF(L+510)160,170,170
  160 GO TO(1,2),ISW
    1 ISW=2
      K=K+100
      GO TO 100
    2 K=K+10
      IF(L-50)130,100,100
  170 ITEM=1
      IF(K-500)180,190,190
  180 GO TO(3,4),IISW
    3 IISW=2
      K=K+10
      GO TO 100
    4 K=K+1
      IF(L-50)130,100,100
  190 ITEM=2
      IF(K-1500)200,210,210
  200 K=K+10
      GO TO(5,6),IW
    5 IW=2
      GO TO 100
    6 IF(L-50)130,100,100
  210 ITEM=3
      IF(K-10000)220,230,230
  220 K=K+100
      GO TO(7,8),IIW
    7 IIW=2
      GO TO 100
    8 IF(L-50)130,100,100
  230 ITEM=4
      N=N+1
C
      L=0
  240 GO TO(20,21,22,23,24),IS
   20 X=F(P)*A(1,1)
      IS=2
      GO TO 250
   21 X=EXP(ALOG(F(P**2)))/100.0-P*0.02
      IS=3
      GO TO 250
   22 X=F(A(2,1)*100.0)/100.0
      IS=4
      GO TO 250
   23 X=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*A(2,2)
      IS=5
  250 Y=TANH(X)
      Z=1.0-2.0/(EXP(2.0*X)+1.0)
      CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      GO TO 240
   24 CONTINUE
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
