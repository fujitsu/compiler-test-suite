      DIMENSION     A(4)
      R=1.414214
      A(1)=2.885390
      A(2)=0.9617988
      A(3)=0.5767152
      A(4)=0.4317177
      N=0
      K=1
      E=2.71828
      DIFF=1.0E-5
      ITEM=1
      ISW=1
      IW=1
   50 N=N+1
      IF(N-1)9,10,9
    9 CONTINUE
C
   11 FORMAT(1H1/)
   10 CONTINUE
C
    2 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       49H*****  TEST  OF  STANDARD  EXTERNAL  FUNCTION  - ,
     2       11HALOG(X) _  ,5H*****,22X,9H( PAGE = ,I3,2H ),
     3       ///9X,11H- JUSTICE -,9X,12H- ARGUMENT -,12X,
     4       19H- COMPUTED RESULT -,8X,17H- COMPARE VALUE -,13X,
     5       14H- DIFFERENCE - / )
      L=0
   60 X=FLOAT(K)/1000.0
   70 Y=ALOG(X)
      B=0.5
      IF(X-1.0)80,90,90
   80 F=1.0/X
      I=1
      GO TO 100
   90 F=X
      I=0
  100 IF(F-2.0)110,110,120
  120 F=F*0.5
      B=B+1.0
      GO TO 100
  110 C=(F-R)/(F+R)
      Z=0
      DO 400   IU=1,4
      Z=Z+A(IU)*C**(2*IU-1)
  400 CONTINUE
      Z=Z+B
      IF(I)130,140,130
  130 Z=-Z
  140 Z=Z*0.6931472
      CALL PRTN(L,DIFF,X,Y,Z)
      GO TO (3,4),ISW
    3 L=L+1
      IF(K-1000)150,160,160
  150 K=K+1
      IF(L-50) 60,50,50
  160 ITEM=2
      IF(K-10000)170,180,180
  170 K=K+10
      GO TO (5,6),IW
    5 IW=2
      GO TO 50
    6 IF(L-50)60,50,50
  180 ITEM=3
      X=E
      N=N+1
C
    7 FORMAT(1H1 / )
C
      ISW=2
      GO TO 70
    4 CONTINUE
      STOP
      END
C
      SUBROUTINE    PRTN ( L, D, A, R, V )
      DIFF = V - R
      IF(ABS(R)-1.0)80,80,90
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
