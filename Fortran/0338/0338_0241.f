      REAL*4   A1(10),A2(10),A3(10),A4(10)
      REAL*8   B1(10),B2(10),B3(10),B4(10)
C
      DATA A1/10*0.0/,A2/10*1.0/,A3/10*1.0/,A4/10*1.0/
      DATA B1/10*0.0E+00/,B2/10*1.0E+00/,B3/10*1.0E+00/,B4/10*1.0E+00/
C
      DO 100 I=1,10
       B1(I) = DPROD(A1(I),A2(I))
       B2(I) = DPROD(A2(I),A1(I))
  100 CONTINUE
C
      DO 200 I=1,10
       B3(I) = A3(I) * A4(I) + B4(I)
       B4(I) = A3(I) * A4(I) + B3(I)
  200 CONTINUE
C
      WRITE(6,*) A1,A2,A3,A4
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END
