      REAL*4      A(10)
      REAL*8      B(10)
      COMPLEX*8   C(10)
      COMPLEX*16  D(10)
C
      DATA A/10*0.0/
      DATA B/10*0.0E+00/
      DATA C/10*(0.0,0.0)/
      DATA D/10*(0.0,0.0)/
C
      DO 100 I=1,10
       A(I) = B(I)
       B(I) = A(I)
       C(I) = D(I)
       D(I) = C(I)
  100 CONTINUE
C
      WRITE(6,*) A,B,C,D
      STOP
      END
