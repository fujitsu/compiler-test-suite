      DIMENSION A(10,10,10), B(10,10,10), AMAX(10,10), AMIN(10,10)
      INTEGER II7, II6, IX11, II5, II4, IX21, II3, II2, II1
      LOGICAL LL4, LL3, LL2, LL1

C$OMP PARALLEL SHARED (A) PRIVATE (II1,II2,II3,K,J,I)
C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
        DO I=1,6,5
         A(I,J,K) = I * J - K
         A(I+1,J,K) = (I + 1) * J - K
         A(I+2,J,K) = (I + 2) * J - K
         A(I+3,J,K) = (I + 3) * J - K
         A(I+4,J,K) = (I + 4) * J - K
         A(I,J+1,K) = I * II1 - K
         A(I+1,J+1,K) = (I + 1) * II1 - K
         A(I+2,J+1,K) = (I + 2) * II1 - K
         A(I+3,J+1,K) = (I + 3) * II1 - K
         A(I+4,J+1,K) = (I + 4) * II1 - K
         A(I,J+2,K) = I * II2 - K
         A(I+1,J+2,K) = (I + 1) * II2 - K
         A(I+2,J+2,K) = (I + 2) * II2 - K
         A(I+3,J+2,K) = (I + 3) * II2 - K
         A(I+4,J+2,K) = (I + 4) * II2 - K
         A(I,J+3,K) = I * II3 - K
         A(I+1,J+3,K) = (I + 1) * II3 - K
         A(I+2,J+3,K) = (I + 2) * II3 - K
         A(I+3,J+3,K) = (I + 3) * II3 - K
         A(I+4,J+3,K) = (I + 4) * II3 - K
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         A(I,J,K) = I * J - K
         A(I+1,J,K) = (I + 1) * J - K
         A(I+2,J,K) = (I + 2) * J - K
         A(I+3,J,K) = (I + 3) * J - K
         A(I+4,J,K) = (I + 4) * J - K
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

      DO J=1,7,4
       DO I=1,6,5
        AMAX(I,J) = 0.
        AMAX(I+1,J) = 0.
        AMAX(I+2,J) = 0.
        AMAX(I+3,J) = 0.
        AMAX(I+4,J) = 0.
        AMAX(I,J+1) = 0.
        AMAX(I+1,J+1) = 0.
        AMAX(I+2,J+1) = 0.
        AMAX(I+3,J+1) = 0.
        AMAX(I+4,J+1) = 0.
        AMAX(I,J+2) = 0.
        AMAX(I+1,J+2) = 0.
        AMAX(I+2,J+2) = 0.
        AMAX(I+3,J+2) = 0.
        AMAX(I+4,J+2) = 0.
        AMAX(I,J+3) = 0.
        AMAX(I+1,J+3) = 0.
        AMAX(I+2,J+3) = 0.
        AMAX(I+3,J+3) = 0.
        AMAX(I+4,J+3) = 0.
        AMIN(I,J) = 0.
        AMIN(I+1,J) = 0.
        AMIN(I+2,J) = 0.
        AMIN(I+3,J) = 0.
        AMIN(I+4,J) = 0.
        AMIN(I,J+1) = 0.
        AMIN(I+1,J+1) = 0.
        AMIN(I+2,J+1) = 0.
        AMIN(I+3,J+1) = 0.
        AMIN(I+4,J+1) = 0.
        AMIN(I,J+2) = 0.
        AMIN(I+1,J+2) = 0.
        AMIN(I+2,J+2) = 0.
        AMIN(I+3,J+2) = 0.
        AMIN(I+4,J+2) = 0.
        AMIN(I,J+3) = 0.
        AMIN(I+1,J+3) = 0.
        AMIN(I+2,J+3) = 0.
        AMIN(I+3,J+3) = 0.
        AMIN(I+4,J+3) = 0.
       END DO
      END DO
      DO J=9,10,1
       DO I=1,6,5
        AMAX(I,J) = 0.
        AMAX(I+1,J) = 0.
        AMAX(I+2,J) = 0.
        AMAX(I+3,J) = 0.
        AMAX(I+4,J) = 0.
        AMIN(I,J) = 0.
        AMIN(I+1,J) = 0.
        AMIN(I+2,J) = 0.
        AMIN(I+3,J) = 0.
        AMIN(I+4,J) = 0.
       END DO
      END DO
      LL2 = .FALSE.
      II5 = 0
      LL4 = .FALSE.
      II7 = 0
C$OMP PARALLEL SHARED (AMAX,A,AMIN,LL2,II5,IX2,LL4,II7,IX1) PRIVATE (J,K
C$OMP& ,I,IX21,LL1,II4,IX11,LL3,II6)
      LL1 = .FALSE.
      LL3 = .FALSE.
C$OMP DO 
      DO J=1,10
       DO K=1,7,4
        DO I=1,10
         IF (AMAX(I,J) .LT. A(I,J,K)) THEN
          LL3 = .TRUE.
          II6 = J
          IX11 = K
          AMAX(I,J) = A(I,J,K)
         END IF
         IF (AMIN(I,J) .GT. A(I,J,K)) THEN
          LL1 = .TRUE.
          II4 = J
          IX21 = K
          AMIN(I,J) = A(I,J,K)
         END IF
         IF (AMAX(I,J) .LT. A(I,J,K+1)) THEN
          LL3 = .TRUE.
          II6 = J
          IX11 = K + 1
          AMAX(I,J) = A(I,J,K+1)
         END IF
         IF (AMIN(I,J) .GT. A(I,J,K+1)) THEN
          LL1 = .TRUE.
          II4 = J
          IX21 = K + 1
          AMIN(I,J) = A(I,J,K+1)
         END IF
         IF (AMAX(I,J) .LT. A(I,J,K+2)) THEN
          LL3 = .TRUE.
          II6 = J
          IX11 = K + 2
          AMAX(I,J) = A(I,J,K+2)
         END IF
         IF (AMIN(I,J) .GT. A(I,J,K+2)) THEN
          LL1 = .TRUE.
          II4 = J
          IX21 = K + 2
          AMIN(I,J) = A(I,J,K+2)
         END IF
         IF (AMAX(I,J) .LT. A(I,J,K+3)) THEN
          LL3 = .TRUE.
          II6 = J
          IX11 = K + 3
          AMAX(I,J) = A(I,J,K+3)
         END IF
         IF (AMIN(I,J) .GT. A(I,J,K+3)) THEN
          LL1 = .TRUE.
          II4 = J
          IX21 = K + 3
          AMIN(I,J) = A(I,J,K+3)
         END IF
        END DO
       END DO
       DO K=9,10,1
        DO I=1,10
         IF (AMAX(I,J) .LT. A(I,J,K)) THEN
          LL3 = .TRUE.
          II6 = J
          IX11 = K
          AMAX(I,J) = A(I,J,K)
         END IF
         IF (AMIN(I,J) .GT. A(I,J,K)) THEN
          LL1 = .TRUE.
          II4 = J
          IX21 = K
          AMIN(I,J) = A(I,J,K)
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II8)
      IF (LL3) THEN
       IF (LL4) THEN
        IF (II6 .GT. II7) THEN
         IX1 = IX11
         II7 = II6
        END IF
       ELSE
        IX1 = IX11
        II7 = II6
        LL4 = .TRUE.
       END IF
      END IF
      IF (LL1) THEN
       IF (LL2) THEN
        IF (II4 .GT. II5) THEN
         IX2 = IX21
         II5 = II4
        END IF
       ELSE
        IX2 = IX21
        II5 = II4
        LL2 = .TRUE.
       END IF
      END IF
C$OMP END CRITICAL (II8)
C$OMP END PARALLEL 
      PRINT *, AMAX, AMIN, IX1, IX2

      END
