      REAL*4   A1,A2
      REAL*8   B1,B2
C
      DATA A1/0.0/,A2/1.5/
      DATA B1/0.0E+00/,B2/1.5E+00/
C
       A1 = ANINT(A1)
       A2 = ANINT(A2)
       B1 = ANINT(B1)
       B2 = ANINT(B2)
C
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      STOP
      END
