      PROGRAM MAIN
      COMPLEX*16 A(100,100)
      DOUBLE PRECISION B(100,100)
      DATA IRC/0/

      DO 10 I=1,100
        DO 10 J=1,100
          A(I,J) = I+J
          B(I,J) = J+I
   10 CONTINUE

      DO 20 I=1,10
        DO 20 J=1,10
          DO 30 K=1,100
            A(J,K) = A(J,K) + B(I,J) - I + J + K
            A(J,K) = CDSIN(A(J,K)) + I + J + K
   30     CONTINUE
          DO 20 K=1,10
            DO 50 L=1,100
              A(I,L) = A(I,L) + B(I,L) - I + J + K
              A(I,L) = CDSIN(A(I,L)) + I + J + K
   50       CONTINUE
            DO 20 M=1,10
              A(J,M) = A(J,M) + B(I,M) - I + J + K
              A(J,M) = CDSIN(A(J,M)) + I + J + K
              DO 20 N=1,10
                IF (I.LE.N) THEN
                  B(I,N) = A(I,N) + B(I,N)
                  B(I,N) = B(I,N) * 1 + 1
                ENDIF
   20 CONTINUE

      WRITE(6,*) ' ## TSET 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*) ((A(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*) ((B(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)

      DO 60 I=1,10
        DO 60 J=1,10
          DO 70 K=1,100
            IF (.TRUE.) THEN
              IF (IRC.EQ.0) THEN
                A(J,K) = A(J,K) + B(I,J) - I + J + K
                A(J,K) = CDSIN(A(J,K)) + I + J + K
              ENDIF
            ENDIF
   70     CONTINUE
          IF (.FALSE.) THEN
            DO 90 K=1,10
              DO 80 L=1,100
                A(I,L) = A(I,L) + B(I,L) - I + J + K
                A(I,L) = CDSIN(A(I,L)) + I + J + K
   80         CONTINUE
              DO 90 M=1,10
                A(J,M) = A(J,M) + B(I,M) - I + J + K
                A(J,M) = CDSIN(A(J,M)) + I + J + K
                DO 90 N=1,10
                  IF (I.LE.N) THEN
                    B(I,N) = A(I,N) + B(I,N)
                    B(I,N) = B(I,N) * 1 + 1
                  ENDIF
   90       CONTINUE
          ENDIF
   60 CONTINUE

      WRITE(6,*) ' ## TSET 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*) ((A(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,*) ((B(I,J),I=1,100,50),J=1,100,50)
      WRITE(6,*)
      STOP
      END
