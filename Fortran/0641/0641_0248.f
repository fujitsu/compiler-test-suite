      LOGICAL L
      DATA L/.TRUE./ 
      DIMENSION A(10,10,10), B(10,10,10), M1(10)
      REAL RR1
      PARAMETER (RR1 = 1. / 2.)
      INTEGER II28, II27, II26, II25, II24, II23, II22, II21, II20, II19
     X  , II18, II17, II16, II15, II14, II13, II12, II11, II10, II9, II8
     X  , II7, II6, II5, II4, II3, II2, II1
      REAL RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, 
     X  RR2
      LOGICAL LL2, LL1

C$OMP PARALLEL SHARED (A) PRIVATE (II3,II2,II1)
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
C$OMP END PARALLEL 

      DO I=1,6,5
       M1(I) = I
       M1(I+1) = I + 1
       M1(I+2) = I + 2
       M1(I+3) = I + 3
       M1(I+4) = I + 4
      END DO
C$OMP PARALLEL SHARED (B,M1,A) PRIVATE (II4,II5,II6,II8,II9,II10,II11,
C$OMP& II12,II13,II14,II15,II16,II17,K,J,I,II7,II19,II18,II21,II20,LL1)
C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II4 = J + 1
        II5 = J + 2
        II6 = J + 3
        DO I=1,6,5
         II10 = I * J
         II11 = (I + 1) * J
         II12 = (I + 2) * J
         II13 = (I + 3) * J
         II8 = (I + 4) * J
         B(I,J,K) = II10 * K
         B(I+1,J,K) = II11 * K
         B(I+2,J,K) = II12 * K
         B(I+3,J,K) = II13 * K
         B(I+4,J,K) = II8 * K
         II10 = I * II4
         II11 = (I + 1) * II4
         II12 = (I + 2) * II4
         II13 = (I + 3) * II4
         II8 = (I + 4) * II4
         B(I,J+1,K) = II10 * K
         B(I+1,J+1,K) = II11 * K
         B(I+2,J+1,K) = II12 * K
         B(I+3,J+1,K) = II13 * K
         B(I+4,J+1,K) = II8 * K
         II10 = I * II5
         II11 = (I + 1) * II5
         II12 = (I + 2) * II5
         II13 = (I + 3) * II5
         II8 = (I + 4) * II5
         B(I,J+2,K) = II10 * K
         B(I+1,J+2,K) = II11 * K
         B(I+2,J+2,K) = II12 * K
         B(I+3,J+2,K) = II13 * K
         B(I+4,J+2,K) = II8 * K
         II10 = I * II6
         II11 = (I + 1) * II6
         II12 = (I + 2) * II6
         II13 = (I + 3) * II6
         II8 = (I + 4) * II6
         B(I,J+3,K) = II10 * K
         B(I+1,J+3,K) = II11 * K
         B(I+2,J+3,K) = II12 * K
         B(I+3,J+3,K) = II13 * K
         B(I+4,J+3,K) = II8 * K
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         II14 = I * J
         II15 = (I + 1) * J
         II16 = (I + 2) * J
         II17 = (I + 3) * J
         II9 = (I + 4) * J
         B(I,J,K) = II14 * K
         B(I+1,J,K) = II15 * K
         B(I+2,J,K) = II16 * K
         B(I+3,J,K) = II17 * K
         B(I+4,J,K) = II9 * K
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
      DO I=1,10
       IF (I .GT. 0) THEN
        II7 = M1(I)
        DO J=1,I
         LL1 = II7 .EQ. J
         IF (LL1) THEN
          II19 = J / 4
          II18 = II19 * 4 + 1
          DO K=1,J-3,4
           A(I,J,K) = B(I,J,K)
           A(I,J,K+1) = B(I,J,K+1)
           A(I,J,K+2) = B(I,J,K+2)
           A(I,J,K+3) = B(I,J,K+3)
          END DO
          DO K=II18,J,1
           A(I,J,K) = B(I,J,K)
          END DO
         END IF
         IF (.NOT.LL1) THEN
          II21 = J / 4
          II20 = II21 * 4 + 1
          DO K=1,J-3,4
           A(I,J,K) = 100. + B(I,J,K)
           A(I,J,K+1) = 100. + B(I,J,K+1)
           A(I,J,K+2) = 100. + B(I,J,K+2)
           A(I,J,K+3) = 100. + B(I,J,K+3)
          END DO
          DO K=II20,J,1
           A(I,J,K) = 100. + B(I,J,K)
          END DO
         END IF
        END DO
       END IF
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (M1,A,B) PRIVATE (II23,II22,II25,II24,RR3,RR5,RR7,
C$OMP& RR9,RR2,RR4,RR6,RR8,RR11,RR10,J,I,M,LL2,K)
C$OMP DO 
      DO J=1,10
       II23 = M1(J) / 4
       II22 = II23 * 4 + 1
       II25 = M1(J) / 4
       II24 = II25 * 4 + 1

       DO I=1,10
        DO M=1,M1(I)
         LL2 = M .GT. 5
         IF (LL2) THEN
          DO K=1,M1(J)-3,4
           RR3 = A(I,J,K) + B(K,I,J)
           RR5 = A(I,J,K+1) + B(K+1,I,J)
           RR7 = A(I,J,K+2) + B(K+2,I,J)
           RR9 = A(I,J,K+3) + B(K+3,I,J)
           RR2 = RR3 * RR1
           RR4 = RR5 * RR1
           RR6 = RR7 * RR1
           RR8 = RR9 * RR1
           B(K+3,I,J) = RR8
           B(K+2,I,J) = RR6
           B(K+1,I,J) = RR4
           B(K,I,J) = RR2
           A(I,J,K+3) = RR9
           A(I,J,K+2) = RR7
           A(I,J,K+1) = RR5
           A(I,J,K) = RR3
          END DO
          DO K=II22,M1(J),1
           RR11 = A(I,J,K) + B(K,I,J)
           RR10 = RR11 * RR1
           B(K,I,J) = RR10
           A(I,J,K) = RR11
          END DO
         END IF
         IF (.NOT.LL2) THEN
          DO K=1,M1(J)-3,4
           A(I,J,K) = M
           A(I,J,K+1) = M
           A(I,J,K+2) = M
           A(I,J,K+3) = M
          END DO
          DO K=II24,M1(J),1
           A(I,J,K) = M
          END DO
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A

C$OMP PARALLEL SHARED (M1,A,B) PRIVATE (II26,II28,II27,RR13,RR12,I,J,K)
C$OMP DO 
      DO I=1,10
       DO J=M1(I),10
        II26 = M1(J) * 4
        II28 = (M1(J) + 9) / II26
        II27 = II28 * II26 + 1
        DO K=1,M1(J)-II26+10,II26
         A(I,J,K) = A(I,J,K) * B(K,I,J)
         A(I,J,K+M1(J)) = A(I,J,K+M1(J)) * B(K+M1(J),I,J)
         A(I,J,K+M1(J)*2) = A(I,J,K+M1(J)*2) * B(K+M1(J)*2,I,J)
         A(I,J,K+M1(J)*3) = A(I,J,K+M1(J)*3) * B(K+M1(J)*3,I,J)
         B(K,I,J) = A(I,J,K) * 2.
         B(K+M1(J),I,J) = A(I,J,K+M1(J)) * 2.
         B(K+M1(J)*2,I,J) = A(I,J,K+M1(J)*2) * 2.
         B(K+M1(J)*3,I,J) = A(I,J,K+M1(J)*3) * 2.
        END DO
        DO K=II27,10,M1(J)
         RR13 = A(I,J,K) * B(K,I,J)
         RR12 = RR13 * 2.
         B(K,I,J) = RR12
         A(I,J,K) = RR13
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
      END
