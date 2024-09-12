      LOGICAL M1, L
      DIMENSION A(10,10,10), B(10,10,10), M1(10,10,10)
      REAL RR1
      PARAMETER (RR1 = 1. / 2.)
      DATA L/.TRUE./ 
      INTEGER II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3
     X  , II2, II1
      REAL RR61, RR60, RR59, RR58, RR57, RR56, RR55, RR54, RR53, RR52, 
     X  RR51, RR50, RR49, RR48, RR47, RR46, RR45, RR44, RR43, RR42, RR41
     X  , RR40, RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, RR31, 
     X  RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22
      REAL RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, 
     X  RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2
      LOGICAL LL2, LL1

C$OMP PARALLEL SHARED (M1,B,A) PRIVATE (II1,II2,II3,II4,II5,II6,II7,II8,
C$OMP& II9,II10,II11,II12,II13,K,J,I)
C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
        DO I=1,6,5
         M1(I,J,K) = MOD (I, 2) .EQ. 0
         M1(I+1,J,K) = MOD (I + 1, 2) .EQ. 0
         M1(I+2,J,K) = MOD (I + 2, 2) .EQ. 0
         M1(I+3,J,K) = MOD (I + 3, 2) .EQ. 0
         M1(I+4,J,K) = MOD (I + 4, 2) .EQ. 0
         M1(I,J+1,K) = MOD (I, 2) .EQ. 0
         M1(I+1,J+1,K) = MOD (I + 1, 2) .EQ. 0
         M1(I+2,J+1,K) = MOD (I + 2, 2) .EQ. 0
         M1(I+3,J+1,K) = MOD (I + 3, 2) .EQ. 0
         M1(I+4,J+1,K) = MOD (I + 4, 2) .EQ. 0
         M1(I,J+2,K) = MOD (I, 2) .EQ. 0
         M1(I+1,J+2,K) = MOD (I + 1, 2) .EQ. 0
         M1(I+2,J+2,K) = MOD (I + 2, 2) .EQ. 0
         M1(I+3,J+2,K) = MOD (I + 3, 2) .EQ. 0
         M1(I+4,J+2,K) = MOD (I + 4, 2) .EQ. 0
         M1(I,J+3,K) = MOD (I, 2) .EQ. 0
         M1(I+1,J+3,K) = MOD (I + 1, 2) .EQ. 0
         M1(I+2,J+3,K) = MOD (I + 2, 2) .EQ. 0
         M1(I+3,J+3,K) = MOD (I + 3, 2) .EQ. 0
         M1(I+4,J+3,K) = MOD (I + 4, 2) .EQ. 0
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
         M1(I,J,K) = MOD (I, 2) .EQ. 0
         M1(I+1,J,K) = MOD (I + 1, 2) .EQ. 0
         M1(I+2,J,K) = MOD (I + 2, 2) .EQ. 0
         M1(I+3,J,K) = MOD (I + 3, 2) .EQ. 0
         M1(I+4,J,K) = MOD (I + 4, 2) .EQ. 0
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
      DO K=1,10
       DO J=1,7,4

        DO I=1,10
         IF (M1(I,J,K)) THEN
          A(I,J,K) = B(I,J,K)
         ELSE
          A(I,J,K) = 100. + B(I,J,K)
         END IF
         IF (M1(I,J+1,K)) THEN
          A(I,J+1,K) = B(I,J+1,K)
         ELSE
          A(I,J+1,K) = 100. + B(I,J+1,K)
         END IF
         IF (M1(I,J+2,K)) THEN
          A(I,J+2,K) = B(I,J+2,K)
         ELSE
          A(I,J+2,K) = 100. + B(I,J+2,K)
         END IF
         IF (M1(I,J+3,K)) THEN
          A(I,J+3,K) = B(I,J+3,K)
         ELSE
          A(I,J+3,K) = 100. + B(I,J+3,K)
         END IF
        END DO
       END DO
       DO J=9,10,1

        DO I=1,10
         IF (M1(I,J,K)) THEN
          A(I,J,K) = B(I,J,K)
         ELSE
          A(I,J,K) = 100. + B(I,J,K)
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (A,B) PRIVATE (LL2,RR3,RR5,RR7,RR9,RR11,RR2,RR4,
C$OMP& RR6,RR8,RR10,J,M,I,LL1,K)
C$OMP DO 
      DO J=1,10
       DO M=1,10
        LL2 = M .GT. 5

        DO I=1,10
         LL1 = LL2
         IF (LL1) THEN
          DO K=1,6,5
           RR3 = A(I,J,K) + B(K,I,J)
           RR5 = A(I,J,K+1) + B(K+1,I,J)
           RR7 = A(I,J,K+2) + B(K+2,I,J)
           RR9 = A(I,J,K+3) + B(K+3,I,J)
           RR11 = A(I,J,K+4) + B(K+4,I,J)
           RR2 = RR3 * RR1
           RR4 = RR5 * RR1
           RR6 = RR7 * RR1
           RR8 = RR9 * RR1
           RR10 = RR11 * RR1
           B(K+4,I,J) = RR10
           B(K+3,I,J) = RR8
           B(K+2,I,J) = RR6
           B(K+1,I,J) = RR4
           B(K,I,J) = RR2
           A(I,J,K+4) = RR11
           A(I,J,K+3) = RR9
           A(I,J,K+2) = RR7
           A(I,J,K+1) = RR5
           A(I,J,K) = RR3
          END DO
         END IF
         IF (.NOT.LL1) THEN
          DO K=1,6,5
           A(I,J,K) = M
           A(I,J,K+1) = M
           A(I,J,K+2) = M
           A(I,J,K+3) = M
           A(I,J,K+4) = M
          END DO
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (A,B) PRIVATE (RR13,RR15,RR17,RR19,RR21,RR23,RR25,
C$OMP& RR27,RR29,RR31,RR33,RR35,RR37,RR39,RR41,RR43,RR45,RR47,RR49,RR51,
C$OMP& RR53,RR55,RR57,RR59,RR61,RR12,RR14,RR16,RR18,RR20,RR22,RR24,RR26,
C$OMP& RR28,RR30,RR32,RR34,RR36,RR38,RR40,RR42,RR44,RR46,RR48,RR50,RR52,
C$OMP& RR54,RR56,RR58,RR60,J,K,I)
C$OMP DO 
      DO J=1,10
       DO K=1,6,5

        DO I=1,6,5
         RR13 = A(I,J,K) * B(K,I,J)
         RR15 = A(I+1,J,K) * B(K,I+1,J)
         RR17 = A(I+2,J,K) * B(K,I+2,J)
         RR19 = A(I+3,J,K) * B(K,I+3,J)
         RR21 = A(I+4,J,K) * B(K,I+4,J)
         RR23 = A(I,J,K+1) * B(K+1,I,J)
         RR25 = A(I+1,J,K+1) * B(K+1,I+1,J)
         RR27 = A(I+2,J,K+1) * B(K+1,I+2,J)
         RR29 = A(I+3,J,K+1) * B(K+1,I+3,J)
         RR31 = A(I+4,J,K+1) * B(K+1,I+4,J)
         RR33 = A(I,J,K+2) * B(K+2,I,J)
         RR35 = A(I+1,J,K+2) * B(K+2,I+1,J)
         RR37 = A(I+2,J,K+2) * B(K+2,I+2,J)
         RR39 = A(I+3,J,K+2) * B(K+2,I+3,J)
         RR41 = A(I+4,J,K+2) * B(K+2,I+4,J)
         RR43 = A(I,J,K+3) * B(K+3,I,J)
         RR45 = A(I+1,J,K+3) * B(K+3,I+1,J)
         RR47 = A(I+2,J,K+3) * B(K+3,I+2,J)
         RR49 = A(I+3,J,K+3) * B(K+3,I+3,J)
         RR51 = A(I+4,J,K+3) * B(K+3,I+4,J)
         RR53 = A(I,J,K+4) * B(K+4,I,J)
         RR55 = A(I+1,J,K+4) * B(K+4,I+1,J)
         RR57 = A(I+2,J,K+4) * B(K+4,I+2,J)
         RR59 = A(I+3,J,K+4) * B(K+4,I+3,J)
         RR61 = A(I+4,J,K+4) * B(K+4,I+4,J)
         RR12 = RR13 * 2.
         RR14 = RR15 * 2.
         RR16 = RR17 * 2.
         RR18 = RR19 * 2.
         RR20 = RR21 * 2.
         RR22 = RR23 * 2.
         RR24 = RR25 * 2.
         RR26 = RR27 * 2.
         RR28 = RR29 * 2.
         RR30 = RR31 * 2.
         RR32 = RR33 * 2.
         RR34 = RR35 * 2.
         RR36 = RR37 * 2.
         RR38 = RR39 * 2.
         RR40 = RR41 * 2.
         RR42 = RR43 * 2.
         RR44 = RR45 * 2.
         RR46 = RR47 * 2.
         RR48 = RR49 * 2.
         RR50 = RR51 * 2.
         RR52 = RR53 * 2.
         RR54 = RR55 * 2.
         RR56 = RR57 * 2.
         RR58 = RR59 * 2.
         RR60 = RR61 * 2.
         B(K+4,I+4,J) = RR60
         B(K+4,I+3,J) = RR58
         B(K+4,I+2,J) = RR56
         B(K+4,I+1,J) = RR54
         B(K+4,I,J) = RR52
         B(K+3,I+4,J) = RR50
         B(K+3,I+3,J) = RR48
         B(K+3,I+2,J) = RR46
         B(K+3,I+1,J) = RR44
         B(K+3,I,J) = RR42
         B(K+2,I+4,J) = RR40
         B(K+2,I+3,J) = RR38
         B(K+2,I+2,J) = RR36
         B(K+2,I+1,J) = RR34
         B(K+2,I,J) = RR32
         B(K+1,I+4,J) = RR30
         B(K+1,I+3,J) = RR28
         B(K+1,I+2,J) = RR26
         B(K+1,I+1,J) = RR24
         B(K+1,I,J) = RR22
         B(K,I+4,J) = RR20
         B(K,I+3,J) = RR18
         B(K,I+2,J) = RR16
         B(K,I+1,J) = RR14
         B(K,I,J) = RR12
         A(I+4,J,K+4) = RR61
         A(I+3,J,K+4) = RR59
         A(I+2,J,K+4) = RR57
         A(I+1,J,K+4) = RR55
         A(I,J,K+4) = RR53
         A(I+4,J,K+3) = RR51
         A(I+3,J,K+3) = RR49
         A(I+2,J,K+3) = RR47
         A(I+1,J,K+3) = RR45
         A(I,J,K+3) = RR43
         A(I+4,J,K+2) = RR41
         A(I+3,J,K+2) = RR39
         A(I+2,J,K+2) = RR37
         A(I+1,J,K+2) = RR35
         A(I,J,K+2) = RR33
         A(I+4,J,K+1) = RR31
         A(I+3,J,K+1) = RR29
         A(I+2,J,K+1) = RR27
         A(I+1,J,K+1) = RR25
         A(I,J,K+1) = RR23
         A(I+4,J,K) = RR21
         A(I+3,J,K) = RR19
         A(I+2,J,K) = RR17
         A(I+1,J,K) = RR15
         A(I,J,K) = RR13
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
      END
