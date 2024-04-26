      PROGRAM MAIN
      LOGICAL  L(10)
      DATA     L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      REAL     A(10),B(10),C(10),D(10)
      DATA     A,B,C,D/10*1.0,10*2.0,10*3.0,10*4.0/

      DO 30 I=1,10
        IF(L(1)) THEN
          X    = A(I) + B(I)
          C(I) = C(I) * D(I)
        ENDIF
        IF(L(3)) THEN
          Y    = D(I) * B(I)
          A(I) = C(I) + 2.0
        ENDIF
   30 CONTINUE
      PRINT  *,C
      STOP
      END
