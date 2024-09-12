      INTEGER    A(10),B(10),X,Y
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       A,B/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      DO 10 I=1,10
        X = A(I)
        Y = X
        IF(L(I)) THEN
          X = X + B(I)
        ENDIF
        B(I) = A(Y) + X
   10 CONTINUE
      PRINT  *,B
      STOP
      END
