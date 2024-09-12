      PROGRAM MAIN
      REAL A(5000),B(5000),C(10,10)
      EQUIVALENCE (A(1),B(1))

      DO 10 I=1,5000
        A(I) = SIN(REAL(I))
        B(I) = COS(A(I))
   10 CONTINUE

      DO 20 I=1,10
        DO 30 J=1,5000
          A(J) = A(J) + SQRT(B(J))
   30   CONTINUE
        A(I) = NINT(A(I))
        DO 40 J=1,3000
          DO 40 K=1,10
            DO 40 L=1,10
              C(K,L) = SIN(REAL(K+L)) + I+J+K
   40     CONTINUE
        B(I) = ABS(B(I))
        DO 20 J=1,3000
          B(J) = B(J) - AINT(A(J))
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,*)

      DO 50 I=1,10
        DO 60 J=1,5000
          A(J) = A(J) + SQRT(B(J))
   60   CONTINUE
        DO 80 J=1,10
          M = J
          DO 80 K=1,5000
            A(K) = A(K) + COS(B(K))
   80   CONTINUE
        A(I) = NINT(A(I))
        DO 70 J=1,10
          DO 70 K=1,10
            DO 90 L=1,3000
              IF (L.LE.10) THEN
                C(K,L) = SIN(REAL(K+L)) + I+J+K
              ENDIF
   90       CONTINUE
            DO 70 L=1,3000
              IF (L.LE.10) THEN
                C(K,L) = SIN(REAL(K+L)) + I+J+K
              ENDIF
   70   CONTINUE
        B(I) = ABS(B(I))
        DO 50 J=1,3000
          B(J) = B(J) - AINT(A(J))
   50 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,*)
      WRITE(6,*) ' # M # '
      WRITE(6,*) M
      WRITE(6,*)
    1 FORMAT(5E15.6)
      STOP
      END
