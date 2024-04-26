      INTEGER*4 I41(20)
      DATA      I41/20*0/
      DO 10 I=1,20
        IF(                 I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND.                 I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1                      I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND.                 I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1                      I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND.                 I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1                      I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND.                 I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND.                 I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1                      I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND.                 I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1                      I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND.                 I .NE. 18 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND.
     1      I .NE. 19 .AND. I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1                      I .NE. 20 )
     1    THEN
            I41(I)=I
          ELSE
     1  IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     1      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     1      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     1      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     1      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     1      I .NE. 19                 )
     1    THEN
            I41(I)=I
          ELSE
        ENDIF
10    CONTINUE
      PRINT *, '-- I41(I),I=1,20 --'
      PRINT *,I41
      STOP
      END
