      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
      REAL*4      C1,C2
      REAL*8      D1,D2
      COMPLEX*8   E1,E2
      COMPLEX*16  F1,F2
C
      DATA A1,A2/2*1/
      DATA B1,B2/2*1/
      DATA C1,C2/2*1.0/
      DATA D1,D2/2*1.0E+10/
      DATA E1,E2/2*(1.0,1.0)/
      DATA F1,F2/2*(1.0,1.0)/
C
       A1 = A1 * A2 * 2
       B1 = B1 * B2 * 3
       C1 = C1 * C2 * 2.0
       D1 = D1 * D2 * 2.0E+01
       E1 = E1 * E2 * (2.0,2.0)
       F1 = F1 * F2 * (2.0,2.0)
C
      WRITE(6,*) A1,B1,C1,D1,E1,F1
      WRITE(6,*) A2,B2,C2,D2,E2,F2
      STOP
      END
