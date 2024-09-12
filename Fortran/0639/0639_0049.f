      INTEGER*4  I41(10),I42(10),I43(10)
      LOGICAL*4  L41(10),L4A(10)
      DATA  I41,I42,I43
     1   /10*1,10*2,10*3/
      DATA  L41/5*.TRUE.,5*.FALSE./

      DO 10 I=1,10
        I41(I) = 2 + I42(I) + I43(I)
   10 CONTINUE
      DO 20 I=1,10
        I42(I) = 2 * I43(I) * I41(I)
   20 CONTINUE
      PRINT  *,I41,I42

      DO 30 I=1,10
        L4A(I) = .NOT. L41(I) .AND. I41(I) .GT. 1000
   30 CONTINUE

      PRINT  *,L4A

      I1 = 0
      DO 40 I=1,10
        I1 = I41(I) * 2
        IF(L41(I)) THEN
          I1 = I41(I) + 2
        ENDIF
        I41(I) = I1
   40 CONTINUE

      PRINT  *,I41
      STOP
      END
