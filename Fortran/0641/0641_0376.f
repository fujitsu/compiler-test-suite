      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       INTEGER AA11
       REAL RR1
       LOGICAL LL2, LL1

       DO AA11=1,6,5
        R4S3(AA11) = 0.
        R4S3(AA11+1) = 0.
        R4S3(AA11+2) = 0.
        R4S3(AA11+3) = 0.
        R4S3(AA11+4) = 0.
        L4S3(AA11) = .FALSE.
        L4S3(AA11+1) = .FALSE.
        L4S3(AA11+2) = .FALSE.
        L4S3(AA11+3) = .FALSE.
        L4S3(AA11+4) = .FALSE.
       END DO



       L4A2(1) = .FALSE.
       L4A2(2) = .TRUE.
       L4A2(3) = .FALSE.
       L4A2(4) = .TRUE.
       L4A2(5) = .FALSE.
       L4A2(6) = .TRUE.
       L4A2(7) = .FALSE.
       L4A2(8) = .TRUE.
       L4A2(9) = .FALSE.
       L4A2(10) = .TRUE.

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         R4S3(1) = R4A1(I)
         L4S3(1) = L4A1(I)
        ELSE
         R4S1 = 1. + R4A1(I)
         L4S1 = .NOT.L4A1(I)
         R4S3(2) = 1. + R4A1(I)
         L4S3(2) = .NOT.(L4A1(I) .AND. L4A2(I))
        END IF
       END DO
       DO I=1,10
        IF (L4A1(I)) THEN
         R4S2 = R4A2(I) - R4A1(I)
         L4S2 = L4A1(I) .OR. L4A2(I)
         R4S3(2) = 3. + R4A2(I)
         L4S3(2) = L4A1(I) .OR. L4A2(I)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2, R4A1, R4A2, L4A1, L4A2, R4S3
     X   , L4S3



       DO I=1,10
        IF (L4A2(I)) THEN
         R4S3(1) = I + R4A2(I)
         L4S3(1) = .NOT.(L4A1(I) .AND. (L4A1(I) .AND. L4A2(I)))
        ELSE
         R4S3(2) = I + R4A1(I)
         L4S3(2) = L4A1(I)
        END IF
       END DO

       DO I=1,10
        IF (L4A2(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         R4S3(1) = I + R4A2(I)
         L4S3(1) = .NOT.(L4A1(I) .AND. (L4A1(I) .AND. L4A2(I)))
        ELSE
         R4S1 = R4A1(I) * R4A2(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         R4S3(2) = I + R4A1(I)
         L4S3(2) = L4A1(I)
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 2 ***'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2, R4A1, R4A2, L4A1, L4A2, R4S3
     X   , L4S3
       LL1 = L4A2(1)


       DO I=1,10
        IF (L4A1(I) .AND. LL1) THEN
         R4S1 = R4A1(I)
         L4S1 = L4A2(I) .AND. L4A1(I)
         R4S3(3) = 3. + R4A1(I)
         L4S3(3) = .NOT.L4A2(I)
         R4A1(I) = R4S1
         R4A2(I) = R4S2
        ELSE
         R4S2 = R4A1(I) + R4A2(I)
         R4S3(4) = R4A1(I) + R4A2(I)
         L4S2 = .NOT.L4A2(I)
         L4S3(4) = L4A1(I) .OR. L4A2(I)
        END IF
       END DO
       LL2 = L4A2(4)

       DO I=1,10
        IF (R4A1(I) .EQ. FLOAT (I) .AND. LL2) THEN
         R4S2 = R4A1(I)
         L4S2 = L4A2(I) .AND. L4A1(I)
         R4S3(4) = 3. + R4A1(I)
         L4S3(4) = .NOT.L4A2(I)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 3 ***'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2, R4A1, R4A2, L4A1, L4A2, R4S3
     X   , L4S3


       DO I=1,10
        IF (L4A1(I)) THEN
         IF (L4A2(I)) THEN
          R4S1 = R4A1(I) + R4A2(I)
          L4S1 = L4A1(I) .AND. L4A2(I)
         ELSE
          R4S2 = 1. + R4A2(I)
          L4S2 = .NOT.L4A1(I)
         END IF
         R4S3(4) = 4. + R4A1(I)
         L4S3(4) = L4A2(I)
        END IF
       END DO

       DO I=1,10
        IF (L4A1(I)) THEN
         IF (.NOT.L4A2(I)) THEN
          IF (R4A1(I) .EQ. FLOAT (I)) THEN
           IF (R4A2(I) .NE. FLOAT (I)) THEN
            R4S1 = R4A1(I) + R4A2(I)
            L4S1 = .NOT.L4A1(I)
           ELSE
            R4S2 = 1. + R4A1(I)
            L4S2 = L4A2(I) .OR. L4A1(I)
           END IF
           R4A1(I) = R4S1
          END IF
          IF (L4A2(4)) THEN
           R4S3(4) = 1. + R4A2(I)
          END IF
         END IF
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 4 ***'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2, R4A1, R4A2, L4A1, L4A2, R4S3
     X   , L4S3


       DO I=1,10
        R4S1 = R4A1(I)
        IF (R4S1 .EQ. FLOAT (I)) THEN
         R4A1(I) = R4S1
        END IF
        L4S1 = L4A1(I)
        IF (L4S1) THEN
         L4A1(I) = .NOT.L4S1
        END IF
        RR1 = R4A2(I)
        IF (RR1 .NE. FLOAT (I)) THEN
         R4S2 = R4A2(I) + R4A1(I)
         L4S2 = L4A1(I) .AND. L4A2(I)
        ELSE
         R4S2 = 1. + R4A1(I)
         L4S2 = L4A2(I) .OR. L4A1(I)
        END IF
       END DO
       R4S3(5) = RR1
       WRITE (6, *) '** TEST NO. 5 ***'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2, R4A1, R4A2, L4A1, L4A2, R4S3
     X   , L4S3


       STOP 
      END
