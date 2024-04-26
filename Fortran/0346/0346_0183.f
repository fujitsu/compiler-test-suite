      REAL*4 A1(10),A2(10),A3(10),A4(10),A5(10),A6(10),
     *       A7(10),A8(10),A9(10),A10(10)
      REAL*4 B(10),C(10)
      INTEGER*4 D(10)
      REAL*8 E(10)
      COMPLEX*8 F(10)
      COMPLEX*16 G(10)
      DATA B,C/10*2.,10*3./
      DATA D/10*3/
      DATA E/10*5./
      DATA F/10*4./
      DATA G/10*7./
      DO 10 I=1,10
       A1(I)=B(I)/C(I)
       A2(I)=B(I)+D(I)
       A3(I)=D(I)*B(I)
       A4(I)=E(I)-B(I)
       A5(I)=E(I)+B(I)
       A6(I)=B(I)*F(I)
       A7(I)=F(I)+B(I)
       A8(I)=G(I)/B(I)
       A9(I)=G(I)-B(I)
 10    A10(I)=F(I)*G(I)
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
