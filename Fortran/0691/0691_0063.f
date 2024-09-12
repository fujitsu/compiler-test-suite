      DOUBLE PRECISION DP(2),ANS,DCXC,DIFF,D
      COMPLEX*16   DCX
      EQUIVALENCE (DCX,DP(1))
C
      ITEM=1
      N=1
      ISW=1
      DIFF=1.0D-14
      WRITE(6,11)
   11 FORMAT(1H1/7X,24H*FORTRAN*          ENTER)
      WRITE(6,12)ITEM,N
   12 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       49H*****  TEST  OF  STANDARD  EXTERNAL  FUNCTION  - ,
     2       16HCDABS(DCX) - ***,22X,9H( PAGE = ,I3,2H ),
     3       ///2X,11H- JUSTICE -,11X,12H- ARGUMENT -,31X,
     4       19H+ COMPUTED RESULT +,23X,14H- DIFFERENCE -,
     5       /67X,19H+ COMPARE   VALUE +)
      DP(1)=3.0D0
      DP(2)=4.0D0
      L=0
  100 ANS=DSQRT(DP(1)**2+DP(2)**2)
      DCXC=CDABS(DCX)
      D = ANS - DCXC
      IF (DCXC) 190,180,190
  180 IF(DABS(D)-DIFF)200,220,220
  190 IF(DABS(D) - DIFF * DABS(ANS))200,220,220
  200 WRITE(6,110) DCX,DCXC,ANS,D
  110 FORMAT(1H ,13H   *OK*      ,2D25.17,2D27.17,D15.5)
      GO TO 130
  220 WRITE(6,120) DCX,DCXC,ANS,D
  120 FORMAT(1H ,13H   *ERROR*   ,2D25.17,2D27.17,D15.5)
  130 L=L+1
      GO TO (1,2,3,4,5,6,7),ISW
    1 DP(1)=-3.0D0
      DP(2)=4.0D0
      ISW=2
      GO TO 100
    2 DP(1)=-3.0D0
      DP(2)=-4.0D0
      ISW=3
      GO TO 100
    3 DP(1)=3.0D0
      DP(2)=-4.0D0
      ISW=4
      GO TO 100
    4 DP(1)=0.0D0
      DP(2)=-5.0D0
      ISW=5
      GO TO 100
    5 DP(1)=10.0D0
      DP(2)=0.0D0
      ISW=6
      GO TO 100
    6 DP(1)=0.0D0
      DP(2)=0.0D0
      ISW=7
      GO TO 100
    7 WRITE(6,13)
   13 FORMAT(1H0/7X,23H*FORTRAN*          EXIT)
      STOP
      END
