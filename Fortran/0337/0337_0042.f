      DIMENSION ARRAY(2,2)
      N=0
      K=-200
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=+0.01
      ARRAY(2,2)=+0.5
      DIFF=1.0E-5
      ITEM=1
      ISW=1
   75 N=N+1
      IF(N-1) 9,8,9
    9 CONTINUE
C
  201 FORMAT(1H1 / )
    8 CONTINUE
C
      L=0
   65 X=FLOAT(K)/100.0
      Y=ABS(X)
      IF(X-0.0) 15,25,25
   15 Z=-1.0*X
      GO TO 35
   25 Z=X
   35 CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      IF(K-200) 45,55,55
   45 K=K+1
      IF(L-50) 65,75,75
C
   55 ITEM=2
      N=N+1
      L=0
  125 GO TO (1,2,3,4),ISW
    1 X=-2.29637E-30
      ISW=2
      GO TO 85
    2 X=0.0
      ISW=3
      GO TO 85
    3 X=+2.29637E-30
      ISW=4
   85 Y=ABS(X)
      IF(X-0.0) 95,105,105
   95 Z=-1.0*X
      GO TO 115
  105 Z=X
  115 CALL PRTN(L,DIFF,X,Y,Z)
      L=L+1
      GO TO 125
C
    4 ITEM=3
  204 FORMAT(1H0/19X,3H- (,I3,3H) - //)
      DO 100 I=1,2
       DO 100 J=1,2
      X=ARRAY(I,J)
        Y=ABS(ARRAY(I,J))
        IF(ARRAY(I,J)-0.0) 135,145,145
  145   Z=ARRAY(I,J)
        GO TO 155
  135   Z=-1.0*ARRAY(I,J)
  155   CALL PRTN(L,DIFF,X,Y,Z)
  100   CONTINUE
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
