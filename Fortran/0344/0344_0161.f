      REAL A(10),B(10),C(10),S
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/10*1./
      DATA N,M,MM/1,10,1/
      S = 1.

      DO 10 I=N,M,MM
        S=S+A(I)
        IF (B(I).GT.5) THEN
          A(I)=A(I)+2.*C(I)
        ENDIF
   10 CONTINUE

      WRITE(6,1) S,A
 1    FORMAT(5F10.5)
      STOP
      END
