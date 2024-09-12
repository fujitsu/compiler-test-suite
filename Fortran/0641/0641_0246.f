      DIMENSION A(10,10,10), B(10,10,10), M1(10,10,10)
      INTEGER II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3
     X  , II2, II1
      REAL AMAX2, AMIN2, AMAX1, AMIN1

C$OMP PARALLEL SHARED (B,A,AMIN,AMAX) PRIVATE (II1,II2,II3,II4,II5,II6,
C$OMP& II7,II8,II9,II10,II11,II12,II13,K,J,I,AMIN1,AMAX1)
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
C$OMP BARRIER

C$OMP SINGLE 
      AMAX = 0.
      AMIN = -10000.
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
      AMIN1 = AMIN
      AMAX1 = AMAX
C$OMP DO 
      DO K=1,10
       DO J=1,10
        DO I=1,6,5
         AMAX1 = MAX (AMAX1, A(I,J,K))
         AMIN1 = MIN (AMIN1, A(I,J,K))
         AMAX1 = MAX (AMAX1, A(I+1,J,K))
         AMIN1 = MIN (AMIN1, A(I+1,J,K))
         AMAX1 = MAX (AMAX1, A(I+2,J,K))
         AMIN1 = MIN (AMIN1, A(I+2,J,K))
         AMAX1 = MAX (AMAX1, A(I+3,J,K))
         AMIN1 = MIN (AMIN1, A(I+3,J,K))
         AMAX1 = MAX (AMAX1, A(I+4,J,K))
         AMIN1 = MIN (AMIN1, A(I+4,J,K))
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II14)
      AMIN = MIN (AMIN, AMIN1)
      AMAX = MAX (AMAX, AMAX1)
C$OMP END CRITICAL (II14)
C$OMP END PARALLEL 
      PRINT *, AMAX, AMIN

      AMAX = 0.
      AMIN = -10000.
C$OMP PARALLEL SHARED (A,B,AMIN,AMAX) PRIVATE (K,J,I,AMIN2,AMAX2)
      AMIN2 = AMIN
      AMAX2 = AMAX
C$OMP DO 
      DO K=1,10
       DO J=1,10
        DO I=1,6,5
         AMAX2 = MAX (AMAX2, A(I,J,K))
         AMIN2 = MIN (AMIN2, B(I,J,K))
         AMAX2 = MAX (AMAX2, A(I+1,J,K))
         AMIN2 = MIN (AMIN2, B(I+1,J,K))
         AMAX2 = MAX (AMAX2, A(I+2,J,K))
         AMIN2 = MIN (AMIN2, B(I+2,J,K))
         AMAX2 = MAX (AMAX2, A(I+3,J,K))
         AMIN2 = MIN (AMIN2, B(I+3,J,K))
         AMAX2 = MAX (AMAX2, A(I+4,J,K))
         AMIN2 = MIN (AMIN2, B(I+4,J,K))
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II15)
      AMIN = MIN (AMIN, AMIN2)
      AMAX = MAX (AMAX, AMAX2)
C$OMP END CRITICAL (II15)
C$OMP END PARALLEL 
      PRINT *, AMAX, AMIN
      END
