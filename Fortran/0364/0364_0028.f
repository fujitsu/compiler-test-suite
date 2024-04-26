      INTEGER A(100,100,100)
      INTEGER B(3,3,3)
      INTEGER C(-20:20,-20:20,-20:20)
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
            DO 200 KK = 2,10
               A(K,KK,I) = A(K,KK-1,I)
 200        CONTINUE
 2       CONTINUE
 1    CONTINUE
      write(6,*) A(1,1,1)

      B=1
      DO 10 I = 1, 2
         DO 20 J = 1, 2
            DO 30 K = 1, 2
               DO 40 L = 1, 2
                  CALL SUB( B,K,I,L )
 40            CONTINUE
 30         CONTINUE
 20      CONTINUE
 10   CONTINUE

      C=1
      DO 2000 J = 1, 2
         DO 3000 K = 1, 2
            DO 4000 L = 1, 2
               C(J+1-1,1+1+K,1-1+L) = C(J,K,L)
 4000       CONTINUE
 3000    CONTINUE
 2000 CONTINUE
      write(6,*) C(1,1,1)
      END
C
      SUBROUTINE SUB( B,K,I,L )
      INTEGER B(K,I,L)
      WRITE(6,*) B(1,1,1)
      RETURN
      END
