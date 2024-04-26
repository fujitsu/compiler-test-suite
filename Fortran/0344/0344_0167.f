      REAL A(10),B(10),C(10)
      DATA A/1.,0.,3.,0.,5.,0.,7.,0.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/2.,3.,2.,3.,2.,3.,2.,3.,2.,3./

      S = 0.0
      DO 10 J=1,10
      DO 10 I=1,10
        IF (A(J).NE.0) THEN
          S = S+B(I)
        ENDIF
        IF (A(J).GT.5) THEN
          B(I)=B(I)+C(I)
        ELSE
          B(I)=B(I)-C(I)
        ENDIF
   10 CONTINUE
      WRITE(6,1) S,B
 1    FORMAT(5F10.5)
      STOP
      END
