      REAL*4    C1,C2
      REAL*8    D1,D2
      DATA C1/0.0/,C2/1.0/
      DATA D1/0.0E+00/,D2/1.0E+00/

       C2 = MAX(C1,C2)
       D2 = MAX(D1,D2)

      WRITE(6,*) C1,C2
      WRITE(6,*) D1,D2
      STOP
      END

