      INTEGER*4  IL(1000)
      REAL*4     R41(10),R42(10),R43(10)
      REAL*4     R401(1000),R402(1000),R403(1000),R404(1000)
      REAL*8     R81(10),R82(10)
      DATA  R41,R42,R43/10*1.,10*2.,10*3./
      DATA  R401,R402,R403,R404/1000*1.,1000*2.,1000*3.,1000*4./
      DATA  R81,R82/10*1.D0,10*2.D0/
      DATA  IL/1000*0/

      DO 10 I=1,10
        R41(I) = 1.0 + R42(I) / R43(I)
        R81(I) = R82(I) * 3.0D0 / R82(I)
   10 CONTINUE
      PRINT *,R41,R81

      DO 20 I=1,10
        X = R41(I) + R42(I)
        Y = X
        X = R81(I) * 2.0D0
        Z = Y + X + R82(I)
        R43(I) = Z * Y * X
   20 CONTINUE
      PRINT  *,R43

      DO 40 I=1,999
        IL(I) = IL(I) + I
        R401(IL(I)) = R402(IL(I)) + R403(IL(I)) / R404(IL(I))
   40 CONTINUE
      PRINT  *,R401
      STOP
      END
