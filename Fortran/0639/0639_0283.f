      REAL*8     C(100),A(100),B(100)
      LOGICAL    L(100)
      DATA       C/100*Z'0000000000000001'/
      DO 10 I=1,100
      A(I) = FLOAT(I)
      B(I) = FLOAT(I)
      L(I) = .TRUE.
      IF(MOD(I,2).NE.0) THEN
        L(I) = .FALSE.
      ELSE
        C(I) = FLOAT(I)
      ENDIF
   10 CONTINUE



      DO 20 I=1,100
      SC = 0.
      IF(L(I)) THEN
        C(I) = A(I) + C(I)
      ELSE
        C(I) = 0.
      ENDIF
   20 CONTINUE

      PRINT *,C
      END
