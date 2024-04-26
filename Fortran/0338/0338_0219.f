      INTEGER*2   A1,A2(10)
      INTEGER*4   B1,B2(10)
      REAL*4      C1,C2(10)
      REAL*8      D1,D2(10)
      COMPLEX*8   E1,E2(10)
      COMPLEX*16  F1,F2(10)
      LOGICAL*1   G1,G2(10)
      LOGICAL*4   H1,H2(10)
C
      DATA A1,A2/11*0/
      DATA B1,B2/11*0/
      DATA C1,C2/11*0.0/
      DATA D1,D2/11*0.0E+00/
      DATA E1,E2/11*(0.0,0.0)/
      DATA F1,F2/11*(0.0,0.0)/
      DATA G1,G2/11*.TRUE./
      DATA H1,H2/11*.FALSE./
C
      A2(1) = A1
      B2(1) = B1
      C2(1) = C1
      D2(1) = D1
      E2(1) = E1
      F2(1) = F1
      G2(1) = G1
      H2(1) = H1
C
      WRITE(6,*) A1,B1,C1,D1,E1,F1,G1,H1
      WRITE(6,*) A2,B2,C2,D2,E2,F2,G2,H2
      STOP
      END
