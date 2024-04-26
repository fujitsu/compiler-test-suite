      INTEGER*2   A1(10),A2
      INTEGER*4   B1(10),B2
      REAL*4      C1(10),C2
      REAL*8      D1(10),D2
      COMPLEX*8   E1(10),E2
      COMPLEX*16  F1(10),F2
C
      DATA A1,A2/11*0/
      DATA B1,B2/11*0/
      DATA C1,C2/11*0.0/
      DATA D1,D2/11*0.0E+00/
      DATA E1,E2/11*(0.0,0.0)/
      DATA F1,F2/11*(0.0,0.0)/
C
      DO 100 I=1,10
       A1(I) = A1(I) + A2
       B1(I) = B1(I) + B2
       C1(I) = C1(I) + C2
       D1(I) = D1(I) + D2
       E1(I) = E1(I) + E2
       F1(I) = F1(I) + F2
  100 CONTINUE
C
      WRITE(6,*) A1,B1,C1,D1,E1,F1
      WRITE(6,*) A2,B2,C2,D2,E2,F2
      STOP
      END
