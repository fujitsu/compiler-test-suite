      COMPLEX*16 A1(10),A2(10),A3(10),A4(10),A5(10),A6(10),
     *           A7(10),A8(10),A9(10),A10(10)
      COMPLEX*16 B(10),C(10)
      INTEGER*4 D(10)
      REAL*4 E(10)
      REAL*8 F(10)
      COMPLEX*8 G(10)
      DATA B,C/10*3.,10*1./
      DATA D/10*2/
      DATA E/10*5./
      DATA F/10*7./
      DATA G/10*4./
      DO 10 I=1,10
       A1(I)=B(I)-C(I)
       A2(I)=B(I)/D(I)
       A3(I)=B(I)+D(I)
       A4(I)=B(I)+E(I)
       A5(I)=E(I)-D(I)
       A6(I)=B(I)/F(I)
       A7(I)=B(I)+F(I)
       A8(I)=B(I)+G(I)
       A9(I)=B(I)-G(I)
 10    A10(I)=E(I)/F(I)
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
