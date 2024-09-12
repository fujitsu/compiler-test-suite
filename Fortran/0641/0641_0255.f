      DIMENSION A(11,11,11), B(11,11,11)
      INTEGER N11, N10, N2, N1
      PARAMETER (N11 = 11, N10 = 10, N2 = 2, N1 = 1)
      INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
      REAL RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, 
     X  RR4, RR3, RR2, RR1
C$OMP PARALLEL SHARED (B,A) PRIVATE (II1,II2,II3,II4,II5,II6,II7,II8,II9
C$OMP& ,II10,II11,K,J,I,M1,M2)
C$OMP DO 
      DO K=1,11
       DO J=1,8,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3

        DO I=1,8,4
         II6 = I * J
         II7 = (I + 1) * J
         II8 = (I + 2) * J
         II4 = (I + 3) * J
         B(I,J,K) = II6 * K
         B(I+1,J,K) = II7 * K
         B(I+2,J,K) = II8 * K
         B(I+3,J,K) = II4 * K
         II6 = I * II1
         II7 = (I + 1) * II1
         II8 = (I + 2) * II1
         II4 = (I + 3) * II1
         B(I,J+1,K) = II6 * K
         B(I+1,J+1,K) = II7 * K
         B(I+2,J+1,K) = II8 * K
         B(I+3,J+1,K) = II4 * K
         II6 = I * II2
         II7 = (I + 1) * II2
         II8 = (I + 2) * II2
         II4 = (I + 3) * II2
         B(I,J+2,K) = II6 * K
         B(I+1,J+2,K) = II7 * K
         B(I+2,J+2,K) = II8 * K
         B(I+3,J+2,K) = II4 * K
         II6 = I * II3
         II7 = (I + 1) * II3
         II8 = (I + 2) * II3
         II4 = (I + 3) * II3
         B(I,J+3,K) = II6 * K
         B(I+1,J+3,K) = II7 * K
         B(I+2,J+3,K) = II8 * K
         B(I+3,J+3,K) = II4 * K
         A(I,J,K) = I * J + K
         A(I+1,J,K) = (I + 1) * J + K
         A(I+2,J,K) = (I + 2) * J + K
         A(I+3,J,K) = (I + 3) * J + K
         A(I,J+1,K) = I * II1 + K
         A(I+1,J+1,K) = (I + 1) * II1 + K
         A(I+2,J+1,K) = (I + 2) * II1 + K
         A(I+3,J+1,K) = (I + 3) * II1 + K
         A(I,J+2,K) = I * II2 + K
         A(I+1,J+2,K) = (I + 1) * II2 + K
         A(I+2,J+2,K) = (I + 2) * II2 + K
         A(I+3,J+2,K) = (I + 3) * II2 + K
         A(I,J+3,K) = I * II3 + K
         A(I+1,J+3,K) = (I + 1) * II3 + K
         A(I+2,J+3,K) = (I + 2) * II3 + K
         A(I+3,J+3,K) = (I + 3) * II3 + K
        END DO
        DO I=9,11,1
         II4 = I * J
         B(I,J,K) = II4 * K
         II4 = I * II1
         B(I,J+1,K) = II4 * K
         II4 = I * II2
         B(I,J+2,K) = II4 * K
         II4 = I * II3
         B(I,J+3,K) = II4 * K
         A(I,J,K) = I * J + K
         A(I,J+1,K) = I * II1 + K
         A(I,J+2,K) = I * II2 + K
         A(I,J+3,K) = I * II3 + K
        END DO
       END DO
       DO J=9,11,1

        DO I=1,8,4
         II9 = I * J
         II10 = (I + 1) * J
         II11 = (I + 2) * J
         II5 = (I + 3) * J
         B(I,J,K) = II9 * K
         B(I+1,J,K) = II10 * K
         B(I+2,J,K) = II11 * K
         B(I+3,J,K) = II5 * K
         A(I,J,K) = I * J + K
         A(I+1,J,K) = (I + 1) * J + K
         A(I+2,J,K) = (I + 2) * J + K
         A(I+3,J,K) = (I + 3) * J + K
        END DO
        DO I=9,11,1
         II5 = I * J
         B(I,J,K) = II5 * K
         A(I,J,K) = I * J + K
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO K=1,10
       DO J=1,10
        DO I=1,10

         DO M1=1,10
          DO M2=1,6,5
           A(I,J,K) = A(I,J,K) + B(I,J,K)
           A(I,J,K) = A(I,J,K) + B(I,J,K)
           A(I,J,K) = A(I,J,K) + B(I,J,K)
           A(I,J,K) = A(I,J,K) + B(I,J,K)
           A(I,J,K) = A(I,J,K) + B(I,J,K)
          END DO
         END DO
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (B,A) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9
C$OMP& ,RR10,RR11,RR12,RR13,RR14,RR15,K,J,I,M1,M2)
C$OMP DO 
      DO K=1,6,5
       DO J=1,10

        DO I=1,10
         RR1 = B(I,J,K)
         RR2 = A(I+1,J+1,K)
         RR4 = B(I,J,K+1)
         RR5 = A(I+1,J+1,K+1)
         RR7 = B(I,J,K+2)
         RR8 = A(I+1,J+1,K+2)
         RR10 = B(I,J,K+3)
         RR11 = A(I+1,J+1,K+3)
         RR13 = B(I,J,K+4)
         RR14 = A(I+1,J+1,K+4)
         DO M1=1,10
          DO M2=1,6,5
           RR3 = RR2 + RR1
           RR6 = RR5 + RR4
           RR9 = RR8 + RR7
           RR12 = RR11 + RR10
           RR15 = RR14 + RR13
           RR3 = RR2 + RR1
           RR6 = RR5 + RR4
           RR9 = RR8 + RR7
           RR12 = RR11 + RR10
           RR15 = RR14 + RR13
           RR3 = RR2 + RR1
           RR6 = RR5 + RR4
           RR9 = RR8 + RR7
           RR12 = RR11 + RR10
           RR15 = RR14 + RR13
           RR3 = RR2 + RR1
           RR6 = RR5 + RR4
           RR9 = RR8 + RR7
           RR12 = RR11 + RR10
           RR15 = RR14 + RR13
           RR3 = RR2 + RR1
           RR6 = RR5 + RR4
           RR9 = RR8 + RR7
           RR12 = RR11 + RR10
           RR15 = RR14 + RR13
          END DO
         END DO
         A(I,J,K+4) = RR15
         A(I,J,K+3) = RR12
         A(I,J,K+2) = RR9
         A(I,J,K+1) = RR6
         A(I,J,K) = RR3
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
      END
