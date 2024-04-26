      INTEGER A(10,10)
      K=0
      A=1
      DO 1 I=1,10
         DO 2 J=1,10
            A(I,J+K) = A(I,K+J)
 2       CONTINUE
 1    CONTINUE
      WRITE(6,*) A(1,1)
      END
