      INTEGER*4  I41(1024),I42(1024),I43(1024),I44(1024),IL(1024)
      REAL*4     R41(1024),R42(1024),R43(1024),R44(1024)
      REAL*8     R81(1024),R82(1024),R83(1024),R84(1024),R85(1024),
     *           S81,S82
      DATA  I41,I42,I43,I44/1024*1,1024*2,1024*3,1024*4/
      DATA  R41,R42,R43,R44/1024*1.,1024*2.,1024*3.,1024*4./
      DATA  R81,R82,R83,R84,R85
     *      /1024*1.D0,1024*2.D0,1024*3.D0,1024*4.D0,1024*5.D0/
      DATA  S1,S2,IS1,IS2,S81,S82/2.,3.,2,3,2.D0,1.D0/

      DO 1 I=1,1024
    1 IL(I) = I

      DO 10 I=1,10
        I41(I) = (I41(I)+IS1) + (I42(I)+IS2) + (I43(I)+10)
        R41(I) = (R41(I)*S1) * (R42(I)*S2) * (R43(I)*4.0)
        R81(I) = (S1/R82(I)) * (I41(I)+IS1) * (S81/R83(I))
     1         + (S81+R44(I)) + (S82+I44(I)) + (IS1+R85(I))
   10 CONTINUE
      PRINT  *,(I41(I),R41(I),R81(I),I=1,10)

      DO 20 I=1,1024
        I41(I) = IS1 + I41(I)
        I42(I) = I41(I) * I42(I)
        I43(I) = IS2 / I42(I)
   20 CONTINUE

      PRINT  *,I43

      DO 51 I=1,5
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
   51 CONTINUE
      DO 52 I=1,5
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
   52 CONTINUE
      DO 53 I=1,5
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
   53 CONTINUE

      PRINT  *,(I41(I),R41(I),R81(I),I=1,5)

      DO 101 I=1,10
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
  101 CONTINUE
      DO 102 I=1,10
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
  102 CONTINUE
      DO 103 I=1,10
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
  103 CONTINUE

      PRINT  *,(I41(I),R41(I),R81(I),I=1,10)

      DO 501 I=1,50
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
  501 CONTINUE
      DO 502 I=1,50
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
  502 CONTINUE
      DO 503 I=1,50
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
  503 CONTINUE

      PRINT  *,(I41(I),R41(I),R81(I),I=1,50)

      DO 1001 I=1,100
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
 1001 CONTINUE
      DO 1002 I=1,100
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
 1002 CONTINUE
      DO 1003 I=1,100
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
 1003 CONTINUE

      PRINT  *,(I41(I),R41(I),R81(I),I=1,100)

      DO 2561 I=1,256
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
 2561 CONTINUE
      DO 2562 I=1,256
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
 2562 CONTINUE
      DO 2563 I=1,256
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
 2563 CONTINUE

      PRINT  *,(I41(I),R41(I),R81(I),I=1,256)

      DO 5001 I=1,500
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
 5001 CONTINUE
      DO 5002 I=1,500
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
 5002 CONTINUE
      DO 5003 I=1,500
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
 5003 CONTINUE

      PRINT  *,(I41(I),R41(I),R81(I),I=1,500)

      DO 10241 I=1,1024
        I41(I) = I41(I) + I42(I) * I43(I) + I44(IL(I))
10241 CONTINUE
      DO 10242 I=1,1024
        R41(I) = R41(I) + R42(I) * R43(I) / R44(IL(I))
10242 CONTINUE
      DO 10243 I=1,1024
        R81(I) = R81(I) + R82(I) * R83(I) / R84(IL(I))
10243 CONTINUE

      PRINT  *,I41,R41,R81
      STOP
      END
