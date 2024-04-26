      COMPLEX A(10),B(10),C(10)
      DO 10 I=1,10
       A(I)=CMPLX(I,I)
       B(I)=CMPLX(I*I,I*I)
       C(I)=CSQRT(A(I))+B(I)
   10 CONTINUE
C
      WRITE(6,1000) A,B,C
 1000 FORMAT(3(E9.2,E9.2))
      STOP
      END
