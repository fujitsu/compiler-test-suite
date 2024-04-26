      INTEGER    A(20),B(20),X,Y,C(20),D(20),IL(10),Z,E(10),F(10)
      LOGICAL    L(10),LS,LS2
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./,LS2/.TRUE./
      DATA       IL/1,2,3,4,5,6,7,8,9,10/
      DATA       A,B,C,D/80*2.0/
      DO 10 I=1,10
        X = 1
        Y = 1
        Z = 1
        IF(L(I)) THEN
          X = IL(I)
          Y = X
          X = X + 1
          Z = X
        ENDIF
        X = X * 2
        IF(LS) THEN
          E(I) = A(Y) + B(Z) + X
        ENDIF
        IF(LS2) THEN
          F(I) = C(Z) * D(Y) + X
        ENDIF
   10 CONTINUE
      PRINT  *,E,F
      STOP
      END
