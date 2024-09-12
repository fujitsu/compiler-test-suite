      DIMENSION A(10,10,10), B(10,10,10), M1(10,10,10)
      REAL RR1
      PARAMETER (RR1 = 1. / 2.)
      INTEGER II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3
     X  , II2, II1
      REAL RR51, RR50, RR49, RR48, RR47, RR46, RR45, RR44, RR43, RR42, 
     X  RR41, RR40, RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, RR31
     X  , RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, 
     X  RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12
      REAL RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2

C$OMP PARALLEL SHARED (M1,B,A) PRIVATE (II1,II2,II3,II4,II5,II6,II7,II8,
C$OMP& II9,II10,II11,II12,II13,K,J,I)
C$OMP DO 
      DO K=1,10
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
        DO I=1,6,5
         M1(I,J,K) = I + J + K
         M1(I+1,J,K) = I + J + K + 1
         M1(I+2,J,K) = I + J + K + 2
         M1(I+3,J,K) = I + J + K + 3
         M1(I+4,J,K) = I + J + K + 4
         M1(I,J+1,K) = I + J + K + 1
         M1(I+1,J+1,K) = I + J + K + 2
         M1(I+2,J+1,K) = I + J + K + 3
         M1(I+3,J+1,K) = I + J + K + 4
         M1(I+4,J+1,K) = I + J + K + 5
         M1(I,J+2,K) = I + J + K + 2
         M1(I+1,J+2,K) = I + J + K + 3
         M1(I+2,J+2,K) = I + J + K + 4
         M1(I+3,J+2,K) = I + J + K + 5
         M1(I+4,J+2,K) = I + J + K + 6
         M1(I,J+3,K) = I + J + K + 3
         M1(I+1,J+3,K) = I + J + K + 4
         M1(I+2,J+3,K) = I + J + K + 5
         M1(I+3,J+3,K) = I + J + K + 6
         M1(I+4,J+3,K) = I + J + K + 7
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
         M1(I,J,K) = I + J + K
         M1(I+1,J,K) = I + J + K + 1
         M1(I+2,J,K) = I + J + K + 2
         M1(I+3,J,K) = I + J + K + 3
         M1(I+4,J,K) = I + J + K + 4
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
         IF (M1(I,J,K) / 2 .GT. 2) THEN
          A(I,J,K) = B(I,J,K)
         ELSE
          A(I,J,K) = 100. + B(I,J,K)
         END IF
         IF (M1(I,J+1,K) / 2 .GT. 2) THEN
          A(I,J+1,K) = B(I,J+1,K)
         ELSE
          A(I,J+1,K) = 100. + B(I,J+1,K)
         END IF
         IF (M1(I,J+2,K) / 2 .GT. 2) THEN
          A(I,J+2,K) = B(I,J+2,K)
         ELSE
          A(I,J+2,K) = 100. + B(I,J+2,K)
         END IF
         IF (M1(I,J+3,K) / 2 .GT. 2) THEN
          A(I,J+3,K) = B(I,J+3,K)
         ELSE
          A(I,J+3,K) = 100. + B(I,J+3,K)
         END IF
        END DO
       END DO
       DO J=9,10,1

        DO I=1,10
         IF (M1(I,J,K) / 2 .GT. 2) THEN
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
C$OMP PARALLEL SHARED (A,B) PRIVATE (RR3,RR5,RR7,RR9,RR11,RR13,RR15,RR17
C$OMP& ,RR19,RR21,RR23,RR25,RR27,RR29,RR31,RR33,RR35,RR37,RR39,RR41,RR43
C$OMP& ,RR45,RR47,RR49,RR51,RR2,RR4,RR6,RR8,RR10,RR12,RR14,RR16,RR18,
C$OMP& RR20,RR22,RR24,RR26,RR28,RR30,RR32,RR34,RR36,RR38,RR40,RR42,RR44,
C$OMP& RR46,RR48,RR50,J,K,I)
C$OMP DO 
      DO J=1,10
       DO K=1,6,5

        DO I=1,6,5
         RR3 = A(I,J,K) + B(K,I,J)
         RR5 = A(I+1,J,K) + B(K,I+1,J)
         RR7 = A(I+2,J,K) + B(K,I+2,J)
         RR9 = A(I+3,J,K) + B(K,I+3,J)
         RR11 = A(I+4,J,K) + B(K,I+4,J)
         RR13 = A(I,J,K+1) + B(K+1,I,J)
         RR15 = A(I+1,J,K+1) + B(K+1,I+1,J)
         RR17 = A(I+2,J,K+1) + B(K+1,I+2,J)
         RR19 = A(I+3,J,K+1) + B(K+1,I+3,J)
         RR21 = A(I+4,J,K+1) + B(K+1,I+4,J)
         RR23 = A(I,J,K+2) + B(K+2,I,J)
         RR25 = A(I+1,J,K+2) + B(K+2,I+1,J)
         RR27 = A(I+2,J,K+2) + B(K+2,I+2,J)
         RR29 = A(I+3,J,K+2) + B(K+2,I+3,J)
         RR31 = A(I+4,J,K+2) + B(K+2,I+4,J)
         RR33 = A(I,J,K+3) + B(K+3,I,J)
         RR35 = A(I+1,J,K+3) + B(K+3,I+1,J)
         RR37 = A(I+2,J,K+3) + B(K+3,I+2,J)
         RR39 = A(I+3,J,K+3) + B(K+3,I+3,J)
         RR41 = A(I+4,J,K+3) + B(K+3,I+4,J)
         RR43 = A(I,J,K+4) + B(K+4,I,J)
         RR45 = A(I+1,J,K+4) + B(K+4,I+1,J)
         RR47 = A(I+2,J,K+4) + B(K+4,I+2,J)
         RR49 = A(I+3,J,K+4) + B(K+4,I+3,J)
         RR51 = A(I+4,J,K+4) + B(K+4,I+4,J)
         RR2 = RR3 * RR1
         RR4 = RR5 * RR1
         RR6 = RR7 * RR1
         RR8 = RR9 * RR1
         RR10 = RR11 * RR1
         RR12 = RR13 * RR1
         RR14 = RR15 * RR1
         RR16 = RR17 * RR1
         RR18 = RR19 * RR1
         RR20 = RR21 * RR1
         RR22 = RR23 * RR1
         RR24 = RR25 * RR1
         RR26 = RR27 * RR1
         RR28 = RR29 * RR1
         RR30 = RR31 * RR1
         RR32 = RR33 * RR1
         RR34 = RR35 * RR1
         RR36 = RR37 * RR1
         RR38 = RR39 * RR1
         RR40 = RR41 * RR1
         RR42 = RR43 * RR1
         RR44 = RR45 * RR1
         RR46 = RR47 * RR1
         RR48 = RR49 * RR1
         RR50 = RR51 * RR1
         B(K+4,I+4,J) = RR50
         B(K+4,I+3,J) = RR48
         B(K+4,I+2,J) = RR46
         B(K+4,I+1,J) = RR44
         B(K+4,I,J) = RR42
         B(K+3,I+4,J) = RR40
         B(K+3,I+3,J) = RR38
         B(K+3,I+2,J) = RR36
         B(K+3,I+1,J) = RR34
         B(K+3,I,J) = RR32
         B(K+2,I+4,J) = RR30
         B(K+2,I+3,J) = RR28
         B(K+2,I+2,J) = RR26
         B(K+2,I+1,J) = RR24
         B(K+2,I,J) = RR22
         B(K+1,I+4,J) = RR20
         B(K+1,I+3,J) = RR18
         B(K+1,I+2,J) = RR16
         B(K+1,I+1,J) = RR14
         B(K+1,I,J) = RR12
         B(K,I+4,J) = RR10
         B(K,I+3,J) = RR8
         B(K,I+2,J) = RR6
         B(K,I+1,J) = RR4
         B(K,I,J) = RR2
         A(I+4,J,K+4) = RR51
         A(I+3,J,K+4) = RR49
         A(I+2,J,K+4) = RR47
         A(I+1,J,K+4) = RR45
         A(I,J,K+4) = RR43
         A(I+4,J,K+3) = RR41
         A(I+3,J,K+3) = RR39
         A(I+2,J,K+3) = RR37
         A(I+1,J,K+3) = RR35
         A(I,J,K+3) = RR33
         A(I+4,J,K+2) = RR31
         A(I+3,J,K+2) = RR29
         A(I+2,J,K+2) = RR27
         A(I+1,J,K+2) = RR25
         A(I,J,K+2) = RR23
         A(I+4,J,K+1) = RR21
         A(I+3,J,K+1) = RR19
         A(I+2,J,K+1) = RR17
         A(I+1,J,K+1) = RR15
         A(I,J,K+1) = RR13
         A(I+4,J,K) = RR11
         A(I+3,J,K) = RR9
         A(I+2,J,K) = RR7
         A(I+1,J,K) = RR5
         A(I,J,K) = RR3
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      S = A(10,10,10) + B(10,10,10)
      PRINT *, A, S
      END
