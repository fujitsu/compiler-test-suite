      INTEGER*4 I41(60)
      DATA      I41/60*0/
      INTEGER*4 I42(60)
      DATA      I42/60*0/
      DO 10 I=1,60
        IF( I .EQ. 01 .OR. I .EQ. 02 .OR. I .EQ. 03 .OR.
     1      I .EQ. 04 .OR. I .EQ. 05 .OR. I .EQ. 06 .OR.
     2      I .EQ. 07 .OR. I .EQ. 08 .OR. I .EQ. 09 .OR.
     3      I .EQ. 10 .OR. I .EQ. 11 .OR. I .EQ. 12 .OR.
     4      I .EQ. 13 .OR. I .EQ. 14 .OR. I .EQ. 15 .OR.
     5      I .EQ. 16 .OR. I .EQ. 17 .OR. I .EQ. 18 .OR.
     6      I .EQ. 19 .OR. I .EQ. 20 .OR. I .EQ. 21 .OR.
     7      I .EQ. 22 .OR. I .EQ. 23 .OR. I .EQ. 24 .OR.
     8      I .EQ. 25 .OR. I .EQ. 26 .OR. I .EQ. 27 .OR.
     9      I .EQ. 28 .OR. I .EQ. 29 .OR. I .EQ. 30 .OR.
     A      I .EQ. 31 .OR. I .EQ. 32 .OR. I .EQ. 33 .OR.
     B      I .EQ. 34 .OR. I .EQ. 35 .OR. I .EQ. 36 .OR.
     C      I .EQ. 37 .OR. I .EQ. 38 .OR. I .EQ. 39 .OR.
     D      I .EQ. 40 .OR. I .EQ. 41 .OR. I .EQ. 42 .OR.
     E      I .EQ. 43 .OR. I .EQ. 44 .OR. I .EQ. 45 .OR.
     F      I .EQ. 46 .OR. I .EQ. 47 .OR. I .EQ. 48 .OR.
     G      I .EQ. 49 .OR. I .EQ. 50 .OR. I .EQ. 51 .OR.
     H      I .EQ. 52 .OR. I .EQ. 53 .OR. I .EQ. 54 .OR.
     I      I .EQ. 55 .OR. I .EQ. 56 .OR. I .EQ. 57 .OR.
     J      I .EQ. 58 .OR. I .EQ. 59 .OR. I .EQ. 60     ) THEN
            I41(I)=I
            I41(I)=I41(I)+I41(I)
          ELSE
        ENDIF
10    CONTINUE
      PRINT *, '-- I41(I),I=1,60 --'
      PRINT *,I41
      DO 20 I=1,60
        IF( I .EQ. 01 .AND. I .EQ. 02 .AND. I .EQ. 03 .AND.
     1      I .EQ. 04 .AND. I .EQ. 05 .AND. I .EQ. 06 .AND.
     2      I .EQ. 07 .AND. I .EQ. 08 .AND. I .EQ. 09 .AND.
     3      I .EQ. 10 .AND. I .EQ. 11 .AND. I .EQ. 12 .AND.
     4      I .EQ. 13 .AND. I .EQ. 14 .AND. I .EQ. 15 .AND.
     5      I .EQ. 16 .AND. I .EQ. 17 .AND. I .EQ. 18 .AND.
     6      I .EQ. 19 .AND. I .EQ. 20 .AND. I .EQ. 21 .AND.
     7      I .EQ. 22 .AND. I .EQ. 23 .AND. I .EQ. 24 .AND.
     8      I .EQ. 25 .AND. I .EQ. 26 .AND. I .EQ. 27 .AND.
     9      I .EQ. 28 .AND. I .EQ. 29 .AND. I .EQ. 30 .AND.
     A      I .EQ. 31 .AND. I .EQ. 32 .AND. I .EQ. 33 .AND.
     B      I .EQ. 34 .AND. I .EQ. 35 .AND. I .EQ. 36 .AND.
     C      I .EQ. 37 .AND. I .EQ. 38 .AND. I .EQ. 39 .AND.
     D      I .EQ. 40 .AND. I .EQ. 41 .AND. I .EQ. 42 .AND.
     E      I .EQ. 43 .AND. I .EQ. 44 .AND. I .EQ. 45 .AND.
     F      I .EQ. 46 .AND. I .EQ. 47 .AND. I .EQ. 48 .AND.
     G      I .EQ. 49 .AND. I .EQ. 50 .AND. I .EQ. 51 .AND.
     H      I .EQ. 52 .AND. I .EQ. 53 .AND. I .EQ. 54 .AND.
     I      I .EQ. 55 .AND. I .EQ. 56 .AND. I .EQ. 57 .AND.
     J      I .EQ. 58 .AND. I .EQ. 59 .AND. I .EQ. 60     ) THEN
            I42(I)=I
            I42(I)=I42(I)+I42(I)
          ELSE
        ENDIF
20    CONTINUE
      PRINT *, '-- I42(I),I=1,60 --'
      PRINT *,I42
      STOP
      END
