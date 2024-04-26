      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B,C/10*1.,10*2./
      DATA N,M,NN/1,10,1/
      DO 10 I=N,M,NN
        B(I)=B(I)+A(I)*C(I)
        IF (B(I).GT.0) THEN
          B(I)=B(I)-(-1.*A(I))
        ENDIF
10    CONTINUE

        DO 21 I=NN,10
          A(I)=B(I)+SIN(C(I))
21      CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
