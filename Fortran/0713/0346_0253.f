      INTEGER*4 I41(60)
      DATA      I41/60*0/
      INTEGER*4 I42(60)
      DATA      I42/60*0/
      DO 10 I=1,60
        IF( I .NE. 01 .OR. I .NE. 02 .OR. I .NE. 03 .OR.
     1      I .NE. 04 .OR. I .NE. 05 .OR. I .NE. 06 .OR.
     2      I .NE. 07 .OR. I .NE. 08 .OR. I .NE. 09 .OR.
     3      I .NE. 10 .OR. I .NE. 11 .OR. I .NE. 12 .OR.
     4      I .NE. 13 .OR. I .NE. 14 .OR. I .NE. 15 .OR.
     5      I .NE. 16 .OR. I .NE. 17 .OR. I .NE. 18 .OR.
     6      I .NE. 19 .OR. I .NE. 20 .OR. I .NE. 21 .OR.
     7      I .NE. 22 .OR. I .NE. 23 .OR. I .NE. 24 .OR.
     8      I .NE. 25 .OR. I .NE. 26 .OR. I .NE. 27 .OR.
     9      I .NE. 28 .OR. I .NE. 29 .OR. I .NE. 30 .OR.
     A      I .NE. 31 .OR. I .NE. 32 .OR. I .NE. 33 .OR.
     B      I .NE. 34 .OR. I .NE. 35 .OR. I .NE. 36 .OR.
     C      I .NE. 37 .OR. I .NE. 38 .OR. I .NE. 39 .OR.
     D      I .NE. 40 .OR. I .NE. 41 .OR. I .NE. 42 .OR.
     E      I .NE. 43 .OR. I .NE. 44 .OR. I .NE. 45 .OR.
     F      I .NE. 46 .OR. I .NE. 47 .OR. I .NE. 48 .OR.
     G      I .NE. 49 .OR. I .NE. 50 .OR. I .NE. 51 .OR.
     H      I .NE. 52 .OR. I .NE. 53 .OR. I .NE. 54 .OR.
     I      I .NE. 55 .OR. I .NE. 56 .OR. I .NE. 57 .OR.
     J      I .NE. 58 .OR. I .NE. 59 .OR. I .NE. 60     ) THEN
            I41(I)=I
            I41(I)=I41(I)+I41(I)
          ELSE
        ENDIF
10    CONTINUE
      PRINT *, '-- I41(I),I=1,60 --'
      PRINT *,I41
      DO 20 I=1,60
        IF( I .NE. 01 .AND. I .NE. 02 .AND. I .NE. 03 .AND.
     1      I .NE. 04 .AND. I .NE. 05 .AND. I .NE. 06 .AND.
     2      I .NE. 07 .AND. I .NE. 08 .AND. I .NE. 09 .AND.
     3      I .NE. 10 .AND. I .NE. 11 .AND. I .NE. 12 .AND.
     4      I .NE. 13 .AND. I .NE. 14 .AND. I .NE. 15 .AND.
     5      I .NE. 16 .AND. I .NE. 17 .AND. I .NE. 18 .AND.
     6      I .NE. 19 .AND. I .NE. 20 .AND. I .NE. 21 .AND.
     7      I .NE. 22 .AND. I .NE. 23 .AND. I .NE. 24 .AND.
     8      I .NE. 25 .AND. I .NE. 26 .AND. I .NE. 27 .AND.
     9      I .NE. 28 .AND. I .NE. 29 .AND. I .NE. 30 .AND.
     A      I .NE. 31 .AND. I .NE. 32 .AND. I .NE. 33 .AND.
     B      I .NE. 34 .AND. I .NE. 35 .AND. I .NE. 36 .AND.
     C      I .NE. 37 .AND. I .NE. 38 .AND. I .NE. 39 .AND.
     D      I .NE. 40 .AND. I .NE. 41 .AND. I .NE. 42 .AND.
     E      I .NE. 43 .AND. I .NE. 44 .AND. I .NE. 45 .AND.
     F      I .NE. 46 .AND. I .NE. 47 .AND. I .NE. 48 .AND.
     G      I .NE. 49 .AND. I .NE. 50 .AND. I .NE. 51 .AND.
     H      I .NE. 52 .AND. I .NE. 53 .AND. I .NE. 54 .AND.
     I      I .NE. 55 .AND. I .NE. 56 .AND. I .NE. 57 .AND.
     J      I .NE. 58 .AND. I .NE. 59 .AND. I .NE. 60     ) THEN
            I42(I)=I
            I42(I)=I42(I)+I42(I)
          ELSE
        ENDIF
20    CONTINUE
      PRINT *, '-- I42(I),I=1,60 --'
      PRINT *,I42
      STOP
      END
