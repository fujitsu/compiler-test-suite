      REAL*4  B(10),ED(10)/10*1/
      DATA    B/1,2,3,4,5,6,7,8,9,10/
      REAL*4  ES2(10)
      EQUIVALENCE  (ES2(1),ED(1))

      DO 30 I=1,4
        ED(I) = 10
        ES2(1) = ES2(1) + B(I)
 30    CONTINUE
      PRINT  *,ED(1)
      END
