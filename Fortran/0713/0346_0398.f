      INTEGER    A(20),B(20),X,Y,C(20),D(20),IL(10),Z,E(10),F(10)
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       IL/1,2,3,4,5,6,7,8,9,10/
      DATA       A,B,C,D/80*2.0/
      DO 10 I=1,10
        X = IL(I)
        Y = X
        IF(L(I)) THEN
          X = X + 1
        ENDIF
        Z = X
        X = X * 2
        E(I) = A(Y) + B(Y) + X
        F(I) = C(Z) * D(Z) + X
   10 CONTINUE
      PRINT  *,E,F
      STOP
      END
