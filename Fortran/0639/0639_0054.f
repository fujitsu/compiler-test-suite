      LOGICAL    L(500)
      INTEGER*4  I41(500),I42(500),I43(500),SI1,SI2
      REAL*4     R41(500),R42(500),R43(500),S41,S42,R4MAX
      REAL*8     R81(500),R82(500),R83(500),S81,S82,R8MIN
      DATA  L/50*.TRUE.,50*.FALSE.,50*.TRUE.,50*.FALSE.,50*.TRUE.,
     1        50*.TRUE.,50*.FALSE.,50*.TRUE.,50*.FALSE.,50*.TRUE./
      DATA  I41,I42,I43/500*1,500*2,500*3/
      DATA  R41,R42,R43/500*1.,500*2.,500*3./
      DATA  R81,R82,R83/500*1.D0,500*2.D0,500*3.D0/
      DATA  SI1,SI2/1,2/
      DATA  S41,S42/1.,2./
      DATA  S81,S82/1.D0,2.D0/
      ISUM  = 0
      R4MAX = 0.0
      R8MIN = 0.0D0
      IXR8 = 0

      DO 10 I=1,500
        R41(I) = S41 / R42(I)
        IF(R42(I).GT.R4MAX) THEN
           R4MAX = R42(I)
           IXR4  = I
         ENDIF
        R43(I) = (S41 * R41(I)) * (S42 * R43(I))
   10 CONTINUE
      PRINT *,R4MAX,IXR4,R43

      DO 20 I=1,500
        R81(I) = S81 / R82(I)
        IF(R82(I).LT.R8MIN) THEN
           R8MIN = R82(I)
           IXR8  = I
         ENDIF
        R83(I) = (S81 + R81(I)) + (S82 + R83(I))
   20 CONTINUE
      PRINT *,R8MIN,IXR8,R83

      DO 30 I=1,500
        I41(I) = S41 / R41(I)
        ISUM = ISUM + I42(I)
        I43(I) = (SI1 + I41(I)) + (I43(I) + SI2)
   30 CONTINUE
      PRINT *,I43,ISUM

      IX = 0
      DO 40 I=1,500
        IF(L(I)) THEN
         IX = IX + 1
        ENDIF
   40 CONTINUE
      PRINT *,IX
      STOP
      END
