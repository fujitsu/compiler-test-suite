      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/3.,4.,5.,6.,7.,8.,9.,0.,1.,2./
      DATA C/10*1./
      DO 10 I=1,10
        IF (A(I)+B(I).GT.10) THEN
           C(I)=A(I)-B(I)
        ELSE
           C(I)=C(I)*A(I)*B(I)
        ENDIF
   10 CONTINUE
      WRITE(6,1) C
 1    FORMAT(5F10.5)
      STOP
      END
