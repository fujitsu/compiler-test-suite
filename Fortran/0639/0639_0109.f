      REAL        A(20),B(20),C(20),EA(10),EB(10),EC(10),D(10),E(10)
      EQUIVALENCE (A(11),EA(1),EX),(B(11),EB(1),EY),(C(11),EC(1),EZ)
      DATA        A,B,C,D,E/20*2.,20*4.,20*6.,10*8.,10*10./
      LOGICAL     L(20)
      DATA        L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     2              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     3              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./

      DO 10 I=1,10
        A(I)  = EA(I) + A(I) + EB(I)
   10 CONTINUE
      PRINT  *,A

      DO 20 J=1,5
      DO 20 I=1,10
        EA(I)  = A(I) + B(I)
        IF(L(I)) THEN
          A(I) = EA(I)
        ENDIF
   20 CONTINUE
      PRINT  *,A

      DO 30 J=1,5
      DO 30 I=1,10
        A(I) = EA(I) + A(I)
        B(I) = EB(I) * D(I)
        C(I) = B(I)  - EC(I)
   30 CONTINUE
      PRINT  *,(A(I),B(I),C(I),I=1,10)

      DO 40 I=1,10
        EA(I) = E(I) + B(I)
        EB(I) = EC(I)+ EA(I)
        EA(I) = EB(I)+ C(1)
   40 CONTINUE
      PRINT  *,EA

      DO 50 I=1,10
        EA(I)  = A(I) + B(I)
        C(I+10)= A(I) * B(I)
        A(I)   = EA(I) + EC(I)
   50 CONTINUE
      PRINT  *,(A(I),I=1,10)
      END
