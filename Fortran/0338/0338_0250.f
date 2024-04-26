      INTEGER*2   A
      INTEGER*4   B
      REAL*4      C
      REAL*8      D
      COMPLEX*8   E
      COMPLEX*16  F
      LOGICAL*1   G
      LOGICAL*4   H
C
      DATA A/0/
      DATA B/0/
      DATA C/0.0/
      DATA D/0.0E+00/
      DATA E/(0.0,0.0)/
      DATA F/(0.0,0.0)/
      DATA G/.TRUE./
      DATA H/.FALSE./
C
      A = B
      B = A
      C = D
      D = C
      E = F
      F = E
      G = H
      H = G
C
      WRITE(6,*) A,B,C,D,E,F,G,H
      STOP
      END
