      REAL        A(20),B(20),C(20),EA(10),EB(10),EC(10),D(10),E(10)
      EQUIVALENCE (A(11),EA(1)),(B(11),EB(1)),(C(11),EC(1))
      DATA        A,B,C,D,E/20*2.,20*4.,20*6.,10*8.,10*10./
      LOGICAL     L(20)
      DATA        L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     2              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     3              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./

      DO 10 I=1,10
        A(I)  = EA(1) + A(I)
   10 CONTINUE
      PRINT  *,A

      DO 20 J=1,5
      DO 20 I=1,10
        EA(I)  = A(I) + B(I)
        IF(L(I)) THEN
          A(I) = EA(1)
        ENDIF
   20 CONTINUE
      PRINT  *,A

      DO 30 J=1,5
      DO 30 I=1,10
        A(I) = EA(1)  + A(I)
        B(I) = EB(10) * D(I)
        C(I) = B(I)   - EC(5)
   30 CONTINUE
      PRINT  *,(A(I),B(I),C(I),I=1,10)

      DO 40 I=1,10
        A(I)  = E(I) + B(I)
        EC(I) = EA(1)+ E(I)
        B(I)  = EB(1)+ EC(I)
   40 CONTINUE
      PRINT  *,(A(I),B(I),I=1,10),EC

      DO 50 I=1,10
        EB(I) = A(I)  + EC(10)
        EC(I) = A(I)  * EB(1)
        A(I)  = EC(I) + EB(1)
   50 CONTINUE
      PRINT  *,(A(I),I=1,10)
      END
