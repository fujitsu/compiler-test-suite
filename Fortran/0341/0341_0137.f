      INTEGER A(100,100,100)
      A=10
      DO 1 I = 1, 10
         DO 2 J = 1, 10
            DO 3 K = 1, 10
               DO 4 L = 1, 10
               A(K,I,L) = 1
 4          CONTINUE
 3       CONTINUE
         DO 2 K = 5, 10
            A(K-4,I+2,J) = 1
            DO 20 KK = 2,10
               A(K,KK,I) = A(K,KK-1,I)
 20         CONTINUE
 2       CONTINUE
 1    CONTINUE
      write(6,*) A(1,1,1)
      END
