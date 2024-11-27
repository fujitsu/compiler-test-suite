      PROGRAM MAIN
      LOGICAL  L(10),L1(10),L2(10)
      DATA     L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      REAL     A(10),B(10),C(10),D(10)
      DATA     A,B,C,D/10*1.0,10*2.0,10*3.0,10*4.0/
      INTEGER  IL(10)
      DATA     IL/1,2,3,4,5,6,7,8,9,10/
      L1 = .FALSE.

      DO 10 I=1,10
        IF(L(I)) THEN
          L1(I) = A(I) .GT. B(I)
          L2(I) = A(I) .LE. B(I)
          L1(I) = L1(I) .OR. L2(I)
        ENDIF
   10 CONTINUE
      PRINT  *,L1

      DO 20 I=1,10
        K=IL(I)
        B(K) = A(K) * C(K)
   20 CONTINUE
      PRINT  *,B

      DO 30 I=1,10
        X = A(I) + B(I)
        C(I) = C(I) * D(I)
   30 CONTINUE
      PRINT  *,C
      STOP
      END
