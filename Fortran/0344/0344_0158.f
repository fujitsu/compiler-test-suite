      REAL A(10),B(10),C(10)
      LOGICAL L(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./
      DATA C/0.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA L/5*.TRUE.,3*.FALSE.,2*.TRUE./
      DO 10 I=1,10
11      IF (L(I)) THEN
          B(I)=A(I)+C(I)*B(I)
        ELSE
          B(I)=A(I)+(C(I)/B(I))+SIN(A(I))
        ENDIF
10    CONTINUE
      WRITE(6,1) B
 1    FORMAT(5F10.5)
      STOP
      END
