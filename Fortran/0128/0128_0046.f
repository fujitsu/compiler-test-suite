      INTEGER N
      REAL  Q, ANS, INIT
      PARAMETER (N=50)
      PARAMETER (ANS=326.958832)
      PARAMETER (INIT=24.9010334)
      PARAMETER (ERROR=0.0003)
      DOUBLE PRECISION  A(1:N)
      DOUBLE PRECISION  V, Z
      DOUBLE PRECISION  B(1:N)

      DO 5 I=25,N
         A(I) = 0.1*I
         B(I) = 0.1*I
 5    CONTINUE
      CLOSE(5)

      V = INIT/100.0 - A(N);
      Z = INIT/120.0 - B(N);

      DO 10 I=4,N-3
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I-1) = V-Z
         A(N-I-2) = V+Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I-1) = V-Z
         B(N-I-2) = V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I-1) = A(N-I-1) - V*Z
         A(N-I-2) = A(N-I-2) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I-1) = B(N-I-1) - V-Z
         B(N-I-2) = B(N-I-1) - V+Z
         B(N-I+1) = B(N-I-1) - V+Z
         B(N-I+2) = B(N-I-1) - V+Z
         B(N-I+3) = B(N-I-1) - V+Z
 10   CONTINUE

      DO 20 I=6,N
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
 20   CONTINUE
      
      CLOSE(20)

      Q = 0.0
      DO 30 I=1, N
         Q = Q + A(I)
 30   CONTINUE

      CLOSE(30)

      DO 40 I=1, N
         Q = Q - B(I)
 40      CONTINUE

      CLOSE(40)

      IF ((Q-ANS)<ERROR) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG: Q = ', Q, ', ANS = ', ANS
      END IF

      END
