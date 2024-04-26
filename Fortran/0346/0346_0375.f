      DIMENSION  A(10),B(10)
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       A,B/20*1.0/
      DO 10 I=1,10
        X = A(I)
        Y = X
        IF(L(I)) THEN
          X = X + B(I)
        ENDIF
        B(I) = B(I) * 2.
        A(I) = B(I) + X
        IF(LS) THEN
          Y = Y + X * A(I)
          A(I) = Y
        ENDIF
   10 CONTINUE
      PRINT  *,A
      STOP
      END
