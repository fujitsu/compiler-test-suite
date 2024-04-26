      INTEGER A(3,3,3)
      A = 1
      DO 1 I = 1, 2
         DO 2 J = 1, 2
            DO 3 K = 1, 2
               DO 4 L = 1, 2
                  CALL SUB( A,K,I,L )
 4             CONTINUE
 3          CONTINUE
 2       CONTINUE
 1    CONTINUE
      END
C
      SUBROUTINE SUB( A,K,I,L )
      INTEGER A(K,I,L)
      WRITE(6,*) A(K,I,L)
      RETURN
      END

      
