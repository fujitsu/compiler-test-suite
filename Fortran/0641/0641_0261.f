      LOGICAL L1, L2, L3, L4, LZ
      DATA L1/.FALSE./ 
      DATA L2/.FALSE./ 
      DATA L3/.FALSE./ 
      DATA L4/.TRUE./ 
      LOGICAL LT(20,20), LF(20,20), LX(20,20)
      LOGICAL X1(20,20), X2(20,20), X3(20,20), X4(20,20)
      DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./ 
      DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./ 
      DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./ 
      LOGICAL T1(30,30), T2(30,30), T3(30,30), T4(30,30)
      DATA T1/900*.TRUE./ 
      DATA T2/900*.TRUE./ 
      DATA T3/900*.TRUE./ 
      DATA T4/900*.FALSE./ 
C$OMP PARALLEL SHARED (LT,LF,T1,T2,T3,T4,X1,X2,X3,X4,LX) PRIVATE (J,K,I,
C$OMP& L1,L2,L3,L4)
C$OMP DO 
      DO J=1,20
       DO K=1,5

        DO I=1,17,4
         IF (LT(I,J)) THEN
          LT(I,J) = .NOT.LT(I,J)
         END IF
         IF (LF(I,J)) THEN
          LF(I,J) = .NOT.LF(I,J)
         END IF
         IF (LT(I+1,J)) THEN
          LT(I+1,J) = .NOT.LT(I+1,J)
         END IF
         IF (LF(I+1,J)) THEN
          LF(I+1,J) = .NOT.LF(I+1,J)
         END IF
         IF (LT(I+2,J)) THEN
          LT(I+2,J) = .NOT.LT(I+2,J)
         END IF
         IF (LF(I+2,J)) THEN
          LF(I+2,J) = .NOT.LF(I+2,J)
         END IF
         IF (LT(I+3,J)) THEN
          LT(I+3,J) = .NOT.LT(I+3,J)
         END IF
         IF (LF(I+3,J)) THEN
          LF(I+3,J) = .NOT.LF(I+3,J)
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
      DO I=1,20

       DO K=1,5
        DO J=1,19,2
         L1 = T1(J,I)
         L2 = T2(J+1,I)
         L3 = T3(J+1,I)
         L4 = T4(J+1,I)
         IF (.NOT.L3 .AND. L4) THEN
          IF (.NOT.L1 .AND. L2) THEN
           LF(J,I) = .FALSE.
          ELSE
           LF(J,I) = .TRUE.
          END IF
          GO TO 6
         END IF
         IF (.NOT.L4 .AND. L3) THEN
          IF (L1 .AND. L2) THEN
           LF(J,I) = .FALSE.
          ELSE
           LF(J,I) = .TRUE.
          END IF
         END IF
         IF (.NOT.L4 .AND. .NOT.L3) THEN
          IF (L1 .AND. L2) THEN
           LF(J,I) = .FALSE.
          ELSE
           LF(J,I) = .TRUE.
          END IF
         END IF

    6    X1(J,I) = L1
         X2(J,I) = L2
         X3(J,I) = L3
         X4(J,I) = L4
         IF (.NOT.L2 .AND. .NOT.L3 .AND. L4) THEN
          T3(J+1,I) = .TRUE.
          T4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (.NOT.L2 .AND. L3 .AND. .NOT.L4) THEN
          T4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L2 .AND. L3 .AND. L4) THEN
          T2(J+1,I) = .TRUE.
          T3(J+1,I) = .FALSE.
          T4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          T4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. .NOT.L3 .AND. L4) THEN
          T3(J+1,I) = .TRUE.
          T4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. L3 .AND. .NOT.L4) THEN
          T4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          T4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (.NOT.L1 .AND. L2 .AND. L3 .AND. L4) THEN
          T1(J,I) = .TRUE.
          T2(J+1,I) = .FALSE.
          T3(J+1,I) = .FALSE.
          T4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          T4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (L2 .AND. .NOT.L3 .AND. L4) THEN
          T3(J+1,I) = .TRUE.
          T4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (L2 .AND. L3 .AND. .NOT.L4) THEN
          T4(J+1,I) = .TRUE.
          GO TO 7
         END IF
         IF (L1 .AND. L2 .AND. L3 .AND. L4) THEN
          T1(J,I) = .FALSE.
          T2(J+1,I) = .FALSE.
          T3(J+1,I) = .FALSE.
          T4(J+1,I) = .FALSE.
          GO TO 7
         END IF
         IF (L1 .OR. L2 .OR. L3 .OR. L4) THEN
         ELSE
          T1(J,I) = .FALSE.
          T2(J+1,I) = .FALSE.
          T3(J+1,I) = .FALSE.
          T4(J+1,I) = .TRUE.
         END IF
    7    LX(J,I) = LT(J,I) .AND. LF(J,I)
         IF (LX(J,I)) THEN
          LX(J,I) = .NOT.LT(J,I)
         ELSE
          LX(J,I) = .NOT.LF(J,I)
         END IF
         L1 = T1(J+1,I)
         L2 = T2(J+2,I)
         L3 = T3(J+2,I)
         L4 = T4(J+2,I)
         IF (.NOT.L3 .AND. L4) THEN
          IF (.NOT.L1 .AND. L2) THEN
           LF(J+1,I) = .FALSE.
          ELSE
           LF(J+1,I) = .TRUE.
          END IF
          GO TO 2
         END IF
         IF (.NOT.L4 .AND. L3) THEN
          IF (L1 .AND. L2) THEN
           LF(J+1,I) = .FALSE.
          ELSE
           LF(J+1,I) = .TRUE.
          END IF
         END IF
         IF (.NOT.L4 .AND. .NOT.L3) THEN
          IF (L1 .AND. L2) THEN
           LF(J+1,I) = .FALSE.
          ELSE
           LF(J+1,I) = .TRUE.
          END IF
         END IF

    2    X1(J+1,I) = L1
         X2(J+1,I) = L2
         X3(J+1,I) = L3
         X4(J+1,I) = L4
         IF (.NOT.L2 .AND. .NOT.L3 .AND. L4) THEN
          T3(J+2,I) = .TRUE.
          T4(J+2,I) = .FALSE.
          GO TO 3
         END IF
         IF (.NOT.L2 .AND. L3 .AND. .NOT.L4) THEN
          T4(J+2,I) = .TRUE.
          GO TO 3
         END IF
         IF (.NOT.L2 .AND. L3 .AND. L4) THEN
          T2(J+2,I) = .TRUE.
          T3(J+2,I) = .FALSE.
          T4(J+2,I) = .FALSE.
          GO TO 3
         END IF
         IF (.NOT.L1 .AND. L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          T4(J+2,I) = .TRUE.
          GO TO 3
         END IF
         IF (.NOT.L1 .AND. L2 .AND. .NOT.L3 .AND. L4) THEN
          T3(J+2,I) = .TRUE.
          T4(J+2,I) = .FALSE.
          GO TO 3
         END IF
         IF (.NOT.L1 .AND. L2 .AND. L3 .AND. .NOT.L4) THEN
          T4(J+2,I) = .TRUE.
          GO TO 3
         END IF
         IF (.NOT.L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          T4(J+2,I) = .TRUE.
          GO TO 3
         END IF
         IF (.NOT.L1 .AND. L2 .AND. L3 .AND. L4) THEN
          T1(J+1,I) = .TRUE.
          T2(J+2,I) = .FALSE.
          T3(J+2,I) = .FALSE.
          T4(J+2,I) = .FALSE.
          GO TO 3
         END IF
         IF (L2 .AND. .NOT.L3 .AND. .NOT.L4) THEN
          T4(J+2,I) = .TRUE.
          GO TO 3
         END IF
         IF (L2 .AND. .NOT.L3 .AND. L4) THEN
          T3(J+2,I) = .TRUE.
          T4(J+2,I) = .FALSE.
          GO TO 3
         END IF
         IF (L2 .AND. L3 .AND. .NOT.L4) THEN
          T4(J+2,I) = .TRUE.
          GO TO 3
         END IF
         IF (L1 .AND. L2 .AND. L3 .AND. L4) THEN
          T1(J+1,I) = .FALSE.
          T2(J+2,I) = .FALSE.
          T3(J+2,I) = .FALSE.
          T4(J+2,I) = .FALSE.
          GO TO 3
         END IF
         IF (L1 .OR. L2 .OR. L3 .OR. L4) THEN
         ELSE
          T1(J+1,I) = .FALSE.
          T2(J+2,I) = .FALSE.
          T3(J+2,I) = .FALSE.
          T4(J+2,I) = .TRUE.
         END IF
    3    LX(J+1,I) = LT(J+1,I) .AND. LF(J+1,I)
         IF (LX(J+1,I)) THEN
          LX(J+1,I) = .NOT.LT(J+1,I)
         ELSE
          LX(J+1,I) = .NOT.LF(J+1,I)
         END IF
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, X1, X2, X3, X4, LX, LF
      END
