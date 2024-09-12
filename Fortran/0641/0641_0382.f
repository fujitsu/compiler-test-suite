      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       COMMON R4S1, R4S2, R4S3, L4S1, L4S2, L4S3
       REAL RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL5, LL4, LL3, LL2, LL1
       DO I=1,6,5
        L4S3(I) = MOD (I, 2) .EQ. 0
        L4S3(I+1) = MOD (I + 1, 2) .EQ. 0
        L4S3(I+2) = MOD (I + 2, 2) .EQ. 0
        L4S3(I+3) = MOD (I + 3, 2) .EQ. 0
        L4S3(I+4) = MOD (I + 4, 2) .EQ. 0
       END DO

       DO I=1,6,5
        RR1 = R4A1(I)
        RR2 = R4A1(I+1)
        RR3 = R4A1(I+2)
        RR4 = R4A1(I+3)
        R4S1 = R4A1(I+4)
        RR5 = RR1
        RR6 = RR2
        RR7 = RR3
        RR8 = RR4
        RR9 = R4S1
        R4S3(I) = RR5
        R4S3(I+1) = RR6
        R4S3(I+2) = RR7
        R4S3(I+3) = RR8
        R4S3(I+4) = RR9
        LL2 = L4A1(I)
        LL3 = L4A1(I+1)
        LL4 = L4A1(I+2)
        LL5 = L4A1(I+3)
        L4S1 = L4A1(I+4)
        L4A2(I) = LL2
        L4A2(I+1) = LL3
        L4A2(I+2) = LL4
        L4A2(I+3) = LL5
        L4A2(I+4) = L4S1
        R4A2(I+4) = RR9
        R4A2(I+3) = RR8
        R4A2(I+2) = RR7
        R4A2(I+1) = RR6
        R4A2(I) = RR5
       END DO

       DO I=1,6,5
        LL1 = L4A2(I)
        LL1 = L4A2(I+1)
        LL1 = L4A2(I+2)
        LL1 = L4A2(I+3)
        LL1 = L4A2(I+4)
       END DO
       L4S3(1) = LL1

       WRITE (6, *) '** TEST NO. 1 **'
       WRITE (6, *) R4S1, R4A2, R4S3, L4S1, L4A2, L4S3

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = 1. + R4A1(I)
         R4A1(I) = R4S1
         L4S1 = L4A1(I)
         L4A2(I) = L4S1
        ELSE
         R4S1 = R4A1(I) * 2.
         R4A2(I) = R4S1
         L4S1 = .NOT.L4A1(I)
         L4A2(I) = L4S1
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 3 **'
       WRITE (6, *) R4S1, R4A1, R4A2, L4S1, L4A1, L4A2

       DO I=1,10
        IF (L4A2(I)) THEN
         R4S1 = 1. + R4A1(I)
         R4A2(I) = R4S1
         R4S3(1) = R4A2(I) + R4A1(I)
         L4S1 = L4A1(I)
         L4A2(I) = L4S1
         L4S3(1) = .NOT.L4A2(I)
         L4A2(I) = L4S3(2)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 4 **'
       WRITE (6, *) R4S1, R4A1, R4A2, L4S1, L4A1, L4A2, R4S3, L4S3

       STOP 
      END
