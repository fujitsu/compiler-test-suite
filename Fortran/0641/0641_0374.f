      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       INTEGER II1
       REAL RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3
     X   , LL2, LL1
       R4S1 = 1.
       R4S2 = 1.
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       DATA R4S3/10*1./ 
       DATA L4S1/.TRUE./ 
       DATA L4S2/.TRUE./ 
       DATA L4S3/10*.TRUE./ 

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I)
         R4S3(1) = R4A1(I) + R4A2(I)
         L4S1 = L4A1(I)
         L4S3(1) = .NOT.L4A2(I)
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 4 **'
       WRITE (6, *) R4S1, R4S3(1), L4S1, L4S3(1)

       DO I=1,10
        IF (L4A2(I)) THEN
         R4S1 = R4A1(I) * R4A2(I)
         R4S3(2) = R4A1(I) - R4A2(I)
         L4S1 = .NOT.L4A1(I)
         L4S3(2) = L4A1(I) .AND. L4A2(I)
        END IF
        R4A1(I) = R4S1
        L4A1(I) = L4S1
       END DO

       RR1 = R4S3(1)
       LL1 = L4S3(1)
       DO I=1,6,5
        R4A2(I) = RR1
        R4A2(I+1) = RR1
        R4A2(I+2) = RR1
        R4A2(I+3) = RR1
        R4A2(I+4) = RR1
        L4A2(I) = LL1
        L4A2(I+1) = LL1
        L4A2(I+2) = LL1
        L4A2(I+3) = LL1
        L4A2(I+4) = LL1
       END DO
       WRITE (6, *) '** TEST NO. 4-1 **'
       WRITE (6, *) R4S1, R4S3(1), L4S1, L4S3(1)
       WRITE (6, *) R4A1, R4A2, L4A1, L4A2

       DO I=1,10
        IF (L4A2(I)) THEN
         L4S1 = L4A1(I) .AND. L4A2(I)
         IF (L4S1) THEN
          L4A1(I) = L4S1
          L4S2 = L4A1(I) .AND. L4A2(I)
         ELSE
          L4A1(I) = L4A2(I)
          L4S2 = .NOT.L4A2(I)
         END IF
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 4 - 2 **'
       WRITE (6, *) R4S1, L4S1, L4S2
       WRITE (6, *) R4A1, L4A1

       DO I=1,10
        IF (R4A1(I) .GT. -1) THEN
         R4S2 = 1. + R4A1(I) + R4A2(I)
        END IF
        IF (R4S2 .GT. 0) THEN
         L4S1 = L4A1(I)
         IF (L4S1) THEN
          L4A1(I) = L4S1
         END IF
        END IF
       END DO
       R4S1 = 1. + R4A1(10)
       WRITE (6, *) '** TEST NO. 4 - 3 **'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2, R4A1, L4A1

       DO I=1,10
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .NE. FLOAT (I)) THEN
         R4A1(I) = R4S1
         R4A1(I) = R4S1
        END IF
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .GT. 0) THEN
         R4S3(1) = R4A1(I) + R4A2(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
        END IF
       END DO

       DO I=1,10
        L4S1 = L4A1(I) .AND. L4A2(I)
        IF (L4S1) THEN
         L4A1(I) = L4S1
         L4A1(I) = L4S1
        END IF
       END DO
       WRITE (6, *) '** TETS NO. 4 - 4 **'
       WRITE (6, *) R4S1, R4A1, L4S1, L4A1, R4S3(1), L4S3(1)


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
       WRITE (6, *) '** TETS NO. 4 - 5 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1


       R4S1 = 10.
       II1 = 10
       DO I=1,II1
        R4S1 = R4A1(I) + I
        IF (I + R4A1(I) .GT. 10.) GO TO 71
       END DO
   71  CONTINUE
       WRITE (6, *) '** TEST NO. 4 - 6 **'
       WRITE (6, *) R4S1


       DO JJ=1,10
        DO I=1,6,5
         RR2 = R4A1(I) + R4A2(I)
         RR3 = R4A1(I+1) + R4A2(I+1)
         RR4 = R4A1(I+2) + R4A2(I+2)
         RR5 = R4A1(I+3) + R4A2(I+3)
         RR6 = R4A1(I+4) + R4A2(I+4)
         R4A1(I+4) = RR6
         R4A1(I+3) = RR5
         R4A1(I+2) = RR4
         R4A1(I+1) = RR3
         R4A1(I) = RR2
        END DO
        DO I=1,6,5
         R4S1 = R4A1(I+4) + R4A2(I+4)
         RR7 = R4A1(I) + R4A2(I)
         RR8 = R4A1(I+1) + R4A2(I+1)
         RR9 = R4A1(I+2) + R4A2(I+2)
         RR10 = R4A1(I+3) + R4A2(I+3)
         RR11 = R4A1(I+4) + R4A2(I+4)
         R4A1(I+4) = RR11
         R4A1(I+3) = RR10
         R4A1(I+2) = RR9
         R4A1(I+1) = RR8
         R4A1(I) = RR7
        END DO
       END DO
       DO I=1,7,4
        LL2 = L4A2(I)
        LL3 = L4A1(I)
        LL4 = L4A2(I+1)
        LL5 = L4A1(I+1)
        LL6 = L4A2(I+2)
        LL7 = L4A1(I+2)
        LL8 = L4A2(I+3)
        LL9 = L4A1(I+3)


        DO JJ=1,6,5
         LL3 = LL3 .AND. LL2
         LL5 = LL5 .AND. LL4
         LL7 = LL7 .AND. LL6
         LL9 = LL9 .AND. LL8
         LL3 = LL3 .AND. LL2
         LL5 = LL5 .AND. LL4
         LL7 = LL7 .AND. LL6
         LL9 = LL9 .AND. LL8
         LL3 = LL3 .AND. LL2
         LL5 = LL5 .AND. LL4
         LL7 = LL7 .AND. LL6
         LL9 = LL9 .AND. LL8
         LL3 = LL3 .AND. LL2
         LL5 = LL5 .AND. LL4
         LL7 = LL7 .AND. LL6
         LL9 = LL9 .AND. LL8
         LL3 = LL3 .AND. LL2
         LL5 = LL5 .AND. LL4
         LL7 = LL7 .AND. LL6
         LL9 = LL9 .AND. LL8
        END DO
        L4A1(I) = LL3
        L4A1(I+1) = LL5
        L4A1(I+2) = LL7
        L4A1(I+3) = LL9
       END DO
       LL10 = L4A2(9)
       LL11 = L4A1(9)
       LL12 = L4A2(10)
       LL13 = L4A1(10)


       DO JJ=1,6,5
        L4S1 = LL13 .AND. LL12
        LL11 = LL11 .AND. LL10
        LL13 = LL13 .AND. LL12
        L4S1 = LL13 .AND. LL12
        LL11 = LL11 .AND. LL10
        LL13 = LL13 .AND. LL12
        L4S1 = LL13 .AND. LL12
        LL11 = LL11 .AND. LL10
        LL13 = LL13 .AND. LL12
        L4S1 = LL13 .AND. LL12
        LL11 = LL11 .AND. LL10
        LL13 = LL13 .AND. LL12
        L4S1 = LL13 .AND. LL12
        LL11 = LL11 .AND. LL10
        LL13 = LL13 .AND. LL12
       END DO
       L4A1(9) = LL11
       L4A1(10) = LL13
       WRITE (6, *) '** TEST NO. 1 - 7 **'
       WRITE (6, *) R4S1, R4A1, L4S1, L4A1


       DO I=1,10
        R4S1 = R4A1(I) + R4A2(I)
        IF (R4S1 .LE. 0) THEN
         R4S1 = R4A2(I)
        END IF
        R4S3(1) = R4S3(1) + R4A1(I)
        IF (R4S1 .LE. 0) THEN
         R4S3(1) = R4A1(I)
        END IF
       END DO


       DO I=1,10
        L4S1 = L4A1(I) .AND. L4A2(I)
        IF (.NOT.L4S1) THEN
         L4A1(I) = L4S1
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 1 - 8 **'
       WRITE (6, *) R4S1, L4S1, R4A1, L4A1


       STOP 
      END
