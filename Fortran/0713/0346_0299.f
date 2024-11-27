      DIMENSION L(20),M(20),N(20)
      DO 10 I=1,20
      L(I)=I
      M(I)=I+20
      N(I)=I+40
   10 CONTINUE
      DO 20 I=1,10
      L(I)=I+100
   20 CONTINUE
      DO 30 I=1,10
      M(I)=I+120
   30 CONTINUE
      DO 40 I=1,20
      N(I)=I+140
   40 CONTINUE
      IF(L(10).NE.110.OR.L(20).NE. 20) GO TO 90
      IF(M(10).NE.130.OR.M(20).NE. 40) GO TO 90
      IF(N(10).NE.150.OR.N(20).NE.160) GO TO 90
      WRITE(6,9000)
      GO TO 99
   90 WRITE(6,9100)
   99 CONTINUE
      WRITE(6,1000) L
      WRITE(6,1000) M
      WRITE(6,1000) N
      STOP
 1000 FORMAT(2X,10I7,/)
 9000 FORMAT(' ***** OK *****')
 9100 FORMAT(' ***** NG *****')
      END
