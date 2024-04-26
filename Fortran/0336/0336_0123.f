      INTEGER N
      DOUBLE PRECISION  Q, ANS
      PARAMETER (N=50)
      PARAMETER (ANS=99.0)
      DOUBLE PRECISION  A(1:N)
      DOUBLE PRECISION  B(1:N)

      DO 10 I=1,N
         A(I)=I-(I/3)*3
         B(I)=I-(I/5)*5
 10      CONTINUE
      
      CLOSE(10)
      Q = 0.0
      DO 20 I=1,N-1
         Q = Q + A(I) * B(I)
 20      CONTINUE

      CLOSE(20)

      IF (Q.EQ.ANS) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG: Q = ', Q, ', ANS = ', ANS
      END IF

      END
