      PROGRAM MAIN
      INTEGER A(1000,3000)
      REAL B(1000)

      DO 10 I=1,1000
        DO 11 J=1,3000
          B(I) = 1
          A(I,J) = 1
   11   CONTINUE
   10 CONTINUE

      DO 20 I=1,100
        DO 30 J=1,3000,1
          A(I,J) = A(I,J) + J
   30   CONTINUE
        B(I) = SIN(B(I))
        B(I) = B(I)**2 / B(I)
        B(I) = COS(B(I)) / I + B(I)
        IF (B(I).LE.0) THEN
          B(I) = -B(I)
        ELSE
          B(I) = B(I)**2
        ENDIF
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,2) ((A(I,J),I=1,1000,100),J=1,3000,200)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (B(I),I=1,1000,10)
      WRITE(6,*)

      DO 40 I=1,100
        B(I) = SIN(B(I))
        B(I) = B(I)**2 / B(I)
        B(I) = COS(B(I)) / I + B(I)
        IF (B(I).LE.0) THEN
          B(I) = -B(I)
        ELSE
          B(I) = B(I)**2
        ENDIF
        DO 50 J=1,3000,1
          A(I,J) = A(I,J) + J
   50   CONTINUE
   40 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,2) ((A(I,J),I=1,1000,100),J=1,3000,200)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (B(I),I=1,1000,10)
      WRITE(6,*)

      DO 60 I=1,100,1
        DO 70 J=1,3000,1
          B(I) = SIN(B(I))
          B(I) = B(I)**2 / B(I)
          B(I) = COS(B(I)) / I + B(I)
          IF (B(I).LE.0) THEN
            B(I) = -B(I)
          ELSE
            B(I) = B(I)**2
          ENDIF
          A(I,J) = A(I,J) + J
   70   CONTINUE
   60 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,2) ((A(I,J),I=1,1000,100),J=1,3000,200)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (B(I),I=1,1000,10)
      WRITE(6,*)
    1 FORMAT(5E15.6)
    2 FORMAT(15I5)
      STOP
      END
