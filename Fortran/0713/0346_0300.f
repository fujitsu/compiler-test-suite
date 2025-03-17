      DIMENSION L(20),M(20),N(20),A(20),B(20)
      DO 10 I=1,20
      L(I)=I
      M(I)=I+20
      N(I)=I+40
      A(I)=I
      B(I)=I+20
   10 CONTINUE
      DO 20 I=1,10
      L(I)=I+100
   20 CONTINUE
      CALL SUB(A)
      DO 30 I=1,10
      M(I)=I+120
   30 CONTINUE
      DO 40 I=1,20
      N(I)=I+140
   40 CONTINUE
      DO 50 I=1,20
      B(I)=B(I)+I*100
   50 CONTINUE
      IF(L(10).NE.110.OR.L(20).NE. 20) GO TO 90
      IF(M(10).NE.130.OR.M(20).NE. 40) GO TO 90
      IF(N(10).NE.150.OR.N(20).NE.160) GO TO 90
      IF(ABS((A(10)-1010.)/1010.0).GT.1E-7) GO TO 90
      IF(ABS((A(20)-1020.)/1020.0).GT.1E-7) GO TO 90
      IF(ABS((B(10)-1030.)/1030.0).GT.1E-7) GO TO 90
      IF(ABS((B(20)-2040.)/2040.0).GT.1E-7) GO TO 90
      WRITE(6,9000)
      GO TO 99
   90 WRITE(6,9100)
   99 CONTINUE
      WRITE(6,1000) L
      WRITE(6,1000) M
      WRITE(6,1000) N
      WRITE(6,2000) A
      WRITE(6,2000) B
      STOP
 1000 FORMAT(2X,10I7,/)
 2000 FORMAT(2X,5F14.5,/)
 9000 FORMAT(' ***** OK *****')
 9100 FORMAT(' ***** NG *****')
      END
      SUBROUTINE SUB(X)
      DIMENSION X(20)
      DO 30 I=1,20
      X(I)=X(I)+1000.
   30 CONTINUE
      RETURN
      END
