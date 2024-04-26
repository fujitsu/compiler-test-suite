      REAL*4   A1,A2,A3,A4
      REAL*8   B1,B2,B3,B4
C
      DATA A1/0.0/,A2/1.0/,A3/1.0/,A4/1.0/
      DATA B1/0.0E+00/,B2/1.0E+00/,B3/1.0E+00/,B4/1.0E+00/
C
       B1 = DPROD(A1,A2)
       B2 = DPROD(A2,A1)
C
       B3 = A3 * A4 + B4
       B4 = A3 * A4 + B3
C
      WRITE(6,*) A1,A2,A3,A4
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END
