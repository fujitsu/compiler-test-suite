      DIMENSION A(10,10,10), B(10,10,10), IL(10,10,10)
      INTEGER II16, II15, II14, II13, II12, II11, II10, II9, II8, II7, 
     X  II6, II5, II4, II3, II2, II1

C$OMP PARALLEL SHARED (A,IL,B) PRIVATE (II3,II2,II1,II4,II5,II6,II7,II8,
C$OMP& II9,II10,II11,II12,II13,II14,II15,II16,K,J,I)
C$OMP DO 
      DO II3=1,10
       DO II2=1,7,4
        DO II1=1,6,5
         A(II1,II2,II3) = 0.
         A(II1+1,II2,II3) = 0.
         A(II1+2,II2,II3) = 0.
         A(II1+3,II2,II3) = 0.
         A(II1+4,II2,II3) = 0.
         A(II1,II2+1,II3) = 0.
         A(II1+1,II2+1,II3) = 0.
         A(II1+2,II2+1,II3) = 0.
         A(II1+3,II2+1,II3) = 0.
         A(II1+4,II2+1,II3) = 0.
         A(II1,II2+2,II3) = 0.
         A(II1+1,II2+2,II3) = 0.
         A(II1+2,II2+2,II3) = 0.
         A(II1+3,II2+2,II3) = 0.
         A(II1+4,II2+2,II3) = 0.
         A(II1,II2+3,II3) = 0.
         A(II1+1,II2+3,II3) = 0.
         A(II1+2,II2+3,II3) = 0.
         A(II1+3,II2+3,II3) = 0.
         A(II1+4,II2+3,II3) = 0.
        END DO
       END DO
       DO II2=9,10,1
        DO II1=1,6,5
         A(II1,II2,II3) = 0.
         A(II1+1,II2,II3) = 0.
         A(II1+2,II2,II3) = 0.
         A(II1+3,II2,II3) = 0.
         A(II1+4,II2,II3) = 0.
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II4 = J + 1
        II5 = J + 2
        II6 = J + 3
        DO I=1,6,5
         IL(I,J,K) = I
         IL(I+1,J,K) = I + 1
         IL(I+2,J,K) = I + 2
         IL(I+3,J,K) = I + 3
         IL(I+4,J,K) = I + 4
         IL(I,J+1,K) = I
         IL(I+1,J+1,K) = I + 1
         IL(I+2,J+1,K) = I + 2
         IL(I+3,J+1,K) = I + 3
         IL(I+4,J+1,K) = I + 4
         IL(I,J+2,K) = I
         IL(I+1,J+2,K) = I + 1
         IL(I+2,J+2,K) = I + 2
         IL(I+3,J+2,K) = I + 3
         IL(I+4,J+2,K) = I + 4
         IL(I,J+3,K) = I
         IL(I+1,J+3,K) = I + 1
         IL(I+2,J+3,K) = I + 2
         IL(I+3,J+3,K) = I + 3
         IL(I+4,J+3,K) = I + 4
         II9 = I * J
         II10 = (I + 1) * J
         II11 = (I + 2) * J
         II12 = (I + 3) * J
         II7 = (I + 4) * J
         B(I,J,K) = II9 * K
         B(I+1,J,K) = II10 * K
         B(I+2,J,K) = II11 * K
         B(I+3,J,K) = II12 * K
         B(I+4,J,K) = II7 * K
         II9 = I * II4
         II10 = (I + 1) * II4
         II11 = (I + 2) * II4
         II12 = (I + 3) * II4
         II7 = (I + 4) * II4
         B(I,J+1,K) = II9 * K
         B(I+1,J+1,K) = II10 * K
         B(I+2,J+1,K) = II11 * K
         B(I+3,J+1,K) = II12 * K
         B(I+4,J+1,K) = II7 * K
         II9 = I * II5
         II10 = (I + 1) * II5
         II11 = (I + 2) * II5
         II12 = (I + 3) * II5
         II7 = (I + 4) * II5
         B(I,J+2,K) = II9 * K
         B(I+1,J+2,K) = II10 * K
         B(I+2,J+2,K) = II11 * K
         B(I+3,J+2,K) = II12 * K
         B(I+4,J+2,K) = II7 * K
         II9 = I * II6
         II10 = (I + 1) * II6
         II11 = (I + 2) * II6
         II12 = (I + 3) * II6
         II7 = (I + 4) * II6
         B(I,J+3,K) = II9 * K
         B(I+1,J+3,K) = II10 * K
         B(I+2,J+3,K) = II11 * K
         B(I+3,J+3,K) = II12 * K
         B(I+4,J+3,K) = II7 * K
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         IL(I,J,K) = I
         IL(I+1,J,K) = I + 1
         IL(I+2,J,K) = I + 2
         IL(I+3,J,K) = I + 3
         IL(I+4,J,K) = I + 4
         II13 = I * J
         II14 = (I + 1) * J
         II15 = (I + 2) * J
         II16 = (I + 3) * J
         II8 = (I + 4) * J
         B(I,J,K) = II13 * K
         B(I+1,J,K) = II14 * K
         B(I+2,J,K) = II15 * K
         B(I+3,J,K) = II16 * K
         B(I+4,J,K) = II8 * K
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

      DO I=1,10
       DO J=1,10
        DO K=1,6,5
         A(IL(I,J,K),IL(I,J,K),IL(I,J,K)) = B(I,J,K)
         A(IL(I,J,K+1),IL(I,J,K+1),IL(I,J,K+1)) = B(I,J,K+1)
         A(IL(I,J,K+2),IL(I,J,K+2),IL(I,J,K+2)) = B(I,J,K+2)
         A(IL(I,J,K+3),IL(I,J,K+3),IL(I,J,K+3)) = B(I,J,K+3)
         A(IL(I,J,K+4),IL(I,J,K+4),IL(I,J,K+4)) = B(I,J,K+4)
        END DO
       END DO
      END DO
      PRINT *, A

      DO I=1,10
       DO J=1,10
        DO K=1,6,5
         A(IL(I,J,K),IL(I,J,K),IL(I,J,K)) = A(IL(I,J,K),IL(I,J,K),IL(I,J
     X     ,K)) + B(I,J,K)
         A(IL(I,J,K+1),IL(I,J,K+1),IL(I,J,K+1)) = A(IL(I,J,K+1),IL(I,J,K
     X     +1),IL(I,J,K+1)) + B(I,J,K+1)
         A(IL(I,J,K+2),IL(I,J,K+2),IL(I,J,K+2)) = A(IL(I,J,K+2),IL(I,J,K
     X     +2),IL(I,J,K+2)) + B(I,J,K+2)
         A(IL(I,J,K+3),IL(I,J,K+3),IL(I,J,K+3)) = A(IL(I,J,K+3),IL(I,J,K
     X     +3),IL(I,J,K+3)) + B(I,J,K+3)
         A(IL(I,J,K+4),IL(I,J,K+4),IL(I,J,K+4)) = A(IL(I,J,K+4),IL(I,J,K
     X     +4),IL(I,J,K+4)) + B(I,J,K+4)
        END DO
       END DO
      END DO
      PRINT *, A
      END
