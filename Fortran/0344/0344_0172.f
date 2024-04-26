      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      DO 10 I=2,10,1
        B(I)=A(I)+1
        C(I)=A(I)+B(I)
        A(I)=A(I-1)*A(I-1)
        B(I)=B(I)-C(I)
        C(I)=C(I-1)+C(I-1)
   10 CONTINUE
      WRITE(6,1) A,B,C
 1    FORMAT(5F11.3)
      STOP
      END
