      REAL*8 A(10),B(10),C(10)
      DATA A/10*0./
      DATA B/10*1./,C/10*1./,N/10/,J/2/

      DO 10 I=1,N,J
10        A(I)=B(I)+C(I)
      WRITE(6,*)A,B,C
      END
