      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      DATA N,M,MM/1,10,1/
C
      DO 10 I =N,M,MM
        A(I)=1
        B(I)=A(I)+C(I)
        C(I)=3.
10    CONTINUE

      DO 20 J =3,1,-1
        DO 21 I1=1,10
          A(I1)=A(I1)+B(I1)+J
21      CONTINUE
        DO 22 I2=N,M
          B(I2)=B(I2)+A(I2)
22      CONTINUE
20    CONTINUE

      WRITE(6,1) A,B,C
 1    FORMAT(5F10.5)
      STOP
      END
