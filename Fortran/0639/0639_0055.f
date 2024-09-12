      REAL*8     R81(200),R82(200)
      REAL*4     R41(200),R42(200)
      INTEGER*4  I41(200),I42(200),IL(200)
      LOGICAL*4  L41(200),L42(200),L43(200)
      DATA       I41,I42/200*1,200*2/
      DATA       R41,R42/200*2.0,200*3.0/
      DATA       R81,R82/200*2.0D0,200*3.0D0/

      DO 1 I=1,200
      IL(I)  = 0
      L41(I) = MOD(I,2) .EQ.1
      L42(I) = .NOT. L41(I)
      L43(I) = I.GT.50
    1 CONTINUE

      DO 10 I=1,200
        IL(I)  = IL(I) + I
        I41(I) = R81(I) + I42(I)
        R41(I) = I41(I) * R42(I)
        R81(I) = R41(I) / R82(IL(I))
   10 CONTINUE
      PRINT  *,I41,R41,R81

      DO 20 I=1,200
        IF(L41(I)) THEN
          L41(I) = .NOT.L43(I) .OR. L42(I)
        ELSE IF(L42(I)) THEN
          L42(I) = L41(I) .AND. L43(I)
        ELSE IF(L43(I) .OR. I.GT.100) THEN
          L43(I) = L41(I) .OR. L42(I)
        ENDIF
   20 CONTINUE
      PRINT  *,L41,L42,L43
      STOP
      END
