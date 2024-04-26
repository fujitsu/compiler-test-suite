      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      N=1
      M=10
      NN=2
      DO 20 I=N,M,NN
        C(I)=1.*B(I)
        A(I)=A(I)+B(I)*C(I)
   20 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
