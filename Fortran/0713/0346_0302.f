      DIMENSION L(20),M(20),N(20),A(20),B(20),C(20)
      DO 10 I=1,20
      L(I)=I
      M(I)=I+20
      N(I)=I+40
      A(I)=I
      B(I)=I+20
   10 CONTINUE
      DO 29 J=1,5
      DO 20 I=1,20
      C(I)=I*I
   20 CONTINUE
   29 CONTINUE
      DO 49 J=1,2
      DO 30 I=1,10
      L(I)=I+100
   30 CONTINUE
      DO 40 I=1,10
      M(I)=I+120
   40 CONTINUE
      CALL SUB(A,15)
   49 CONTINUE
      DO 59 J=1,3
      DO 50 I=1,20
      N(I)=I+140
   50 CONTINUE
      CALL SUB(B,5)
   59 CONTINUE
      IF(L(10).NE.110.OR.L(20).NE. 20) GO TO 90
      IF(M(10).NE.130.OR.M(20).NE. 40) GO TO 90
      IF(N(10).NE.150.OR.N(20).NE.160) GO TO 90
      IF(ABS((A(10)-2010.)/2010.0).GT.1E-7) GO TO 90
      IF(ABS((A(20)-  20.)/  20.0).GT.1E-7) GO TO 90
      IF(ABS((B(10)-  30.)/  30.0).GT.1E-7) GO TO 90
      IF(ABS((B(20)-  40.)/  40.0).GT.1E-7) GO TO 90
      IF(ABS((C(10)- 100.)/ 100.0).GT.1E-7) GO TO 90
      IF(ABS((C(20)- 400.)/ 400.0).GT.1E-7) GO TO 90
      WRITE(6,9000)
      GO TO 99
   90 WRITE(6,9100)
   99 CONTINUE
      WRITE(6,1000) L
      WRITE(6,1000) M
      WRITE(6,1000) N
      WRITE(6,2000) A
      WRITE(6,2000) B
      WRITE(6,2000) C
      STOP
 1000 FORMAT(2X,10I7,/)
 2000 FORMAT(2X,5F14.5,/)
 9000 FORMAT(' ***** OK *****')
 9100 FORMAT(' ***** NG *****')
      END
      SUBROUTINE SUB(X,LOOP)
      DIMENSION X(20)
      DO 30 I=1,LOOP
      X(I)=X(I)+1000.
   30 CONTINUE
      RETURN
      END
