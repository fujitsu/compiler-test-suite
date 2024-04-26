      REAL A(10),B(10)
      LOGICAL L(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/10*1./
      DATA L/5*.TRUE.,3*.FALSE.,2*.TRUE./
      DO 10 I=1,10
        A(I)=A(I)+B(I)
        IF (L(I)) THEN
          IF (A(I).GT.0) THEN
             B(I)=A(I)+B(I)
          ENDIF
        ENDIF
10    CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
