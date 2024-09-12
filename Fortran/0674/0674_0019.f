      PROGRAM MAIN
      INTEGER  A(10),B(10),C(10)
      LOGICAL  M(10),L(10)
      DATA A/10*1/,B/10*2/
      DO 10 I = 1,10
        IF( MOD(I,2).EQ.0 ) THEN
          M(I) = .TRUE.
        ELSE
          M(I) = .FALSE.
        ENDIF
        A(I) = I*I
        B(I) = I
   10   C(I) = 10
      DO 20 I = 1,10
        IF( M(I) ) THEN
          C(I) = A(B(I))
          ENDIF
   20   CONTINUE
      PRINT*,A,B,C
      STOP
      END
