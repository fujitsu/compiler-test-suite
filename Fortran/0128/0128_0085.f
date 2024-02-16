      INTEGER   N
      INTEGER   Q
      PARAMETER (N=100)
      INTEGER   A(1:N), B(1:N)

      DO 10 I=1,N
         A(I)=I*I
         B(I)=I
 10      CONTINUE
      CLOSE(10)

      Q = 0
      DO 20 J=1,N
         DO 20 I=1,N
            Q = Q + (A(J)-B(I))
 20      CONTINUE
      CLOSE(20)

      WRITE(*,*) Q

      END
