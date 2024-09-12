      REAL*8 A(10),B
      DATA A/10*1./,N/10/,B/0./

      DO 10 I=1,N
10        B=B+A(I)
      WRITE(6,*)A,B
      END
