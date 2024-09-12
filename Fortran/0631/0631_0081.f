      PROGRAM MAIN
      REAL A(10,5000),C(10,5000),D(5000),B(10)
      DATA D/5000*0/,B/10*0/

      DO 10 I=1,10
        DO 10 J=1,5000
          A(I,J) = J
          C(I,J) = A(I,J) + 1
   10 CONTINUE

      DO 20 I=1,10
        DO 20 J=1,5000
          IF (J.LE.0) GOTO 20
          A(I,J) = COS(A(I,J)) + I
          IF (A(I,J).LE.0) GOTO 20
          C(I,J) = C(I,J) + 0
          IF (C(I,J).LE.J) GOTO 20
          IF (A(I,J).GT.0)  THEN
            A(I,J) = -A(I,J) * C(I,J) / 2
            C(I,J) = C(I,J) * C(I,J) / C(I,J)
            IF (C(I,J).LE.J) GOTO 20
          ENDIF
          C(I,J) = SIN(A(I,J)) + J
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10,5),J=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,1) ((C(I,J),I=1,10,5),J=1,5000,500)
      WRITE(6,*)

      DO 30 I=1,10
        DO 40 J=1,5000
          IF (A(I,J).LE.0) GOTO 30
          IF (C(I,J).LE.2) GOTO 30
            A(I,J) = C(I,J) + A(I,J) + 1
   40   CONTINUE
   30 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10,5),J=1,5000,500)
      WRITE(6,*)

      DO 50 I=1,10
        K = I
        DO 60 J=1,5000
          IF (A(I,J).LE.K) GOTO 70
            A(I,J) = C(I,J) + A(I,J) + 1
            D(J) = A(I,J) / K
   60   CONTINUE
        B(I) = K
   50 CONTINUE
   70 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10,5),J=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) B
      WRITE(6,*)
      WRITE(6,*) ' # D # '
      WRITE(6,1) (D(I),I=1,5000,200)
      WRITE(6,*)
      WRITE(6,*) ' # K # '
      WRITE(6,*) K
    1 FORMAT (5E15.6)
      STOP
      END
