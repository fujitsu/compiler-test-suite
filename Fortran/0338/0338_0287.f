      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
C
      DATA A1,A2/5,6/
      DATA B1,B2/10,11/
C
      A1 = IBCLR(A2,2)
      B1 = IBCLR(B2,4)
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      STOP
      END
