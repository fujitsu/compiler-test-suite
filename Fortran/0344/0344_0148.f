      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      N=1
      M=10
      S= 0
      DO 1 I=N,M
        A(I)=B(I)+C(I)
        S=S+B(I)
1     CONTINUE
      WRITE(6,2) B,S
 2    FORMAT(5F10.5)
      STOP
      END
