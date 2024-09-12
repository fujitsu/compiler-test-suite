      PROGRAM MAIN
      COMPLEX*16 A(100,100)
      DOUBLE PRECISION B(100,100)

      DO 10 I=1,100
        DO 10 J=1,100
          A(I,J) = I+J
          B(I,J) = J+I
   10 CONTINUE

      DO 20 I=1,10
        DO 40 J=1,10
          DO 30 K=1,100
            IF (K.GT.10) GOTO 30
            A(J,K) = A(J,K) + B(I,J) - I + J + K
            A(J,K) = CDSIN(A(J,K)) + I + J + K
   30     CONTINUE
          DO 40 K=1,10
            DO 50 L=1,100
              IF (L.GT.10) GOTO 50
              A(I,L) = A(I,L) + B(I,L) - I + J + K
              A(I,L) = CDSIN(A(I,L)) + I + J + K
   50     CONTINUE
            DO 40 L=1,100
              IF (L.GT.10) GOTO 40
              A(J,L) = A(J,L) + B(I,L) - I + J + K
              A(J,L) = CDSIN(A(J,L)) + I + J + K
   40   CONTINUE
        DO 20 J=1,100
          IF (J.GT.10) GOTO 20
          IF (I.LE.J) THEN
            B(I,J) = A(I,J) + B(I,J)
            B(I,J) = B(I,J) * 1 + 1
          ENDIF
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) ((B(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)

      DO 60 I=1,10
        DO 70 J=1,10
          DO 80 K=1,100
            IF (K.GT.10) GOTO 60
            A(J,K) = A(J,K) + B(I,J) - I + J + K
            A(J,K) = CDSIN(A(J,K)) + I + J + K
   80     CONTINUE
          DO 70 K=1,10
            DO 90 L=1,100
              IF (L.GT.10) GOTO 70
              A(I,L) = A(I,L) + B(I,L) - I + J + K
              A(I,L) = CDSIN(A(I,L)) + I + J + K
   90       CONTINUE
            DO 100 L=1,100
              IF (L.GT.10) GOTO 70
              A(J,L) = A(J,L) + B(I,L) - I + J + K
              A(J,L) = CDSIN(A(J,L)) + I + J + K
  100   CONTINUE
   70   CONTINUE
        DO 110 J=1,100
          IF (J.GT.10) GOTO 60
          IF (I.LE.J) THEN
            B(I,J) = A(I,J) + B(I,J)
            B(I,J) = B(I,J) * 1 + 1
          ENDIF
  110 CONTINUE
   60 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) ((B(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)
    1 FORMAT(5E15.6)
      STOP
      END
