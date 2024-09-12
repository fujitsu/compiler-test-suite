      DIMENSION A(10,10,10), B(10,10,10), M1(10)
      REAL RR1
      PARAMETER (RR1 = 1. / 2.)
      INTEGER II17, II16, II15, II14, II13, II12, II11, II10, II9, II8, 
     X  II7, II6, II5, II4, II3, II2, II1
      REAL RR36, RR35, RR34, RR33, RR32, RR31, RR30, RR29, RR28, RR27, 
     X  RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16
     X  , RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, 
     X  RR4, RR3, RR2
      LOGICAL LL2, LL1

      DO I=1,6,5
       M1(I) = I
       M1(I+1) = I + 1
       M1(I+2) = I + 2
       M1(I+3) = I + 3
       M1(I+4) = I + 4
      END DO
C$OMP PARALLEL SHARED (A,B) PRIVATE (II1,II2,II3,II4,II5,II6,II7,II8,II9
C$OMP& ,II10,II11,II12,II13,K,J,I,RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9,RR10,
C$OMP& RR11,RR12,RR13,RR14,RR15,RR16,RR17,RR18,RR19,RR20,RR21,RR22,RR23,
C$OMP& RR24,RR25,RR26)
C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
        DO I=1,6,5
         A(I,J,K) = I * J + K
         A(I+1,J,K) = (I + 1) * J + K
         A(I+2,J,K) = (I + 2) * J + K
         A(I+3,J,K) = (I + 3) * J + K
         A(I+4,J,K) = (I + 4) * J + K
         A(I,J+1,K) = I * II1 + K
         A(I+1,J+1,K) = (I + 1) * II1 + K
         A(I+2,J+1,K) = (I + 2) * II1 + K
         A(I+3,J+1,K) = (I + 3) * II1 + K
         A(I+4,J+1,K) = (I + 4) * II1 + K
         A(I,J+2,K) = I * II2 + K
         A(I+1,J+2,K) = (I + 1) * II2 + K
         A(I+2,J+2,K) = (I + 2) * II2 + K
         A(I+3,J+2,K) = (I + 3) * II2 + K
         A(I+4,J+2,K) = (I + 4) * II2 + K
         A(I,J+3,K) = I * II3 + K
         A(I+1,J+3,K) = (I + 1) * II3 + K
         A(I+2,J+3,K) = (I + 2) * II3 + K
         A(I+3,J+3,K) = (I + 3) * II3 + K
         A(I+4,J+3,K) = (I + 4) * II3 + K
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
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         A(I,J,K) = I * J + K
         A(I+1,J,K) = (I + 1) * J + K
         A(I+2,J,K) = (I + 2) * J + K
         A(I+3,J,K) = (I + 3) * J + K
         A(I+4,J,K) = (I + 4) * J + K
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
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO J=1,10
       RR2 = B(1,2,J)
       DO K=1,7,4

        DO I=1,6,5
         RR4 = RR2 + A(I,J,10)
         RR5 = RR2 + A(I+1,J,10)
         RR6 = RR2 + A(I+2,J,10)
         RR7 = RR2 + A(I+3,J,10)
         RR8 = RR2 + A(I+4,J,10)
         A(I,J,K) = RR4
         RR9 = RR2 + A(I,J,10)
         A(I+1,J,K) = RR5
         RR10 = RR2 + A(I+1,J,10)
         A(I+2,J,K) = RR6
         RR11 = RR2 + A(I+2,J,10)
         A(I+3,J,K) = RR7
         RR12 = RR2 + A(I+3,J,10)
         A(I+4,J,K) = RR8
         RR13 = RR2 + A(I+4,J,10)
         A(I,J,K+1) = RR9
         RR14 = RR2 + A(I,J,10)
         A(I+1,J,K+1) = RR10
         RR15 = RR2 + A(I+1,J,10)
         A(I+2,J,K+1) = RR11
         RR16 = RR2 + A(I+2,J,10)
         A(I+3,J,K+1) = RR12
         RR17 = RR2 + A(I+3,J,10)
         A(I+4,J,K+1) = RR13
         RR18 = RR2 + A(I+4,J,10)
         A(I,J,K+2) = RR14
         RR19 = RR2 + A(I,J,10)
         A(I+1,J,K+2) = RR15
         RR20 = RR2 + A(I+1,J,10)
         A(I+2,J,K+2) = RR16
         RR21 = RR2 + A(I+2,J,10)
         A(I+3,J,K+2) = RR17
         RR22 = RR2 + A(I+3,J,10)
         A(I+4,J,K+2) = RR18
         A(I+4,J,K+3) = RR2 + A(I+4,J,10)
         A(I+3,J,K+3) = RR22
         A(I+2,J,K+3) = RR21
         A(I+1,J,K+3) = RR20
         A(I,J,K+3) = RR19
        END DO
       END DO
       RR3 = B(1,2,J)
       DO K=9,10,1

        DO I=1,6,5
         RR23 = RR3 + A(I,J,10)
         RR24 = RR3 + A(I+1,J,10)
         RR25 = RR3 + A(I+2,J,10)
         RR26 = RR3 + A(I+3,J,10)
         A(I+4,J,K) = RR3 + A(I+4,J,10)
         A(I+3,J,K) = RR26
         A(I+2,J,K) = RR25
         A(I+1,J,K) = RR24
         A(I,J,K) = RR23
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (M1,A,B) PRIVATE (LL2,II15,II14,II17,II16,RR28,
C$OMP& RR30,RR32,RR34,RR27,RR29,RR31,RR33,RR36,RR35,J,M,I,LL1,K)
C$OMP DO 
      DO J=1,10
       II15 = M1(J) / 4
       II14 = II15 * 4 + 1
       II17 = M1(J) / 4
       II16 = II17 * 4 + 1
       DO M=1,M1(J)
        LL2 = M .GT. 5

        DO I=1,10,2
         LL1 = LL2
         IF (LL1) THEN
          DO K=1,M1(J)-3,4
           RR28 = A(I,J,K) + B(K,I,J)
           RR30 = A(I,J,K+1) + B(K+1,I,J)
           RR32 = A(I,J,K+2) + B(K+2,I,J)
           RR34 = A(I,J,K+3) + B(K+3,I,J)
           RR27 = RR28 * RR1
           RR29 = RR30 * RR1
           RR31 = RR32 * RR1
           RR33 = RR34 * RR1
           B(K+3,I,J) = RR33
           B(K+2,I,J) = RR31
           B(K+1,I,J) = RR29
           B(K,I,J) = RR27
           A(I,J,K+3) = RR34
           A(I,J,K+2) = RR32
           A(I,J,K+1) = RR30
           A(I,J,K) = RR28
          END DO
          DO K=II14,M1(J),1
           RR36 = A(I,J,K) + B(K,I,J)
           RR35 = RR36 * RR1
           B(K,I,J) = RR35
           A(I,J,K) = RR36
          END DO
         END IF
         IF (.NOT.LL1) THEN
          DO K=1,M1(J)-3,4
           A(I,J,K) = M
           A(I,J,K+1) = M
           A(I,J,K+2) = M
           A(I,J,K+3) = M
          END DO
          DO K=II16,M1(J),1
           A(I,J,K) = M
          END DO
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
      END
