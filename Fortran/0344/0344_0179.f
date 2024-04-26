      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      DATA N,M,NN/1,10,1/
      DO 10 I=N,M,NN
        B(I)=B(I)+A(I)*C(I)/2
        IF (B(I).GT.0) THEN
          B(I)=B(I)-1.
        ELSE
          B(I)=B(I)+4.
        ENDIF
10    CONTINUE
      WRITE(6,1) B
 1    FORMAT(5F10.5)
      STOP
      END
