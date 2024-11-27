      INTEGER*4 A1(1024),A2(1024),A3(1024),A4(1024),A5(1024),
     *          A6(1024),A7(1024),A8(1024),A9(1024),A10(1024)
      INTEGER*4 B(1024),C(1024),ANS(1024)
      REAL*4 D(1024)
      REAL*8 E(1024)
      COMPLEX*8 F(1024)
      COMPLEX*16 G(1024)
      DATA B/1024*6.5555/
      DATA C/1024*66.555/
      DATA D/1024*280.333/
      DATA E/1024*230.45/
      DATA F/1024*(1.3,0.)/
      DATA G/1024*(1.2,0.)/
      DO 10 I=1,1024
       A1(I)=B(I)-C(I)
       A2(I)=B(I)*D(I)
       A3(I)=D(I)+B(I)
       A4(I)=B(I)/E(I)
       A5(I)=E(I)+B(I)
       A6(I)=B(I)-F(I)
       A7(I)=F(I)+B(I)
       A8(I)=B(I)*G(I)
       A9(I)=G(I)+B(I)
       A10(I)=B(I)/E(I)
 10    ANS(I) = A10(I)+A9(I)+A8(I)+A7(I)+A6(I)+A5(I)+A4(I)+A3(I)
     E          + A2(I) + A1(I)
      PRINT *,ANS
      STOP
      END
