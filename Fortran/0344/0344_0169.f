      REAL A(10),B(10),C(10)
      DATA A/1.,0.,3.,0.,5.,0.,7.,0.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/10*1./
      DO 10 J=1,10
      DO 10 I=1,10
        IF (A(J).NE.0) THEN
          IF (B(I).GT.5) THEN
            C(2)=B(I)+I
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,1) B
 1    FORMAT(5F10.5)
      STOP
      END
