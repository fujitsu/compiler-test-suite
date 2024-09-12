      REAL*8 A(10),B(10),C(10)
      DATA B/10*1./,C/10*1./,K/1/

      J=K
      DO 10 I=J,J+9
10        A(I)=B(I)+C(I)
      WRITE(6,*)J,A,B,C
      END
