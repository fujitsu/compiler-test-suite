      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
      REAL*4      C1,C2
      REAL*8      D1,D2
C
      DATA A1/0/,A2/-1/
      DATA B1/0/,B2/-1/
      DATA C1/0.0/,C2/-1.0/
      DATA D1/0.0E+00/,D2/-1.0E+00/
C
       A1 = SIGN(A1,A2)
       A2 = SIGN(A2,A1)
       B1 = SIGN(B1,B2)
       B2 = SIGN(B2,B1)
       C1 = SIGN(C1,C2)
       C2 = SIGN(C2,C1)
       D1 = SIGN(D1,D2)
       D2 = SIGN(D2,D1)
C
      WRITE(6,*) A1,B1,C1,D1
      WRITE(6,*) A2,B2,C2,D2
      STOP
      END
