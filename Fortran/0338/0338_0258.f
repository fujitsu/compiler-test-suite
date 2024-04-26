      INTEGER*2   A1,A2,A3
      INTEGER*4   B1,B2,B3
C
      DATA A1,A2,A3/1,2,3/
      DATA B1,B2,B3/2,3,4/
C
      A1 = NOT(A2)
      B1 = NOT(B2)
C
      WRITE(6,*) A1,A2,A3
      WRITE(6,*) B1,B2,B3
      STOP
      END
