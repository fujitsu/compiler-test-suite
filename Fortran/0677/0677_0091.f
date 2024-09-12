      REAL*8 A(10),B,C
      DATA A/10*1./,B/0./

      DO 10 I=1,10
10        B=B+A(I)
      C=B
      WRITE(6,*)A,B,C
      END
