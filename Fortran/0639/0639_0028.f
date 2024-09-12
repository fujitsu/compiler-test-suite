      INTEGER*4  I41(100),I42(100),I43(100),I44(100),I45(100),I46(100)
      LOGICAL*4  L41(100),L42(100),L43(100),L44(100),L45(100),L46(100),
     1           L4A(100),L4B(100),L4C(100),L4D(100)
      DATA  I41,I42,I43,I44,I45,I46
     1   /100*1,100*2,100*3,100*4,100*5,100*6/

      DO 10 I=1,100
        L41(I) = I41(I) .LT. I42(I)
        L42(I) = I43(I) .LE. I44(I)
        L43(I) = I45(I) .EQ. I46(I)
        L44(I) = I42(I) .NE. I43(I)
        L45(I) = I44(I) .GT. I45(I)
        L46(I) = I41(I) .GE. I46(I)
   10 CONTINUE

      DO 20 I=1,100
        L4A(I) = .NOT. L41(I)
        L4B(I) = L42(I) .AND. L43(I)
        L4C(I) = L44(I) .OR.  L45(I)
        L4D(I) = L46(I) .NEQV. L41(I)
   20 CONTINUE

      PRINT  *,L41,L42,L43,L44,L45,L46
      PRINT  *,L4A,L4B,L4C,L4D
      STOP
      END
