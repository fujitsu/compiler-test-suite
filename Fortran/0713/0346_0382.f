      DIMENSION  A(10),B(10)
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       A,B/20*1.0/
      DO 10 I=1,10
        X = 0.
        Y = X
        IF(.NOT.L(I)) THEN
          X = A(I)
          Y = X
        ENDIF
        X = A(I) + B(I)
        IF(L(I)) THEN
          A(I) = B(I) * 2.
          Y = Y + X * A(I)
        ENDIF
        B(I) = Y
   10 CONTINUE
      PRINT  *,B
      STOP
      END
