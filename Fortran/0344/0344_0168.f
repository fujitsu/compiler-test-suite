      REAL A(10),B(10),C(10)
      LOGICAL L(10),LL(10)
      DATA A/1.,0.,3.,0.,5.,0.,7.,0.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./

      DO 10 J=1,10
      DO 10 I=1,10
        IF (A(J).NE.0) THEN
          IF (B(I).GT.5) THEN
            C(I)=B(I)+C(I)
          ENDIF
          IF (L(I)) THEN
            C(I)=C(I)+I
            LL(I)=L(I)
          ENDIF
        ENDIF
10    CONTINUE

      WRITE(6,1) C
 1    FORMAT(5F10.5)
      WRITE(6,2) L
 2    FORMAT(5L10)
      STOP
      END
