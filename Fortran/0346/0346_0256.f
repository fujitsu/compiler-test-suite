      INTEGER*4 I41(60)
      DATA      I41/60*0/
      INTEGER*4 I42(60)
      DATA      I42/60*0/
      DO 10 I=1,60
        IF( I .LE. 01 .OR. I .LE. 02 .OR. I .LE. 03 .OR.
     1      I .LE. 04 .OR. I .LE. 05 .OR. I .LE. 06 .OR.
     2      I .LE. 07 .OR. I .LE. 08 .OR. I .LE. 09 .OR.
     3      I .LE. 10 .OR. I .LE. 11 .OR. I .LE. 12 .OR.
     4      I .LE. 13 .OR. I .LE. 14 .OR. I .LE. 15 .OR.
     5      I .LE. 16 .OR. I .LE. 17 .OR. I .LE. 18 .OR.
     6      I .LE. 19 .OR. I .LE. 20 .OR. I .LE. 21 .OR.
     7      I .LE. 22 .OR. I .LE. 23 .OR. I .LE. 24 .OR.
     8      I .LE. 25 .OR. I .LE. 26 .OR. I .LE. 27 .OR.
     9      I .LE. 28 .OR. I .LE. 29 .OR. I .LE. 30 .OR.
     A      I .LE. 31 .OR. I .LE. 32 .OR. I .LE. 33 .OR.
     B      I .LE. 34 .OR. I .LE. 35 .OR. I .LE. 36 .OR.
     C      I .LE. 37 .OR. I .LE. 38 .OR. I .LE. 39 .OR.
     D      I .LE. 40 .OR. I .LE. 41 .OR. I .LE. 42 .OR.
     E      I .LE. 43 .OR. I .LE. 44 .OR. I .LE. 45 .OR.
     F      I .LE. 46 .OR. I .LE. 47 .OR. I .LE. 48 .OR.
     G      I .LE. 49 .OR. I .LE. 50 .OR. I .LE. 51 .OR.
     H      I .LE. 52 .OR. I .LE. 53 .OR. I .LE. 54 .OR.
     I      I .LE. 55 .OR. I .LE. 56 .OR. I .LE. 57 .OR.
     J      I .LE. 58 .OR. I .LE. 59 .OR. I .LE. 60     ) THEN
            I41(I)=I
            I41(I)=I41(I)+I41(I)
          ELSE
        ENDIF
10    CONTINUE
      PRINT *, '-- I41(I),I=1,60 --'
      PRINT *,I41
      DO 20 I=1,60
        IF( I .LE. 01 .AND. I .LE. 02 .AND. I .LE. 03 .AND.
     1      I .LE. 04 .AND. I .LE. 05 .AND. I .LE. 06 .AND.
     2      I .LE. 07 .AND. I .LE. 08 .AND. I .LE. 09 .AND.
     3      I .LE. 10 .AND. I .LE. 11 .AND. I .LE. 12 .AND.
     4      I .LE. 13 .AND. I .LE. 14 .AND. I .LE. 15 .AND.
     5      I .LE. 16 .AND. I .LE. 17 .AND. I .LE. 18 .AND.
     6      I .LE. 19 .AND. I .LE. 20 .AND. I .LE. 21 .AND.
     7      I .LE. 22 .AND. I .LE. 23 .AND. I .LE. 24 .AND.
     8      I .LE. 25 .AND. I .LE. 26 .AND. I .LE. 27 .AND.
     9      I .LE. 28 .AND. I .LE. 29 .AND. I .LE. 30 .AND.
     A      I .LE. 31 .AND. I .LE. 32 .AND. I .LE. 33 .AND.
     B      I .LE. 34 .AND. I .LE. 35 .AND. I .LE. 36 .AND.
     C      I .LE. 37 .AND. I .LE. 38 .AND. I .LE. 39 .AND.
     D      I .LE. 40 .AND. I .LE. 41 .AND. I .LE. 42 .AND.
     E      I .LE. 43 .AND. I .LE. 44 .AND. I .LE. 45 .AND.
     F      I .LE. 46 .AND. I .LE. 47 .AND. I .LE. 48 .AND.
     G      I .LE. 49 .AND. I .LE. 50 .AND. I .LE. 51 .AND.
     H      I .LE. 52 .AND. I .LE. 53 .AND. I .LE. 54 .AND.
     I      I .LE. 55 .AND. I .LE. 56 .AND. I .LE. 57 .AND.
     J      I .LE. 58 .AND. I .LE. 59 .AND. I .LE. 60     ) THEN
            I42(I)=I
            I42(I)=I42(I)+I42(I)
          ELSE
        ENDIF
20    CONTINUE
      PRINT *, '-- I42(I),I=1,60 --'
      PRINT *,I42
      STOP
      END
