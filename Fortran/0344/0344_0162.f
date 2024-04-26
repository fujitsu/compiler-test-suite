      REAL A(10),B(10),C(10)
      LOGICAL L(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA C/10*1./

      DO 10 I=1,10
        IF (A(I).GT.5) THEN
          B(I)=B(I)+C(I)
        ELSE
          GOTO 10
        ENDIF
        IF (L(I)) THEN
          A(I)=B(I)+C(I)
        ENDIF
   10 CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
