      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA B,C/10*2.,10*3./
      N=A(1)
      M=A(10)

      DO 10 I=N,M
        A(I)=A(I)+(B(I)-C(I))
10    CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
