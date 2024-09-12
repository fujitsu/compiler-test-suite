      PROGRAM MAIN
      INTEGER A(10),B(10),C(10)
      LOGICAL M(20)
      DO 10 I = 1,10
        A(I) = -I
        B(I) = I*I
   10   C(I) = I*I*I
      DO 20 I = 1,20
        IF( I.LE.10 ) THEN
          M(I) = .TRUE.
        ELSE
          M(I) = .FALSE.
        ENDIF
   20 CONTINUE
      CALL SUB(A,B,C,M,10)
      PRINT *,A,B,C,M
      STOP
      END

      SUBROUTINE SUB(A,B,C,M,N)
      INTEGER A(10),B(10),C(10)
      LOGICAL M(10)
      J = 1
      DO 1 WHILE( J.EQ.1 )
      DO 20 I = 1,N
   20   B(I) = A(I)
      DO 10 I = 1,N
        IF( M(I) ) THEN
          A(I) = C(I)
          ENDIF
   10   CONTINUE
      PRINT*,A,B,C
      J = J+1
    1 CONTINUE
      RETURN
      END
