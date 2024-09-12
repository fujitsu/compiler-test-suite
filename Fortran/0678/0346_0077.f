      REAL*8 A1(2000),A2(2000),A3(2000),A4(2000),A5(2000),
     *       A6(2000),A7(2000),A8(2000),A9(2000),A10(2000)
      REAL*8 B(2000),C(2000)
      INTEGER*4 D(2000)
      REAL*4 E(2000)
      COMPLEX*8 F(2000)
      COMPLEX*16 G(2000)
      DATA B,C/2000*3.,2000*2./
      DATA D/2000*5/
      DATA E/2000*4./
      DATA F/2000*(7.0,7.0)/
      DATA G/2000*(6.0,6.0)/
      DO 10 I=1,2000
       A1(I)=B(I)+C(I)
       A2(I)=B(I)-D(I)
       A3(I)=D(I)/B(I)
       A4(I)=B(I)*E(I)
       A5(I)=E(I)+B(I)
       A6(I)=B(I)-F(I)
       A7(I)=F(I)/B(I)
       A8(I)=B(I)*G(I)
       A9(I)=G(I)+B(I)
 10    A10(I)=G(I)-E(I)
      PRINT *,A1
      PRINT *,A2
      PRINT *,A3
      PRINT *,A4
      PRINT *,A5
      PRINT *,A6
      PRINT *,A7
      PRINT *,A8
      PRINT *,A9
      PRINT *,A10
      STOP
      END
