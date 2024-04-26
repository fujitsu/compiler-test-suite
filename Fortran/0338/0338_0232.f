      INTEGER*2   A1(10),A2(10)
      INTEGER*4   B1(10),B2(10)
      REAL*4      C1(10),C2(10)
      REAL*8      D1(10),D2(10)
      COMPLEX*8   E1(10),E2(10)
      COMPLEX*16  F1(10),F2(10)
C
      DATA A1,A2/20*1/
      DATA B1,B2/20*1/
      DATA C1,C2/20*1.0/
      DATA D1,D2/20*1.0E+10/
      DATA E1,E2/20*(1.0,1.0)/
      DATA F1,F2/20*(1.0,1.0)/
C
      DO 100 I=1,10
       A1(I) = A1(I) / A2(I) / 2
       B1(I) = B1(I) / B2(I) / 3
       C1(I) = C1(I) / C2(I) / 2.0
       D1(I) = D1(I) / D2(I) / 2.0E+01
       E1(I) = E1(I) / E2(I) / (2.0,2.0)
       F1(I) = F1(I) / F2(I) / (2.0,2.0)
  100 CONTINUE
C
      WRITE(6,*) A1,B1,C1,D1,E1,F1
      WRITE(6,*) A2,B2,C2,D2,E2,F2
      STOP
      END
