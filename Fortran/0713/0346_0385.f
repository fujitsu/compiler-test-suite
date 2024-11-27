      DIMENSION  A(10),B(10)
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       A,B/20*1.0/,R/1./
      DO 10 I=1,10
        X = 0.
        Y = X
        IF(L(I)) THEN
          X = R
          Y = X
        ENDIF
        A(I) = B(I) * 2.
        Y = X + Y * A(I)
        B(I) = Y
   10 CONTINUE
      PRINT  *,B
      STOP
      END
