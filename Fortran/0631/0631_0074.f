      PROGRAM MAIN
      REAL A(3000),B(3000)
      DATA M/0/
      DO 5 I=1,3000
        A(I) = I
        B(I) = -I
    5 CONTINUE

      DO 10 I=1,3000
        A(I) = SIN(A(I) + I)
        IF (A(I).LE.0.5) THEN
          A(I) = ABS(A(I)) + I
          IF (I.LE.A(I)) THEN
            B(I) = B(I) + A(I) /I
          ELSE
            B(I) = B(I) / I
          ENDIF
        ENDIF
   10 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' ### A ### '
      WRITE(6,1) (A(I),I=1,3000,100)
      WRITE(6,*)
      WRITE(6,*) ' ### B ### '
      WRITE(6,1) (B(I),I=1,3000,100)
      WRITE(6,*)

      DO 20 I=1,3000
        IF (B(I).LT.0.5) GOTO 20
        B(I) = ABS(B(I)) + 1
        M = B(I)
        IF (A(I)/M) 21,22,20
   21   B(I) = SIN(B(I) + I)
        M = M -1 + I
   22   IF (M.NE.I) GOTO 20
        A(I) = A(I) -M + B(I)
   20 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' ### A ### '
      WRITE(6,1) (A(I),I=1,3000,100)
      WRITE(6,*)
      WRITE(6,*) ' ### B ### '
      WRITE(6,1) (B(I),I=1,3000,100)
      WRITE(6,*)
      WRITE(6,*) ' ### M ### '
      WRITE(6,*) M
      WRITE(6,*)

      DO 30 I=1,3000
        A(I) = MOD(I,3)
        B(I) = I
        IF (A(I).EQ.0) THEN
          B(I) = I
        ENDIF
        M = A(I) + B(I)
   30 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' ### A ### '
      WRITE(6,1) (A(I),I=1,3000,100)
      WRITE(6,*)
      WRITE(6,*) ' ### B ### '
      WRITE(6,1) (B(I),I=1,3000,100)
      WRITE(6,*)
      WRITE(6,*) ' ### M ### '
      WRITE(6,*) M
    1 FORMAT(5E15.6)
      STOP
      END
