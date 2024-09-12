      REAL A(20,20,5), B(20,20,5), C(20,20,5)
      REAL R(20,20,5)
      DATA A/2000*8.0/ 
      DATA B/2000*1.0/ 
      DATA C/2000*2.0/ 
      DATA R/2000*2.2/ 
      LOGICAL L1, L2, L3, L4, LZ
      LOGICAL LT(20,20), LF(20,20), LX(20,20)
      DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./ 
      DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./ 
      DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./ 
      LOGICAL LL1(30,30), LL2(30,30), LL3(30,30), LL4(30,30)
      REAL DA, D5, D2, D1
      PARAMETER (DA = 10., D5 = 5., D2 = 2., D1 = 1.)
      DATA LL1/900*.TRUE./ 
      DATA LL2/900*.TRUE./ 
      DATA LL3/900*.TRUE./ 
      DATA LL4/900*.FALSE./ 
      INTEGER II2, II1
      REAL RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, 
     X  RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12
     X  , RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
C$OMP PARALLEL SHARED (C,B,A,LT,LF,K,LL1,LL2,LL3,LL4,R,LX) PRIVATE (RR1,
C$OMP& RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9,RR10,RR11,RR12,RR13,RR14,RR15,
C$OMP& RR16,RR17,RR18,RR19,RR20,RR21,RR22,RR23,RR24,RR25,RR26,RR27,RR28,
C$OMP& RR29,RR30,RR31,RR32,II1,J,I,II2,L1,L2,L3,L4)
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
        IF (B(I,J,1) .GT. 10.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
        IF (A(I,J,2) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,2) .GT. 10.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
        IF (A(I,J,3) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,3) .GT. 10.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
        IF (A(I,J,4) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,4) .GT. 10.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
       END DO

       DO I=1,20
        IF (A(I,J,5) .GT. 5.) THEN
         LT(I,J) = .NOT.LT(I,J)
        END IF
        IF (B(I,J,5) .GT. 10.) THEN
         LF(I,J) = .NOT.LF(I,J)
        END IF
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO I=1,20

       DO II2=1,5
        DO J=1,20,1
         L1 = LL1(J,I)
         L2 = LL2(J,I)
         L3 = LL3(J,I)
         L4 = LL4(J,I)
         IF (.NOT.L3 .AND. L4) THEN
          IF (.NOT.L1 .AND. L2) THEN
           A(J,I,II2) = A(J,I,II2) - C(J,I,II2)
           LF(J,I) = .FALSE.
          ELSE
           LF(J,I) = .TRUE.
          END IF
          GO TO 6
         END IF
         IF (.NOT.L4 .AND. L3) THEN
          IF (L1 .AND. L2) THEN
           B(J,I,II2) = B(J,I,II2) - A(J,I,II2)
           LF(J,I) = .FALSE.
          ELSE
           LF(J,I) = .TRUE.
          END IF
          R(J,I,II2) = A(J,I,II2) - C(J,I,II2) * B(J,I,II2)
         END IF
         IF (.NOT.L4 .AND. .NOT.L3) THEN
          IF (L1 .AND. L2) THEN
           LF(J,I) = .FALSE.
          ELSE
           LF(J,I) = .TRUE.
          END IF
         END IF
    6    IF (.NOT.L2 .AND. .NOT.L3 .AND. L4) THEN
          LL3(J+1,I) = .TRUE.
          LL4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (.NOT.L2 .AND. L3 .AND. .NOT.L4) THEN
          LL4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L2 .AND. L3 .AND. L4) THEN
          LL2(J+1,I) = .TRUE.
          LL3(J+1,I) = .FALSE.
          LL4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          LL4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. .NOT.L3 .AND. L4) THEN
          LL3(J+1,I) = .TRUE.
          LL4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. L3 .AND. .NOT.L4) THEN
          LL4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          LL4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. L3 .AND. L4) THEN
          LL1(J+1,I) = .TRUE.
          LL2(J+1,I) = .FALSE.
          LL3(J+1,I) = .FALSE.
          LL4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          LL4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (L2 .AND. .NOT.L3 .AND. L4) THEN
          LL3(J+1,I) = .TRUE.
          LL4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (L2 .AND. L3 .AND. .NOT.L4) THEN
          LL4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (L1 .AND. L2 .AND. L3 .AND. L4) THEN
          LL1(J+1,I) = .FALSE.
          LL2(J+1,I) = .FALSE.
          LL3(J+1,I) = .FALSE.
          LL4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (L1 .OR. L2 .OR. L3 .OR. L4) THEN
         ELSE
          LL1(J+1,I) = .FALSE.
          LL2(J+1,I) = .FALSE.
          LL3(J+1,I) = .FALSE.
          LL4(J+1,I) = .TRUE.
         END IF
    7    LX(J,I) = LT(J,I) .AND. LF(J,I)
         IF (LX(J,I)) THEN
          LX(J,I) = .NOT.LT(J,I)
          R(J,I,II2) = MAX (R(J,I,II2), B(J,I,II2), A(J,I,II2))
         ELSE
          LX(J,I) = .NOT.LF(J,I)
          R(J,I,II2) = MIN (R(J,I,II2), B(J,I,II2), A(J,I,II2))
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, LF, LX, R
      END
