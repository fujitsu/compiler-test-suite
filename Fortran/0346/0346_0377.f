      DIMENSION  A(10),B(10)
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./,RS/0.5/
      DATA       A,B/20*1.0/
      DO 10 I=1,10
        X = A(I)
        Y = RS
        IF(L(I)) THEN
          X = X + B(I)
        ENDIF
        Y = SIN(Y) + X
        A(I) = Y
   10 CONTINUE
      PRINT  *,A
      STOP
      END
