      INTEGER NT(100)
      DATA    NT/100*4/
      REAL*4  A(100),B(100),C(100)
      DATA    A,B,C/100*2.0,100*3.0,100*4.0/
      DATA    S/2.0/
      LOGICAL*4  L(100)
      DATA    L/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./

      RMAX = 0.0
      DO 10 I=1,100
        IF(A(I).GT.RMAX) THEN
          RMAX = A(I)
          IDX  = I
        ENDIF
   10 CONTINUE
      PRINT  *,RMAX,IDX

      RMIN = 0.0
      DO 20 I=1,100
        IF(A(I).LT.RMIN) THEN
          RMIN = A(I)
          IDX  = I
        ENDIF
   20 CONTINUE
      PRINT  *,RMIN,IDX

      DO 30 I=1,100
        A(I) = S * I
   30 CONTINUE
      PRINT *,A

      S = 0.
      DO 40 I=1,100
        S = S + A(I)
   40 CONTINUE
      PRINT *,S

      DO 50 I=1,100
        IF(I.GE.98) THEN
          A(I) = B(I) + A(I)
        ENDIF
   50 CONTINUE
      PRINT  *,A

      DO 60 I=1,10
        NT(I) = INT(A(I))
        A(I)  = FLOAT(INT(I)) + 1.0D0
        B(I)  = ABS(B(I))+ 2.0
        C(I)  = MOD(A(I),2.0) + 1.
        A(I)  = SIGN(A(I),B(I))
        B(I)  = DIM(A(I),C(I))
        C(I)  = MAX(A(I),B(I),C(I))
   60 CONTINUE
      PRINT  *,NT
      WRITE(6,109) A,B,C
 109  FORMAT(1H ,4(E13.6,3X))

      DO 70 I=1,100
        A(I) = SIN(B(I))
   70 CONTINUE
      WRITE(6,109) A

      ISM = 0
      DO 80 I=1,100
        IF(L(I)) THEN
          ISM = ISM + 1
        ENDIF
   80 CONTINUE
      PRINT  *,ISM

      DO 90 I=1,100
        IF(L(1)) THEN
          A(I) =  A(I) + B(I)
        ELSE
          A(I) = A(I) - B(I)
        ENDIF
   90 CONTINUE
      PRINT  *,A
      STOP
      END
