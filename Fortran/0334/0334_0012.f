
      INTEGER N1, N2
      REAL  Q, R, T, S, ANS
      PARAMETER (N1=100)
      PARAMETER (N2=120)
      PARAMETER (ANS=170.891998)
      REAL  A(1:N2)
      REAL  B(1:N2)
      REAL  C(1:N2)
      A = 0.01
      B = 0.02
      C = 0.03
      DO 5 I=1,N2
         A(I) = A(I)*I
         B(I) = B(I)*I
         C(I) = C(I)*I
 5    CONTINUE

      R = A(I-1)*0.1
      T = B(I-1)*0.1
      S = C(I-1)*0.1
      Q = REAL(0)

      A(1:N1)=Q+B(1:N1)*(R*C(11:N1+10)+T*C(12:N1+11)+S*C(13:N1+12))

      Q = SUM(A(1:N1))

      IF (abs(Q-ANS)<1.53e-5) THEN
         WRITE(6,*) 'OK'
      ELSE
         PRINT *,Q-ANS
         WRITE(6,*) 'NG'
      END IF

      END
