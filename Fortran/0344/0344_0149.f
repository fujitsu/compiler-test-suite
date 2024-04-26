      REAL A(10),B(10),C(10)
      LOGICAL L(10)
      INTEGER D(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      DATA D/10*1/
      DATA L/5*.TRUE.,3*.FALSE.,2*.TRUE./
      DO 10 I=1,10
        A(I)=C(I)*2.
        IF (L(I)) THEN
        IF (D(1).GT.0) THEN
          B(I)=A(I)+C(I)*B(I)
        ENDIF
        ENDIF
10    CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
