      DIMENSION L(20),M(20),N(20)
      DO 10 I=1,20
      L(I)=I
      M(I)=I+20
      N(I)=I+40
   10 CONTINUE
      DO 29 J=1,5
      DO 20 I=1,10
      L(I)=I+100+J*1000
   20 CONTINUE
   29 CONTINUE
      DO 49 J=1,5
      DO 30 I=1,20
      M(I)=I+120+J*1000
   30 CONTINUE
      DO 40 I=1,10
      N(I)=I+140+J*1000
   40 CONTINUE
   49 CONTINUE
      IF(L(10).NE.5110.OR.L(20).NE.  20) GO TO 90
      IF(M(10).NE.5130.OR.M(20).NE.5140) GO TO 90
      IF(N(10).NE.5150.OR.N(20).NE.  60) GO TO 90
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
