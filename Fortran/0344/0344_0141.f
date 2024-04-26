      REAL A(10),B(10),C(10)
      DATA A,B,C/10*0.,10*1.,10*2./
      DO 10 I=1,10
        A(I)=B(I)+C(I)
        IF (A(I).GT.0.AND.B(I).GT.0) THEN
          B(I)=A(I)+C(I)*2
        ELSE
          B(I)=B(I)-C(I)+A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
