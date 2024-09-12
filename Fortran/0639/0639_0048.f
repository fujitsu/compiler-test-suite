      REAL*8     R81(100),R82(100)
      DATA       R81,R82/100*2.0,100*3.0/
      REAL*4     R41(100),R42(100),R43(100),R44(100)
      DATA       R41,R42,R43,R44/100*2.0,100*3.0,100*4.0,100*5.0/
      INTEGER*4  I41(100),I42(100),I43(100),I44(100),I45(100),I46(100),
     1           IL(100)
      LOGICAL*4  L41(100),L42(100),L43(100),L44(100),L45(100),L46(100),
     1           L4A(100),L4B(100),L4C(100),L4D(100)
      DATA  I41,I42,I43,I44,I45,I46
     1   /100*1,100*2,100*3,100*4,100*5,100*6/

      DO 10 I=1,100
        I41(I) = I41(I) + I42(I)
        I42(I) = I43(I) * I44(I)
        R41(I) = R42(I) / R43(I)
        I44(I) = I42(I) - I43(I)
   10 CONTINUE
      PRINT  *,I41,I42,R43,I44

      DO 20 I=1,100
        L41(I) = I41(I) .LT. I42(I)
        L42(I) = I43(I) .LE. I44(I)
        L43(I) = I45(I) .EQ. I46(I)
        L44(I) = I42(I) .NE. I43(I)
        L45(I) = I44(I) .GT. I45(I)
        L46(I) = I41(I) .GE. I46(I)
   20 CONTINUE
      PRINT  *,L41,L42,L43,L44,L45,L46

      DO 30 I=1,100
        L4A(I) = .NOT. L41(I)
        L4B(I) = L42(I) .AND. L43(I)
        L4C(I) = L44(I) .OR.  L45(I)
        L4D(I) = L46(I) .NEQV. L41(I)
   30 CONTINUE

      PRINT  *,L4A,L4B,L4C,L4D

      DO 40 I=1,100
        IL(I) = I
        R42(I) = 1.
        R44(I) = 1.
   40 CONTINUE
      DO 50 I=1,100
        IF(.NOT.L4A(I)) THEN
          R41(IL(I)) = COS(R42(IL(I)))
          R43(IL(I)) = COS(R44(IL(I)))
          L4A(I)     = .FALSE.
        ENDIF
   50 CONTINUE

      DO 60 I=1,100
        R81(I) = I41(I)
        I42(I) = R82(I)
   60 CONTINUE

      PRINT  *,R81,I42
      STOP
      END
