      PARAMETER (N=100)
      REAL W(N)/N*0/,U(N)/N*0/
      DO 10 I=1,N
      W(I)=SQRT(REAL(I))
      IF(W(I).GE.5.5) GO TO 20
   10 CONTINUE
      CONTINUE
      CONTINUE
      CONTINUE
      CONTINUE
   20 DO 30 J=1,N
      IF(J.GE.I) GO TO 40
      U(I)=W(I)-0.0091
   30 CONTINUE
      CONTINUE
      CONTINUE
      CONTINUE
      CONTINUE
   40 PRINT *,W,U
      STOP
      END
