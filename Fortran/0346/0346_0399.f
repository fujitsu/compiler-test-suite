      REAL*8     A(20),B(20),C(20),D(20),E(10),F(10)
      INTEGER    IL(10),X,Y,Z
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./
      DATA       IL/1,2,3,4,5,6,7,8,9,10/
      DATA       A,B,C,D/80*2.0D0/
      DATA  E/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
     1   F/11.D0,12.D0,13.D0,14.D0,15.D0,16.D0,17.D0,18.D0,19.D0,20.D0/
      DO 10 I=1,10
        X = IL(I)
        Y = X
        IF(L(I)) THEN
          X = X + 1
        ENDIF
        Z = X
        X = X * 2
        A(Y) = E(I) + X
        B(Y) = E(I) * X
        C(Z) = F(I) + X
        D(Z) = F(I) * X
   10 CONTINUE
      PRINT  *,A,B,C,D
      STOP
      END
