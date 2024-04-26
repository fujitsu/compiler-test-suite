      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/10*2./
      DO 10 I=1,10,1
        A(I)=I
        IF(A(I).GT.0) GOTO 20
           B(I)=A(I)+B(I)
20      IF (A(I).LT.0) GOTO 10
           C(I)=A(I)+B(I)-C(I)+1.
   10 CONTINUE
      WRITE(6,1) A,B,C
 1    FORMAT(5F11.3)
      STOP
      END
