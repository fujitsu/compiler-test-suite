      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
C
      DATA A1,A2/2*8/
      DATA B1,B2/2*8/
C
      A1 = ISHFT(A2,-2)
      B1 = ISHFT(B2,-4)
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      STOP
      END
