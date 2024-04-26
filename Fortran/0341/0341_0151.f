      INTEGER A(10)
      DO 1 I = 1, 10
         DO 10 J = 1, 10
            A(I) = 1
            A(I) = 10
 10      CONTINUE
 1    CONTINUE
c
      DO 2 I = 1, 10
         DO 20 J = 1, 10
            A(I) = 1
            A(1) = 10
 20      CONTINUE
 2    CONTINUE
c
      DO 3 I = 1, 10
         DO 30 J = 1, 10
            A(I) = 1
            A(J) = 10
 30      CONTINUE
 3    CONTINUE
c
      K=1
      DO 4 I = 1, 10
         DO 40 J = 1, 10
            A(I) = 1
            A(K) = 10
 40      CONTINUE
 4    CONTINUE
c
      write(6,*) A(1)
      END
