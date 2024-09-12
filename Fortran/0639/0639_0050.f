      INTEGER*4  I41(10),I42(10),I43(10),I44(10)
      REAL*4     R41(10),R42(10)
      REAL*8     R81(10),R82(10),R83(10),R84(10),R85(10)
      LOGICAL*4  L41(10)
      DATA  I41,I42,I43,I44/10*1,10*2,10*3,10*4/
      DATA  R41,R42/10*1.,10*2./
      DATA  R81,R82,R83,R84,R85/10*1.D0,10*2.D0,10*3.D0,10*4.D0,10*5.D0/
      DATA  L41/5*.TRUE.,5*.FALSE./
      DATA  IS1,IS2/2,3/

      DO 10 I=1,10
        I43(I) = 10 * I42(I)
        IF(L41(I)) THEN
          R41(I) = 2. / R42(I)
        ENDIF
   10 CONTINUE
      PRINT  *,I43,R41

      DO 20 I=1,5
        I41(I) = I42(I) + IS1 + I43(I) + IS2 + I44(I) + 6
   20 CONTINUE

      PRINT  *,I41

      DO 30 I=1,10,2
        R81(I) = R81(I) + R82(I) + R83(I) + R84(I) + R85(I)
   30 CONTINUE

      PRINT  *,R81
      STOP
      END
