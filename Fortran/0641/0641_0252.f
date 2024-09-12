      DIMENSION A(11,11,11), B(11,11,11)
      INTEGER N11, N10, N2, N1
      PARAMETER (N11 = 11, N10 = 10, N2 = 2, N1 = 1)
      INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
      REAL RR41, RR40, RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, 
     X  RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21
     X  , RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X  RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2
      REAL RR1
C$OMP PARALLEL SHARED (B,A) PRIVATE (II1,II2,II3,II4,II5,II6,II7,II8,II9
C$OMP& ,II10,II11,K,J,I,RR30,RR31,RR32,RR33,RR34,RR15,RR16,RR17,RR18,
C$OMP& RR19,RR20,RR21,RR22,RR23,RR24,RR25,RR26,RR27,RR28,RR29,RR35,RR36,
C$OMP& RR37,RR38)
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
       DO J=1,7,4

        DO I=1,6,5
         RR30 = A(I,J+1,K) + B(I,J,K)
         RR31 = A(I+1,J+1,K) + B(I+1,J,K)
         RR32 = A(I+2,J+1,K) + B(I+2,J,K)
         RR33 = A(I+3,J+1,K) + B(I+3,J,K)
         RR34 = A(I+4,J+1,K) + B(I+4,J,K)
         RR15 = A(I,J+2,K) + B(I,J+1,K)
         RR16 = A(I+1,J+2,K) + B(I+1,J+1,K)
         RR17 = A(I+2,J+2,K) + B(I+2,J+1,K)
         RR18 = A(I+3,J+2,K) + B(I+3,J+1,K)
         RR19 = A(I+4,J+2,K) + B(I+4,J+1,K)
         RR20 = A(I,J+3,K) + B(I,J+2,K)
         RR21 = A(I+1,J+3,K) + B(I+1,J+2,K)
         RR22 = A(I+2,J+3,K) + B(I+2,J+2,K)
         RR23 = A(I+3,J+3,K) + B(I+3,J+2,K)
         RR24 = A(I+4,J+3,K) + B(I+4,J+2,K)
         RR25 = A(I,J+4,K) + B(I,J+3,K)
         RR26 = A(I+1,J+4,K) + B(I+1,J+3,K)
         RR27 = A(I+2,J+4,K) + B(I+2,J+3,K)
         RR28 = A(I+3,J+4,K) + B(I+3,J+3,K)
         RR29 = A(I+4,J+4,K) + B(I+4,J+3,K)
         A(I+4,J+3,K) = RR29
         A(I+3,J+3,K) = RR28
         A(I+2,J+3,K) = RR27
         A(I+1,J+3,K) = RR26
         A(I,J+3,K) = RR25
         A(I+4,J+2,K) = RR24
         A(I+3,J+2,K) = RR23
         A(I+2,J+2,K) = RR22
         A(I+1,J+2,K) = RR21
         A(I,J+2,K) = RR20
         A(I+4,J+1,K) = RR19
         A(I+3,J+1,K) = RR18
         A(I+2,J+1,K) = RR17
         A(I+1,J+1,K) = RR16
         A(I,J+1,K) = RR15
         A(I+4,J,K) = RR34
         A(I+3,J,K) = RR33
         A(I+2,J,K) = RR32
         A(I+1,J,K) = RR31
         A(I,J,K) = RR30
        END DO
       END DO
       DO J=9,10,1

        DO I=1,6,5
         RR35 = A(I,J+1,K) + B(I,J,K)
         RR36 = A(I+1,J+1,K) + B(I+1,J,K)
         RR37 = A(I+2,J+1,K) + B(I+2,J,K)
         RR38 = A(I+3,J+1,K) + B(I+3,J,K)
         A(I+4,J,K) = A(I+4,J+1,K) + B(I+4,J,K)
         A(I+3,J,K) = RR38
         A(I+2,J,K) = RR37
         A(I+1,J,K) = RR36
         A(I,J,K) = RR35
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (A,B) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9
C$OMP& ,RR10,RR11,RR12,J,K,I,M)
C$OMP DO 
      DO J=1,10
       DO K=1,7,4

        DO I=1,10
         RR1 = A(I+1,J,K)
         RR3 = A(I+1,J,K+1)
         RR5 = A(I+1,J,K+2)
         RR7 = A(I+1,J,K+3)
         DO M=1,6,5
          RR2 = RR1 + B(I,J,M)
          RR4 = RR3 + B(I,J,M)
          RR6 = RR5 + B(I,J,M)
          RR8 = RR7 + B(I,J,M)
          RR2 = RR1 + B(I,J,M+1)
          RR4 = RR3 + B(I,J,M+1)
          RR6 = RR5 + B(I,J,M+1)
          RR8 = RR7 + B(I,J,M+1)
          RR2 = RR1 + B(I,J,M+2)
          RR4 = RR3 + B(I,J,M+2)
          RR6 = RR5 + B(I,J,M+2)
          RR8 = RR7 + B(I,J,M+2)
          RR2 = RR1 + B(I,J,M+3)
          RR4 = RR3 + B(I,J,M+3)
          RR6 = RR5 + B(I,J,M+3)
          RR8 = RR7 + B(I,J,M+3)
          RR2 = RR1 + B(I,J,M+4)
          RR4 = RR3 + B(I,J,M+4)
          RR6 = RR5 + B(I,J,M+4)
          RR8 = RR7 + B(I,J,M+4)
         END DO
         A(I,J,K) = RR2
         A(I,J,K+1) = RR4
         A(I,J,K+2) = RR6
         A(I,J,K+3) = RR8
        END DO
       END DO

       DO I=1,10
        RR9 = A(I+1,J,9)
        RR11 = A(I+1,J,10)
        DO M=1,6,5
         RR10 = RR9 + B(I,J,M)
         RR12 = RR11 + B(I,J,M)
         RR10 = RR9 + B(I,J,M+1)
         RR12 = RR11 + B(I,J,M+1)
         RR10 = RR9 + B(I,J,M+2)
         RR12 = RR11 + B(I,J,M+2)
         RR10 = RR9 + B(I,J,M+3)
         RR12 = RR11 + B(I,J,M+3)
         RR10 = RR9 + B(I,J,M+4)
         RR12 = RR11 + B(I,J,M+4)
        END DO
        A(I,J,9) = RR10
        A(I,J,10) = RR12
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (A,B) PRIVATE (RR13,RR14,RR39,RR40,RR41,J,M,I,K)

      DO K=2,11
C$OMP DO 
       DO J=1,10
        DO M=1,10
         DO I=2,8,4
          RR39 = A(I-1,J+1,K-1) + B(I,J,K) * 2.
          RR40 = A(I,J+1,K-1) + B(I+1,J,K) * 2.
          RR41 = A(I+1,J+1,K-1) + B(I+2,J,K) * 2.
          A(I+3,J,K) = A(I+2,J+1,K-1) + B(I+3,J,K) * 2.
          A(I+2,J,K) = RR41
          A(I+1,J,K) = RR40
          A(I,J,K) = RR39
         END DO
         RR14 = B(10,J,K) * 2.
         RR13 = B(11,J,K) * 2.
         A(10,J,K) = A(9,J+1,K-1) + RR14
         A(11,J,K) = A(10,J+1,K-1) + RR13
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
      END DO
C$OMP END PARALLEL 
      PRINT *, A
      END
