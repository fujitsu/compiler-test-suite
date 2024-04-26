      INTEGER A(-20:20,-20:20,-20:20)
      A = 1
      DO 2 J = 1, 2
         DO 3 K = 1, 2
            DO 4 L = 1, 2
               A(J+1-1,1+1+K,1-1+L) = A(J,K,L)
 4          CONTINUE
 3       CONTINUE
 2    CONTINUE
      write(6,*) A(1,1,1)
      END
