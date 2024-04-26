      INTEGER*4   A1,A2,A3,A4
      INTEGER*4   B1,B2,B3,B4
C
      DATA A1/123/,A2/234/,A3/345/,A4/456/
      DATA B1/987/,B2/876/,B3/765/,B4/543/
C
       A1 = A1 * 2
       A2 = A1 + A2 * 2
       B1 = B1 * 2
       B2 = B1 + B2 * 2
C
       A3 =     A1/A2
       A4 = MOD(A1,A2)
       B3 =     B1/B2
       B4 = MOD(B1,B2)
C
      WRITE(6,*) A1,A2,A3,A4
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END
