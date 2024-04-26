      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
      REAL*4      C1,C2
      REAL*8      D1,D2
      COMPLEX*8   E1,E2
      COMPLEX*16  F1,F2
      LOGICAL*1   G1,G2
      LOGICAL*4   H1,H2
C
      DATA A1,A2/2*0/
      DATA B1,B2/2*0/
      DATA C1,C2/2*0.0/
      DATA D1,D2/2*0.0E+00/
      DATA E1,E2/2*(0.0,0.0)/
      DATA F1,F2/2*(0.0,0.0)/
      DATA G1,G2/2*.TRUE./
      DATA H1,H2/2*.FALSE./
C
      A1 = A2
      B1 = B2
      C1 = C2
      D1 = D2
      E1 = E2
      F1 = F2
      G1 = G2
      H1 = H2
C
      WRITE(6,*) A1,B1,C1,D1,E1,F1,G1,H1
      WRITE(6,*) A2,B2,C2,D2,E2,F2,G2,H2
      STOP
      END
