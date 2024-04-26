      REAL DP(2)
      COMPLEX DCX
      EQUIVALENCE (DCX,DP(1))
C
      N=1
      ITEM=1
      ISW=1
      DP(1)=3.0
      DP(2)=4.0
      DIFF=1.0E-5
C
      L=0
  100 ANS=SQRT(DP(1)**2+DP(2)**2)
      DCXC=CABS(DCX)
  110 D = ANS - DCXC
      IF(DCXC) 190,180,190
  180 IF(ABS(D) - DIFF) 200,220,220
  190 IF(ABS(D) - DIFF * ABS(ANS))200,220,220
  200 WRITE(6,101)
  101 FORMAT(1H ,3X,7H*OK*   ,5X,2E15.7,11X,E15.7,19X,E15.7,11X,E15.7)
      GO TO 230
  220 WRITE(6,102) DCX,DCXC,ANS,D
  102 FORMAT(1H ,3X,7H*ERROR*,5X,2E15.7,11X,E15.7,19X,E15.7,11X,E15.7)
  230 IF (L- 9) 300,290,240
  240 IF (L-19) 300,290,250
  250 IF (L-29) 300,290,260
  260 IF (L-39) 300,290,300
  290 WRITE(6,103)
  103 FORMAT(1H )
  300 L=L+1
      GO TO (1,2,3,4,5,6,7),ISW
    1 DP(1)=-3.0
      DP(2)=4.0
      ISW=2
      GO TO 100
    2 DP(1)=-3.0
      DP(2)=-4.0
      ISW=3
      GO TO 100
    3 DP(1)=3.0
      DP(2)=-4.0
      ISW=4
      GO TO 100
    4 DP(1)=0.0
      DP(2)=-5.0
      ISW=5
      GO TO 100
    5 DP(1)=10.0
      DP(2)=0.0
      ISW=6
      GO TO 100
    6 DP(1)=0.0
      DP(2)=0.0
      ISW=7
      GO TO 100
    7 CONTINUE
      STOP
      END
