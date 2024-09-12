      REAL A(20,20,5), B(20,20,5), C(20,20,5)
      REAL R(20,20,5)
      DATA A/2000*5.0/ 
      DATA B/2000*2.0/ 
      DATA C/2000*3.0/ 
      DATA R/2000*2.2/ 
      LOGICAL LT(20,20), LF(20,20), LX(20,20)
      INTEGER M3, M2, M1, N3, N2, N1
      REAL DA, D5, D2, D1
      PARAMETER (M3 = 1, M2 = 20, M1 = 1, DA = 8., D5 = 5.)
      PARAMETER (D2 = 2., D1 = 1., N3 = 1, N2 = 20, N1 = 1)
      DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./ 
      DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./ 
      DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./ 
      INTEGER II1
      REAL RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, 
     X  RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12
     X  , RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
C$OMP PARALLEL SHARED (C,B,A,LT,LF,K) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,
C$OMP& RR7,RR8,RR9,RR10,RR11,RR12,RR13,RR14,RR15,RR16,RR17,RR18,RR19,
C$OMP& RR20,RR21,RR22,RR23,RR24,RR25,RR26,RR27,RR28,RR29,RR30,RR31,RR32,
C$OMP& II1,J,I)
C$OMP DO 
      DO II1=1,5
       DO J=1,17,4

        DO I=1,17,4
         RR1 = 1.
         RR2 = 1.
         RR3 = 1.
         RR4 = 1.
         RR5 = 1.
         RR6 = 1.
         RR7 = 1.
         RR8 = 1.
         RR9 = 1.
         RR10 = 1.
         RR11 = 1.
         RR12 = 1.
         RR13 = 1.
         RR14 = 1.
         RR15 = 1.
         RR16 = 1.
         RR17 = 2.
         RR18 = 2.
         RR19 = 2.
         RR20 = 2.
         RR21 = 2.
         RR22 = 2.
         RR23 = 2.
         RR24 = 2.
         RR25 = 2.
         RR26 = 2.
         RR27 = 2.
         RR28 = 2.
         RR29 = 2.
         RR30 = 2.
         RR31 = 2.
         RR32 = 2.
         C(I,J,II1) = RR1 + RR17
         C(I+1,J,II1) = RR2 + RR18
         C(I+2,J,II1) = RR3 + RR19
         C(I+3,J,II1) = RR4 + RR20
         C(I,J+1,II1) = RR5 + RR21
         C(I+1,J+1,II1) = RR6 + RR22
         C(I+2,J+1,II1) = RR7 + RR23
         C(I+3,J+1,II1) = RR8 + RR24
         C(I,J+2,II1) = RR9 + RR25
         C(I+1,J+2,II1) = RR10 + RR26
         C(I+2,J+2,II1) = RR11 + RR27
         C(I+3,J+2,II1) = RR12 + RR28
         C(I,J+3,II1) = RR13 + RR29
         C(I+1,J+3,II1) = RR14 + RR30
         C(I+2,J+3,II1) = RR15 + RR31
         C(I+3,J+3,II1) = RR16 + RR32
         B(I+3,J+3,II1) = RR32
         B(I+2,J+3,II1) = RR31
         B(I+1,J+3,II1) = RR30
         B(I,J+3,II1) = RR29
         B(I+3,J+2,II1) = RR28
         B(I+2,J+2,II1) = RR27
         B(I+1,J+2,II1) = RR26
         B(I,J+2,II1) = RR25
         B(I+3,J+1,II1) = RR24
         B(I+2,J+1,II1) = RR23
         B(I+1,J+1,II1) = RR22
         B(I,J+1,II1) = RR21
         B(I+3,J,II1) = RR20
         B(I+2,J,II1) = RR19
         B(I+1,J,II1) = RR18
         B(I,J,II1) = RR17
         A(I+3,J+3,II1) = RR16
         A(I+2,J+3,II1) = RR15
         A(I+1,J+3,II1) = RR14
         A(I,J+3,II1) = RR13
         A(I+3,J+2,II1) = RR12
         A(I+2,J+2,II1) = RR11
         A(I+1,J+2,II1) = RR10
         A(I,J+2,II1) = RR9
         A(I+3,J+1,II1) = RR8
         A(I+2,J+1,II1) = RR7
         A(I+1,J+1,II1) = RR6
         A(I,J+1,II1) = RR5
         A(I+3,J,II1) = RR4
         A(I+2,J,II1) = RR3
         A(I+1,J,II1) = RR2
         A(I,J,II1) = RR1
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (K)
      DO J=1,20

       DO I=1,20
        IF (A(I,J,1) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,1) .GT. 8.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
        IF (A(I,J,2) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,2) .GT. 8.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
        IF (A(I,J,3) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,3) .GT. 8.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
        IF (A(I,J,4) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,4) .GT. 8.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
       END DO

       DO I=1,20
        IF (A(I,J,5) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,5) .GT. 8.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

      DO K=1,5
       DO J=1,20,1
        IF (K .EQ. J .OR. J .EQ. K) THEN
         DO I=1,20
          IF (.NOT.LF(K,K)) THEN
           IF (.NOT.LF(J,I)) THEN
            A(J,I,K) = A(J,I,K) - C(J,I,K)
            LF(J,I) = .FALSE.
           END IF
          END IF
          IF (LT(K,K)) THEN
           IF (.NOT.LT(J,I)) THEN
            B(J,I,K) = B(J,I,K) - A(J,I,K)
            LT(J,I) = .TRUE.
           END IF
           R(J,I,K) = A(J,I,K) - C(J,I,K) * B(J,I,K)
          END IF
         END DO
        ELSE
         DO I=1,20
          IF (.NOT.LF(K,K)) THEN
           IF (.NOT.LF(J,I)) THEN
            A(J,I,K) = A(J,I,K) - C(J,I,K)
            LF(J,I) = .FALSE.
           END IF
          END IF
          IF (LT(K,K)) THEN
           IF (.NOT.LT(J,I)) THEN
            B(J,I,K) = B(J,I,K) - A(J,I,K)
            LT(J,I) = .TRUE.
           END IF
           R(J,I,K) = A(J,I,K) - C(J,I,K) * B(J,I,K)
          END IF
         END DO
        END IF
       END DO
C$OMP PARALLEL SHARED (LX,LT,LF,K,R) PRIVATE (I,J)
C$OMP DO 
       DO I=1,20
        DO J=1,20,1
         LX(J,I) = LT(J,I) .AND. LF(J,I)
         IF (LX(J,I)) THEN
          R(J,I,K) = R(J,I,K) - 1D0
          LX(J,I) = .NOT.LT(J,I)
         ELSE
          R(J,I,K) = 1D0 + R(J,I,K)
          LX(J,I) = .NOT.LF(J,I)
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      END DO
      PRINT *, LX, R
      END
