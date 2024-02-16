      INTEGER N1, N2
      REAL  Q, R, T, S, ANS,DIF
      PARAMETER (N1=100)
      PARAMETER (N2=120)
      PARAMETER (ANS=170.891998)
      PARAMETER (DIF=2.0E-4)
      REAL  A(1:N2)
      REAL  B(1:N2)
      REAL  C(1:N2)

      DO 5 I=1,N2
         A(I) = 0.01*I
         B(I) = 0.02*I
         C(I) = 0.03*I
 5    CONTINUE

      R = A(I-1)*0.1
      T = B(I-1)*0.1
      S = C(I-1)*0.1
      Q = 0.0

      DO 10 I=1,N1
        A(I) = Q + B(I)*(R*C(I+10)+T*C(I+11)+S*C(I+12))
 10   CONTINUE

      Q = 0.0
      DO 20 I=1,N1
        Q = Q + A(I)
 20   CONTINUE

      IF (ABS(Q-ANS).LT.DIF) THEN
         WRITE(6,*) 'OK: Q = ', ANS
      ELSE
         WRITE(6,*) 'NG: Q = ', Q, ', ANS = ', ANS
      END IF

      END
