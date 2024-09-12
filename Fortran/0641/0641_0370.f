      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3, R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3, L4S4, L4S5, L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       REAL RR2, RR1
       LOGICAL LL7, LL6, LL5, LL4, LL3, LL2, LL1

       R4S2 = 0.

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = I
         L4S2 = .TRUE.
         L4S3 = .FALSE.
         L4S1 = .TRUE.
         L4S2 = .FALSE.
         L4S3 = L4A1(I) .AND. L4A2(I)
         L4S4 = .NOT.(L4A1(I) .AND. L4A2(I))
         L4S5 = FLOAT (I) .EQ. R4A1(I)
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, *) R4S1
       WRITE (6, *) L4S1, L4S2, L4S3

       DO I=1,10
        IF (L4A2(I)) THEN
         R4A1(I) = R4S1
         R4A2(I) = 0.
         R4S1 = R4A2(I)
         R4A1(I) = R4S1
         L4A1(I) = L4S1
         L4A2(I) = L4S2
         L4S1 = L4A1(I) .AND. L4A2(I)
         L4A1(I) = L4S1
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, *) R4A1, R4A2, R4S1
       WRITE (6, *) L4A1, L4A2, L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = 1. + R4A1(I) + R4A2(I)
         R4A1(I) = 2. + R4A2(I) + R4A1(I)
         R4S1 = R4A1(I) + R4A2(I)
         L4A1(I) = .NOT.L4S1
         L4S1 = L4A1(I) .OR. L4A2(I)
         L4A2(I) = L4S1 .AND. L4S2
         L4S2 = .NOT.L4A2(I)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 3 **'
       WRITE (6, *) R4S1, R4A1
       WRITE (6, *) L4A1, L4S1, L4A2, L4S2

       DO I=1,10
        IF (L4A2(I)) THEN
         R4A1(I) = R4S1
         R4S1 = R4A2(I)
         R4A1(I) = R4S1 + R4A2(I)
         L4A1(I) = L4S1
         L4S1 = .NOT.L4A1(I)
         L4S2 = L4S1 .AND. L4A2(I)
         L4A1(I) = L4S1 .AND. (L4S1 .AND. L4A2(I))
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 4 **'
       WRITE (6, *) R4A1, R4S1, L4A1, L4S1, L4S2

       DO I=1,10
        LL1 = L4A2(I)
        IF (LL1) THEN
         RR1 = FLOAT (I)
         DO J=1,6,5
          R4S2 = I
          R4S3 = J + 4
          L4S1 = RR1 .EQ. R4A1(J+4)
          L4S2 = FLOAT (J + 4) .EQ. R4A1(J+4)
         END DO
         R4S1 = R4S2 + R4S3
         L4S3 = L4S1 .AND. L4S2
         L4S4 = L4A1(10) .AND. L4S1
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 5 **'
       WRITE (6, *) R4S1, R4S2, R4S2, L4S1, L4S2, L4S3, L4S4, L4S5

       DO I=1,10
        LL2 = L4A1(I)
        IF (LL2) THEN
         R4S1 = R4A1(I)
         R4S2 = I
         L4S1 = L4A1(I)
         L4S2 = FLOAT (I) .EQ. R4A1(I)
         LL3 = L4A2(I)
         IF (LL3) THEN
          DO J=1,6,5
           L4S1 = L4S1 .AND. L4A1(J)
           L4S1 = L4S1 .AND. L4A1(J+1)
           L4S1 = L4S1 .AND. L4A1(J+2)
           L4S1 = L4S1 .AND. L4A1(J+3)
           L4S1 = L4S1 .AND. L4A1(J+4)
          END DO
          R4S1 = R4A1(10) * 2.
          L4S2 = L4S1 .OR. L4A1(10)
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 6 **'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2

       DO I=1,10
        IF (L4A1(I)) THEN
         R4A1(I) = R4S1
         L4A1(I) = L4S1
         L4A2(I) = L4S2 .AND. L4S1
         IF (L4A2(I)) THEN
          RR2 = R4A1(I)
          DO J=1,6,5
           R4S1 = R4A1(J+4)
           L4S1 = L4A1(J+4)
           L4S2 = FLOAT (J + 4) .EQ. RR2
          END DO
          L4S3 = .NOT.L4A2(I)
          L4S4 = L4A1(I) .AND. L4A2(10)
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 7 **'
       WRITE (6, *) R4A1
       WRITE (6, *) L4A1, L4A2, R4S1, L4S1, L4S2, L4S3, L4S4

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = 1. + R4A1(10)
        END IF
        LL4 = L4A2(I)
        IF (LL4) THEN
         R4S1 = R4A1(10) + R4A2(10)
        END IF
       END DO

       WRITE (6, *) '**TEST NO. 8 **'
       WRITE (6, *) R4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         DO J=1,6,5
          R4S1 = 1. + R4A1(J+4)
         END DO
        END IF
        IF (L4A2(I)) THEN
         DO K=1,6,5
          R4A1(K) = R4S1
          R4A1(K+1) = R4S1
          R4A1(K+2) = R4S1
          R4A1(K+3) = R4S1
          R4A1(K+4) = R4S1
         END DO
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 9 **'
       WRITE (6, *) R4S1, R4A1

       DO I=1,10
        LL5 = L4A2(I)
        IF (LL5) THEN
         R4S1 = 1. + R4A1(I)
         LL6 = L4A2(I)
         IF (LL6) THEN
          LL7 = L4A1(I)
          IF (LL7) THEN
           R4S1 = R4A1(10)
          END IF
          IF (.NOT.LL7) THEN
           R4S1 = 10.
          END IF
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 10 **'
       WRITE (6, *) R4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I)
         IF (L4A2(I)) THEN
          IF (L4A1(I)) THEN
           DO J=1,10
            R4A1(J) = R4S1
            DO K=1,6,5
             R4S1 = R4A1(K+4)
            END DO
           END DO
          ELSE
           DO J=1,6,5
            R4A1(J) = R4S1
            R4A1(J+1) = R4S1
            R4A1(J+2) = R4S1
            R4A1(J+3) = R4S1
            R4A1(J+4) = R4S1
           END DO
          END IF
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 11 **'
       WRITE (6, *) R4S1, R4A1


       STOP 
      END
