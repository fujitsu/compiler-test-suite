      INTEGER*4 I41(60)
      DATA      I41/60*0/
      INTEGER*4 I42(60)
      DATA      I42/60*0/
      DO 10 I=1,60
        IF( I .GE. 01 .OR. I .GE. 02 .OR. I .GE. 03 .OR.
     1      I .GE. 04 .OR. I .GE. 05 .OR. I .GE. 06 .OR.
     2      I .GE. 07 .OR. I .GE. 08 .OR. I .GE. 09 .OR.
     3      I .GE. 10 .OR. I .GE. 11 .OR. I .GE. 12 .OR.
     4      I .GE. 13 .OR. I .GE. 14 .OR. I .GE. 15 .OR.
     5      I .GE. 16 .OR. I .GE. 17 .OR. I .GE. 18 .OR.
     6      I .GE. 19 .OR. I .GE. 20 .OR. I .GE. 21 .OR.
     7      I .GE. 22 .OR. I .GE. 23 .OR. I .GE. 24 .OR.
     8      I .GE. 25 .OR. I .GE. 26 .OR. I .GE. 27 .OR.
     9      I .GE. 28 .OR. I .GE. 29 .OR. I .GE. 30 .OR.
     A      I .GE. 31 .OR. I .GE. 32 .OR. I .GE. 33 .OR.
     B      I .GE. 34 .OR. I .GE. 35 .OR. I .GE. 36 .OR.
     C      I .GE. 37 .OR. I .GE. 38 .OR. I .GE. 39 .OR.
     D      I .GE. 40 .OR. I .GE. 41 .OR. I .GE. 42 .OR.
     E      I .GE. 43 .OR. I .GE. 44 .OR. I .GE. 45 .OR.
     F      I .GE. 46 .OR. I .GE. 47 .OR. I .GE. 48 .OR.
     G      I .GE. 49 .OR. I .GE. 50 .OR. I .GE. 51 .OR.
     H      I .GE. 52 .OR. I .GE. 53 .OR. I .GE. 54 .OR.
     I      I .GE. 55 .OR. I .GE. 56 .OR. I .GE. 57 .OR.
     J      I .GE. 58 .OR. I .GE. 59 .OR. I .GE. 60     ) THEN
            I41(I)=I
            I41(I)=I41(I)+I41(I)
          ELSE
        ENDIF
10    CONTINUE
      PRINT *, '-- I41(I),I=1,60 --'
      PRINT *,I41
      DO 20 I=1,60
        IF( I .GE. 01 .AND. I .GE. 02 .AND. I .GE. 03 .AND.
     1      I .GE. 04 .AND. I .GE. 05 .AND. I .GE. 06 .AND.
     2      I .GE. 07 .AND. I .GE. 08 .AND. I .GE. 09 .AND.
     3      I .GE. 10 .AND. I .GE. 11 .AND. I .GE. 12 .AND.
     4      I .GE. 13 .AND. I .GE. 14 .AND. I .GE. 15 .AND.
     5      I .GE. 16 .AND. I .GE. 17 .AND. I .GE. 18 .AND.
     6      I .GE. 19 .AND. I .GE. 20 .AND. I .GE. 21 .AND.
     7      I .GE. 22 .AND. I .GE. 23 .AND. I .GE. 24 .AND.
     8      I .GE. 25 .AND. I .GE. 26 .AND. I .GE. 27 .AND.
     9      I .GE. 28 .AND. I .GE. 29 .AND. I .GE. 30 .AND.
     A      I .GE. 31 .AND. I .GE. 32 .AND. I .GE. 33 .AND.
     B      I .GE. 34 .AND. I .GE. 35 .AND. I .GE. 36 .AND.
     C      I .GE. 37 .AND. I .GE. 38 .AND. I .GE. 39 .AND.
     D      I .GE. 40 .AND. I .GE. 41 .AND. I .GE. 42 .AND.
     E      I .GE. 43 .AND. I .GE. 44 .AND. I .GE. 45 .AND.
     F      I .GE. 46 .AND. I .GE. 47 .AND. I .GE. 48 .AND.
     G      I .GE. 49 .AND. I .GE. 50 .AND. I .GE. 51 .AND.
     H      I .GE. 52 .AND. I .GE. 53 .AND. I .GE. 54 .AND.
     I      I .GE. 55 .AND. I .GE. 56 .AND. I .GE. 57 .AND.
     J      I .GE. 58 .AND. I .GE. 59 .AND. I .GE. 60     ) THEN
            I42(I)=I
            I42(I)=I42(I)+I42(I)
          ELSE
        ENDIF
20    CONTINUE
      PRINT *, '-- I42(I),I=1,60 --'
      PRINT *,I42
      STOP
      END
