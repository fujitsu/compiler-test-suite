      DIMENSION  A(10),B(10)
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       A,B/20*1.0/
      DO 10 I=1,10
        X = 0.
        Y = X
        IF(L(I)) THEN
          X = A(I)
          Y = X
          A(I) = X + 2.
          X = Y + X
        ENDIF
        A(I) = Y
        B(I) = X
   10 CONTINUE
      PRINT  *,A,B
      STOP
      END
