      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       INTEGER II1
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3, LL2
     X   , LL1

       R4S1 = R4A1(10) + R4A2(10)
       DO I=1,10
        L4S1 = L4A1(I) .AND. L4A2(I)
        IF (.NOT.L4S1) THEN
         L4A1(I) = L4A2(I) .AND. L4S1
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 1 **'
       WRITE (6, *) R4S1, R4A1, L4S1, L4A1


       DO I=1,10
        R4S1 = R4A1(I)
        IF (.NOT.L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         IF (R4A1(I) + R4A2(I) .LE. 0) THEN
          R4S1 = 2. + R4A2(I)
         END IF
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 5-1 **'
       WRITE (6, *) R4S1


       DO I=1,10
        IF (.NOT.L4A1(I)) THEN
         R4S1 = R4A1(I)
         IF (R4S1 .EQ. FLOAT (I)) THEN
          R4A1(I) = R4S1
         ELSE
          R4A2(I) = R4S1 + R4A1(I)
         END IF
        END IF
        IF (.NOT.L4A2(I)) THEN
         R4S1 = R4A1(I)
         IF (R4S1 .GT. 0) THEN
          R4A1(I) = R4S1
         ELSE
          R4A2(I) = R4S1 + R4A2(I)
         END IF
        END IF
        L4S1 = L4A1(I)
        IF (L4S1) THEN
         L4A1(I) = L4S1
        ELSE
         L4A2(I) = L4S1 .AND. L4A1(I)
        END IF
        IF (L4A1(I) .AND. L4A2(I)) THEN
         IF (R4A1(I) .NE. R4A2(I)) THEN
          R4S1 = R4A1(I) + R4A2(I)
          R4S1 = R4A1(I) + R4A2(I)
          L4S1 = L4A1(I) .AND. L4A2(I)
         ELSE
          R4S1 = R4A1(I) - R4A2(I)
          R4S1 = R4A1(I) - R4A2(I)
          L4S1 = L4A1(I) .OR. L4A2(I)
         END IF
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 5 - 2 **'
       WRITE (6, *) R4S1, L4S1, L4A1, R4A1


       DO I=1,10
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .GT. 0) THEN
         R4A1(I) = R4S1
        ELSE
         R4A1(I) = 1. + R4S1
        END IF
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .LT. 0.) THEN
         R4A1(I) = R4S1
        ELSE
         R4A1(I) = 1. + R4S1
        END IF
        L4S1 = L4A1(I) .AND. L4A2(I)
        IF (L4S1) THEN
         L4A1(I) = L4S1
        ELSE
         L4A1(I) = .NOT.L4S1
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 5 - 3 **'
       WRITE (6, *) R4S1, L4S1
       WRITE (6, *) R4A1, L4A1


       DO I=1,10
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .NE. FLOAT (I)) THEN
         R4A1(I) = R4S1
        END IF
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .GT. 0) THEN
         R4A1(I) = R4S1
        END IF
        L4S1 = L4A1(I) .AND. L4A2(I)
        IF (L4S1) THEN
         L4A1(I) = L4S1
        END IF
       END DO
       WRITE (6, *) '** TETS NO. 5 - 4 **'
       WRITE (6, *) R4S1, R4A1, L4S1, L4A1


       DO I=1,10
        R4S1 = 1. + R4A1(I)
        IF (R4S1 .LE. 0) THEN
         R4A1(I) = R4S1
         R4S1 = 2. + R4A1(I)
         IF (R4S1 .GE. 0) THEN
          R4A1(I) = R4S1
          L4S1 = L4A1(I)
          IF (.NOT.L4S1) THEN
           L4A1(I) = L4S1
          END IF
         END IF
        END IF
       END DO
       WRITE (6, *) '** TETS NO. 5 - 5 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1


       R4S1 = 10.
       II1 = 10
       DO I=1,II1
        R4S1 = R4A1(I) + I
        IF (I + R4A1(I) .GT. 10.) GO TO 71
       END DO
   71  CONTINUE
       WRITE (6, *) '** TEST NO. 5 - 6 **'
       WRITE (6, *) R4S1


       DO JJ=1,10
        DO I=1,6,5
         RR1 = R4A1(I) + R4A2(I)
         RR2 = R4A1(I+1) + R4A2(I+1)
         RR3 = R4A1(I+2) + R4A2(I+2)
         RR4 = R4A1(I+3) + R4A2(I+3)
         RR5 = R4A1(I+4) + R4A2(I+4)
         R4A1(I+4) = RR5
         R4A1(I+3) = RR4
         R4A1(I+2) = RR3
         R4A1(I+1) = RR2
         R4A1(I) = RR1
        END DO
        DO I=1,6,5
         R4S1 = R4A1(I+4) + R4A2(I+4)
         RR6 = R4A1(I) + R4A2(I)
         RR7 = R4A1(I+1) + R4A2(I+1)
         RR8 = R4A1(I+2) + R4A2(I+2)
         RR9 = R4A1(I+3) + R4A2(I+3)
         RR10 = R4A1(I+4) + R4A2(I+4)
         R4A1(I+4) = RR10
         R4A1(I+3) = RR9
         R4A1(I+2) = RR8
         R4A1(I+1) = RR7
         R4A1(I) = RR6
        END DO
       END DO
       DO I=1,7,4
        LL1 = L4A2(I)
        LL2 = L4A1(I)
        LL3 = L4A2(I+1)
        LL4 = L4A1(I+1)
        LL5 = L4A2(I+2)
        LL6 = L4A1(I+2)
        LL7 = L4A2(I+3)
        LL8 = L4A1(I+3)


        DO JJ=1,6,5
         LL2 = LL2 .AND. LL1
         LL4 = LL4 .AND. LL3
         LL6 = LL6 .AND. LL5
         LL8 = LL8 .AND. LL7
         LL2 = LL2 .AND. LL1
         LL4 = LL4 .AND. LL3
         LL6 = LL6 .AND. LL5
         LL8 = LL8 .AND. LL7
         LL2 = LL2 .AND. LL1
         LL4 = LL4 .AND. LL3
         LL6 = LL6 .AND. LL5
         LL8 = LL8 .AND. LL7
         LL2 = LL2 .AND. LL1
         LL4 = LL4 .AND. LL3
         LL6 = LL6 .AND. LL5
         LL8 = LL8 .AND. LL7
         LL2 = LL2 .AND. LL1
         LL4 = LL4 .AND. LL3
         LL6 = LL6 .AND. LL5
         LL8 = LL8 .AND. LL7
        END DO
        L4A1(I) = LL2
        L4A1(I+1) = LL4
        L4A1(I+2) = LL6
        L4A1(I+3) = LL8
       END DO
       LL9 = L4A2(9)
       LL10 = L4A1(9)
       LL11 = L4A2(10)
       LL12 = L4A1(10)


       DO JJ=1,6,5
        L4S1 = LL12 .AND. LL11
        LL10 = LL10 .AND. LL9
        LL12 = LL12 .AND. LL11
        L4S1 = LL12 .AND. LL11
        LL10 = LL10 .AND. LL9
        LL12 = LL12 .AND. LL11
        L4S1 = LL12 .AND. LL11
        LL10 = LL10 .AND. LL9
        LL12 = LL12 .AND. LL11
        L4S1 = LL12 .AND. LL11
        LL10 = LL10 .AND. LL9
        LL12 = LL12 .AND. LL11
        L4S1 = LL12 .AND. LL11
        LL10 = LL10 .AND. LL9
        LL12 = LL12 .AND. LL11
       END DO
       L4A1(9) = LL10
       L4A1(10) = LL12
       WRITE (6, *) '** TEST NO. 5 - 7 **'
       WRITE (6, *) R4S1, R4A1, L4S1, L4A1


       DO I=1,10
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4A1(I) + R4A2(I) .LE. 0) THEN
         R4S1 = R4A1(I)
        END IF
        L4S1 = L4A1(I) .AND. L4A2(I)
        IF (.NOT.L4S1) THEN
         L4A1(I) = L4S1
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 5 - 8 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1


       STOP 
      END
