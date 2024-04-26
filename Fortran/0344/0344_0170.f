      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/10*0./
      N=1
      M=10
      DO 10 I=N,M
        A(I)=A(I)*B(I)+M+C(I)
   10 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
