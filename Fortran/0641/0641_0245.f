      DIMENSION A(10,10,10), B(10,10,10), M1(10,10,10), AMAX(10,10), 
     X  AMIN(10,10)
      INTEGER II22, II21, II20, II19, II17, II16, II15, II14, II13, II12
     X  , II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
      REAL AMAX2 (10,10), AMIN2 (10,10), AMAX1 (10,10), AMIN1 (10,10)

C$OMP PARALLEL SHARED (B,A) PRIVATE (II1,II2,II3,II4,II5,II6,II7,II8,II9
C$OMP& ,II10,II11,II12,II13,K,J,I)
C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
        DO I=1,6,5
         II6 = I * J
         II7 = (I + 1) * J
         II8 = (I + 2) * J
         II9 = (I + 3) * J
         II4 = (I + 4) * J
         B(I,J,K) = II6 * K
         B(I+1,J,K) = II7 * K
         B(I+2,J,K) = II8 * K
         B(I+3,J,K) = II9 * K
         B(I+4,J,K) = II4 * K
         II6 = I * II1
         II7 = (I + 1) * II1
         II8 = (I + 2) * II1
         II9 = (I + 3) * II1
         II4 = (I + 4) * II1
         B(I,J+1,K) = II6 * K
         B(I+1,J+1,K) = II7 * K
         B(I+2,J+1,K) = II8 * K
         B(I+3,J+1,K) = II9 * K
         B(I+4,J+1,K) = II4 * K
         II6 = I * II2
         II7 = (I + 1) * II2
         II8 = (I + 2) * II2
         II9 = (I + 3) * II2
         II4 = (I + 4) * II2
         B(I,J+2,K) = II6 * K
         B(I+1,J+2,K) = II7 * K
         B(I+2,J+2,K) = II8 * K
         B(I+3,J+2,K) = II9 * K
         B(I+4,J+2,K) = II4 * K
         II6 = I * II3
         II7 = (I + 1) * II3
         II8 = (I + 2) * II3
         II9 = (I + 3) * II3
         II4 = (I + 4) * II3
         B(I,J+3,K) = II6 * K
         B(I+1,J+3,K) = II7 * K
         B(I+2,J+3,K) = II8 * K
         B(I+3,J+3,K) = II9 * K
         B(I+4,J+3,K) = II4 * K
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
         II10 = I * J
         II11 = (I + 1) * J
         II12 = (I + 2) * J
         II13 = (I + 3) * J
         II5 = (I + 4) * J
         B(I,J,K) = II10 * K
         B(I+1,J,K) = II11 * K
         B(I+2,J,K) = II12 * K
         B(I+3,J,K) = II13 * K
         B(I+4,J,K) = II5 * K
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
C$OMP PARALLEL SHARED (A,AMIN,AMAX) PRIVATE (K,J,I,AMIN1,II14,II15,AMAX1
C$OMP& ,II16,II17)
      DO II15=1,10
       DO II14=1,10
        AMIN1(II14,II15) = AMIN(II14,II15)
       END DO
      END DO
      DO II17=1,10
       DO II16=1,10
        AMAX1(II16,II17) = AMAX(II16,II17)
       END DO
      END DO
C$OMP DO 
      DO K=1,10
       DO J=1,10
        DO I=1,6,5
         AMAX1(I,J) = MAX (AMAX1(I,J), A(I,J,K))
         AMIN1(I,J) = MIN (AMIN1(I,J), A(I,J,K))
         AMAX1(I,J) = MAX (AMAX1(I,J), A(I+1,J,K))
         AMIN1(I,J) = MIN (AMIN1(I,J), A(I+1,J,K))
         AMAX1(I,J) = MAX (AMAX1(I,J), A(I+2,J,K))
         AMIN1(I,J) = MIN (AMIN1(I,J), A(I+2,J,K))
         AMAX1(I,J) = MAX (AMAX1(I,J), A(I+3,J,K))
         AMIN1(I,J) = MIN (AMIN1(I,J), A(I+3,J,K))
         AMAX1(I,J) = MAX (AMAX1(I,J), A(I+4,J,K))
         AMIN1(I,J) = MIN (AMIN1(I,J), A(I+4,J,K))
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II18)
      DO II15=1,10
       DO II14=1,10
        AMIN(II14,II15) = MIN (AMIN(II14,II15), AMIN1(II14,II15))
       END DO
      END DO
      DO II17=1,10
       DO II16=1,10
        AMAX(II16,II17) = MAX (AMAX(II16,II17), AMAX1(II16,II17))
       END DO
      END DO
C$OMP END CRITICAL (II18)
C$OMP END PARALLEL 
      PRINT *, AMAX, AMIN

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
C$OMP PARALLEL SHARED (A,B,AMIN,AMAX) PRIVATE (K,J,I,AMIN2,II19,II20,
C$OMP& AMAX2,II21,II22)
      DO II20=1,10
       DO II19=1,10
        AMIN2(II19,II20) = AMIN(II19,II20)
       END DO
      END DO
      DO II22=1,10
       DO II21=1,10
        AMAX2(II21,II22) = AMAX(II21,II22)
       END DO
      END DO
C$OMP DO 
      DO K=1,10
       DO J=1,10
        DO I=1,6,5
         AMAX2(I,J) = MAX (AMAX2(I,J), A(I,J,K))
         AMIN2(I,J) = MIN (AMIN2(I,J), B(I,J,K))
         AMAX2(I,J) = MAX (AMAX2(I,J), A(I+1,J,K))
         AMIN2(I,J) = MIN (AMIN2(I,J), B(I+1,J,K))
         AMAX2(I,J) = MAX (AMAX2(I,J), A(I+2,J,K))
         AMIN2(I,J) = MIN (AMIN2(I,J), B(I+2,J,K))
         AMAX2(I,J) = MAX (AMAX2(I,J), A(I+3,J,K))
         AMIN2(I,J) = MIN (AMIN2(I,J), B(I+3,J,K))
         AMAX2(I,J) = MAX (AMAX2(I,J), A(I+4,J,K))
         AMIN2(I,J) = MIN (AMIN2(I,J), B(I+4,J,K))
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II23)
      DO II20=1,10
       DO II19=1,10
        AMIN(II19,II20) = MIN (AMIN(II19,II20), AMIN2(II19,II20))
       END DO
      END DO
      DO II22=1,10
       DO II21=1,10
        AMAX(II21,II22) = MAX (AMAX(II21,II22), AMAX2(II21,II22))
       END DO
      END DO
C$OMP END CRITICAL (II23)
C$OMP END PARALLEL 
      PRINT *, AMAX, AMIN
      END
