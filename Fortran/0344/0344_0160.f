      REAL A(10),B(10),C(10),D(10)
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA D/10*1./
      DO 10 I=1,10
        A(I)=B(I)+1.
        B(I)=SIN(C(I))
        C(I)=A(I)+(A(I)-B(I))*2.
        D(I)=A(I)+B(I)/C(I)
   10 CONTINUE
      WRITE(6,1) A,B,C,D
 1    FORMAT(5F10.5)
      STOP
      END
