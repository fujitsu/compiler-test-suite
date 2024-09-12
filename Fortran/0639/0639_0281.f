      DIMENSION  C(100),A(100),B(100)
      INTEGER    IC(100)
      LOGICAL    L(100)
      EQUIVALENCE (C(1),IC(1))
      DO 10 I=1,100
      A(I) = FLOAT(I)
      B(I) = FLOAT(I)
      C(I) = FLOAT(I)
      L(I) = .TRUE.
      IF(MOD(I,2).NE.0) THEN
        L(I) = .FALSE.
        IC(I) = 1
      ENDIF
   10 CONTINUE



      DO 20 I=1,100
      IF(L(I)) THEN
        C(I) = A(I) + B(I)
      ELSE
        C(I) = A(I) * B(I)
      ENDIF
   20 CONTINUE

      PRINT *,C
      END
