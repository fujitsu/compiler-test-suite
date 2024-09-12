      INTEGER*4  I41(10),I42(10),I43(10),IL(10)
      REAL*4     R41(10),R42(10),R43(10)
      REAL*8     R81(10),R82(10),R83(10)
      LOGICAL*4  L41(10),L42(10)
      DATA  L41/5*.TRUE.,5*.FALSE./
      DATA  I41,I42,I43/10*1,10*2,10*3/
      DATA  R41,R42,R43/10*1.,10*2.,10*3./
      DATA  R81,R82,R83/10*1.D0,10*2.D0,10*3.D0/
      DATA  IL/1,2,3,4,5,6,7,8,9,10/

      DO 1 I=1,10
    1 L42(I) = MOD(I,2) .EQ. 1

      DO 10 I=1,10
        I41(I) = 2 + I41(I) * I42(I) + I43(IL(I))
        R41(I) = 2. + R41(I) * R42(I) / R43(IL(I))
        R81(I) = 2. + R81(I) * R82(I) / R83(IL(I))
   10 CONTINUE
      DO 20 I=1,10
        IF(L41(I)) THEN
          R41(I) = R81(I) + 2.0D0
        ELSE IF(L42(I)) THEN
          R81(I) = R41(I) + I41(I)
        ELSE
          I41(I) = R81(I) + R41(I)
        ENDIF
   20 CONTINUE
      DO 30 I=1,10,2
        I41(I) = I42(I) + I43(I)
        R41(I) = R42(I) + R43(I)
        R81(I) = R82(I) + R83(I)
   30 CONTINUE

      PRINT  *,I41,R41,R81
      STOP
      END
