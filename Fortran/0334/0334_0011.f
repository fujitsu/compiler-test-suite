
      INTEGER N
      REAL  ANS, KEI
      PARAMETER (N=50)
      PARAMETER (ANS=2600.00000)
      REAL  A(1:N), B(1:N)
      REAL  P(1:N), Q(1:N), S(1:N)

      DO 10 I=1,N
         A(I)=REAL(MOD(I,3))
         B(I)=REAL(MOD(I,5))
 10      CONTINUE
      
      CLOSE(10)

      P = REAL(0)
      R = REAL(0)
      S = REAL(0)

      Q = A + B
      S = S + Q
      Q = N - A
      P = P + Q

      WHERE (P < S)
         Q = Q + P
      ELSEWHERE
         Q = Q + S
      ENDWHERE

      KEI = SUM(Q)

      IF (KEI.eq.ANS) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG'
      ENDIF

      END
