      PROGRAM MAIN
       REAL*4 R4S1, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       DATA R4S3/10*1./ 
       DATA L4S3/10*.TRUE./ 
       DATA L4S1/.TRUE./ 
       DATA L4S2/.TRUE./ 
       INTEGER II2, II1
       REAL RR3, RR2, RR1
       LOGICAL LL1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = 1. + R4A1(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
        ELSE
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = .NOT.L4A1(I)
        END IF
       END DO
       IF (R4S1 .GT. 0) THEN

        DO I=1,6,5
         RR1 = 1. + R4A1(I)
         RR1 = 1. + R4A1(I+1)
         RR1 = 1. + R4A1(I+2)
         RR1 = 1. + R4A1(I+3)
         RR1 = 1. + R4A1(I+4)
        END DO
        R4S3(1) = RR1
       ELSE
        DO I=1,6,5
         RR2 = 2. + R4A2(I)
         RR2 = 2. + R4A2(I+1)
         RR2 = 2. + R4A2(I+2)
         RR2 = 2. + R4A2(I+3)
         RR2 = 2. + R4A2(I+4)
        END DO
        R4S3(2) = RR2
       END IF
       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, *) R4S1, L4S1, R4S3(1), L4S3(1)

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = .NOT.L4A1(I)
         R4S3(1) = 2. + R4A1(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
        ELSE
         R4S1 = 1. + R4A2(I)
         L4S1 = L4A1(I)
         R4S3(1) = 1. + R4A1(I)
         L4S3(1) = L4A1(I) .OR. L4A2(I)
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 2-1 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1

       DO I=1,10
        IF (R4S1 .EQ. FLOAT (I)) THEN
         R4S1 = R4A1(I) * R4A2(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         R4S3(1) = R4S1 + R4A1(I)
         L4S3(1) = L4A1(I) .OR. L4A2(I)
        ELSE
         R4S1 = 1 + R4S1
         L4S1 = .NOT.L4A2(I)
         R4S3(2) = 1. + R4A1(I) - R4A2(I)
         L4S3(2) = .NOT.(L4A1(I) .OR. L4A2(I))
        END IF
        R4S1 = R4S1 + R4A1(I)
        R4A2(I) = R4S1
        RR3 = R4S3(2) + R4S3(1)
        LL1 = L4S3(1) .AND. L4S3(2)
       END DO
       R4S3(3) = RR3
       L4S3(3) = LL1
       WRITE (6, *) '** TEST NO. 2 - 2 **'
       WRITE (6, *) R4S1, L4S1, R4S3(1), L4S3(1)
       WRITE (6, *) R4A2

C$OMP PARALLEL SHARED (L4A1,L4A2,L4S1,L4S3,R4A1,R4A2,R4S1,R4S3) 
C$OMP& PRIVATE (II2,I)
C$OMP DO 
       DO II2=0,1
        GO TO (21), II2
        DO I=1,10
         IF (L4A1(I) .AND. L4A2(I)) THEN
          L4S1 = .NOT.L4A1(I)
          L4S3(1) = .NOT.L4A1(I) .AND. L4A2(I)
         ELSE
          L4S1 = L4A1(I) .AND. L4A2(I)
          L4S3(2) = L4A1(I) .AND. L4A2(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 22

   21   DO I=1,10
         IF (R4A1(I) + R4A2(I) .GT. 0) THEN
          R4S1 = 1. + R4A1(I)
          R4S3(1) = R4A2(I) + R4A1(I)
         ELSE
          R4S1 = 2. + R4A1(I)
          R4S3(2) = 2. + R4A2(I) + R4A1(I)
         END IF
        END DO
C$OMP FLUSH
   22   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) '** TEST NO. 2 - 3 **'
       WRITE (6, *) L4S1, L4S3(1), R4S1, R4S3(1)

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = .NOT.L4A1(I)
         IF (L4S1) THEN
          R4A1(I) = R4S1
          L4A1(I) = L4S1
         END IF
        ELSE
         R4S1 = 2. + R4A1(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         IF (R4S1 .GT. 0) THEN
          R4A1(I) = R4S1
          L4A1(I) = L4A1(I) .AND. L4A2(I)
         END IF
        END IF
       END DO
       DO I=1,10
        IF (L4A1(I)) THEN
         R4S3(1) = 4. + R4A1(I)
         L4S3(1) = .NOT.L4A1(I)
         IF (L4S3(1)) THEN
          R4A2(I) = R4S3(1)
          L4A2(I) = L4S3(1)
         END IF
        ELSE
         R4S3(1) = 2. + R4A1(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
         IF (R4S3(1) .GT. 0) THEN
          R4A1(I) = R4S3(2)
          L4A1(I) = L4S3(2)
         END IF
        END IF
       END DO
       WRITE (6, *) '** TETS NO. 2 - 4 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1, R4A2, L4A2
       WRITE (6, *) R4S3(1), L4S3(1), R4S3(2), L4S3(2)

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = .NOT.L4A1(I)
        ELSE
         R4S1 = R4A2(I) - R4A1(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
        END IF
       END DO
       DO I=1,10
        IF (L4A1(I)) THEN
         R4S3(1) = R4A1(I) + R4A2(I)
         L4S3(1) = .NOT.L4A1(I)
         IF (R4S3(1) .GT. 0) GO TO 61
         IF (L4S3(1)) GO TO 61
        ELSE
         R4S3(1) = R4A2(I) - R4A1(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
         IF (R4S3(1) .GT. 0) GO TO 61
         IF (L4S3(1)) GO TO 61
        END IF
   61   CONTINUE
       END DO
       WRITE (6, *) '** TETS NO. 1 - 5 **'
       WRITE (6, *) R4S1, L4S1, R4S3(1), L4S3(1)

       R4S1 = 10.
       II1 = 10
       DO I=1,II1
        R4S1 = R4A1(I) + I
        IF (I + R4A1(I) .GT. 10.) GO TO 71
       END DO
   71  CONTINUE
       WRITE (6, *) '** TEST NO. 2 - 6 **'
       WRITE (6, *) R4S1

       DO JJ=1,10
        DO I=1,10
         IF (L4A1(I)) THEN
          R4S1 = R4A1(I) + R4A2(I)
         ELSE
          R4S1 = R4A1(I) - R4A2(I)
         END IF
         R4A1(I) = R4S1
        END DO
        DO I=1,10
         IF (L4A1(I)) THEN
          R4S3(1) = R4A1(I) + R4S1
          L4S3(1) = L4A1(I) .AND. L4A2(I)
         ELSE
          R4S3(1) = R4A1(I) - R4A2(I)
          L4S3(1) = .NOT.L4A2(I)
         END IF
        END DO
        DO I=1,6,5
         R4A1(I) = R4S1
         R4A1(I+1) = R4S1
         R4A1(I+2) = R4S1
         R4A1(I+3) = R4S1
         R4A1(I+4) = R4S1
        END DO
        DO I=1,10
         IF (L4A2(I)) THEN
          L4S1 = L4A1(I) .AND. L4A2(I)
          L4S2 = .NOT.L4A2(I)
         ELSE
          L4S1 = L4A1(I)
          L4S2 = .NOT.L4A2(I)
         END IF
         L4A1(I) = L4S1
        END DO
       END DO
       WRITE (6, *) '** TEST NO. 2 - 7 **'
       WRITE (6, *) R4S1, L4S1, L4S2, R4A1, L4A1, R4S3(1), L4S3(1)

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = 1. + R4A1(I)
         L4S1 = .NOT.L4A2(I)
         IF (R4S1 .GT. 0) THEN
          GO TO 24
         END IF
        ELSE
         R4S1 = 1. + R4A2(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         IF (L4S1) THEN
          GO TO 24
         END IF
        END IF
        R4A1(I) = R4S1
        L4A1(I) = L4S1 .AND. L4A2(I)
   24   CONTINUE
       END DO
       WRITE (6, *) '** TEST NO. 2 - 8 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1


       STOP 
      END
