      REAL*8  R81(10),R82(10)
      DATA  R81,R82
     *      /10*1.0,10*2.0/
      REAL*4  R41(10),R42(10),R43(10)
      DATA  R41,R42,R43
     *      /10*1.0,10*2.0,10*3.0/
      DO 10 I=1,10
        R81(I) = R82(I) + R43(I) + R42(I)
        R41(I) = R82(I) / R42(I) / R43(I)
   10 CONTINUE
      WRITE(6,*) R81,R41
      STOP
      END
