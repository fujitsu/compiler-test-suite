      REAL*8 A(10),B(10),C(10)
      DATA B/10*1./,C/10*1./,N/10/,K/1/
      DO 10 I=K,N
10        A(I)=B(I)+C(I)
      WRITE(6,*)A,B,C
      END
