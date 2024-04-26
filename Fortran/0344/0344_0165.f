      REAL A(10),B(10),C(10)
      DATA A/1.,0.,3.,0.,5.,0.,7.,0.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/10*1./
      DO 10 J=1,10
      DO 10 I=1,10
        IF (A(J).NE.0) THEN
          B(I)=B(I)+I
        ENDIF
        IF (A(5).NE.0) GOTO 10
          C(I)=B(I)+J
   10 CONTINUE
      WRITE(6,1) B,C
 1    FORMAT(5F10.5)
      STOP
      END
