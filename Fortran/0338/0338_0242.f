      INTEGER*2 A1,A2
      INTEGER*4 B1,B2
      REAL*4    C1,C2
      REAL*8    D1,D2
C
      DATA A1/0/,A2/1.0/
      DATA B1/0/,B2/1.0E+00/
      DATA C1/0.0/,C2/1.0/
      DATA D1/0.0E+00/,D2/1.0E+00/
C
       A1 = MAX(A1,A2)
       B1 = MAX(B1,B2)
       C2 = MAX(C1,C2)
       D2 = MAX(D1,D2)
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      WRITE(6,*) C1,C2
      WRITE(6,*) D1,D2
      STOP
      END
