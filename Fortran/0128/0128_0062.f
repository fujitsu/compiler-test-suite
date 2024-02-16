      INTEGER N
      DOUBLE PRECISION  Q, ANS
      PARAMETER (N=50)
      PARAMETER (ANS=1.0)
      DOUBLE PRECISION  A(1:N)
      DOUBLE PRECISION  B(1:N)

      DO 10 I=1,N
         A(I)=I-(I/3)*3
         B(I)=I-(I/5)*5
 10      CONTINUE
      
      CLOSE(10)
      Q = 0.0
      I = 1
      J = A(4)
 20      CONTINUE
      Q = Q + A(I) * B(I)
      I = I + 1
      IF (J == 0) GOTO 20

      IF (Q.EQ.ANS) THEN
         WRITE(6,*) 'OK: Q = ', Q
      ELSE
         WRITE(6,*) 'NG: Q = ', Q, ', ANS = ', ANS
      END IF

      END
