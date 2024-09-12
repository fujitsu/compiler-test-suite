      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       REAL RR7, RR6, RR5, RR4, RR3, RR2, RR1

       DO I=1,6,5
        RR4 = SIN (R4A1(I))
        RR5 = SIN (R4A1(I+1))
        RR6 = SIN (R4A1(I+2))
        RR7 = SIN (R4A1(I+3))
        R4S1 = SIN (R4A1(I+4))
        R4S2 = ABS (R4A2(I+4))
        R4S3(I) = RR4
        R4S3(I+1) = RR5
        R4S3(I+2) = RR6
        R4S3(I+3) = RR7
        R4S3(I+4) = R4S1
        R4A2(I) = ABS (R4A2(I))
        R4A2(I+1) = ABS (R4A2(I+1))
        R4A2(I+2) = ABS (R4A2(I+2))
        R4A2(I+3) = ABS (R4A2(I+3))
        R4A2(I+4) = ABS (R4A2(I+4))
       END DO
       RR1 = ABS (R4S1)
       DO I=1,6,5
        R4A1(I) = RR1
        R4A1(I+1) = RR1
        R4A1(I+2) = RR1
        R4A1(I+3) = RR1
        R4A1(I+4) = RR1
        R4A2(I) = COS (R4A2(I))
        R4A2(I+1) = COS (R4A2(I+1))
        R4A2(I+2) = COS (R4A2(I+2))
        R4A2(I+3) = COS (R4A2(I+3))
        R4A2(I+4) = COS (R4A2(I+4))
       END DO

       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2


       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = SIN (R4A1(I))
         R4S2 = ABS (R4A2(I))
         R4S3(I) = R4S1
         R4A2(I) = ABS (R4A2(I))
        ELSE
         R4S1 = SIN (R4A2(I))
         R4S2 = ABS (R4A1(I))
         R4S3(I) = ABS (R4A1(I))
         R4A2(I) = R4S1
        END IF
       END DO
       DO I=1,10
        IF (L4A2(I)) THEN
         R4A1(I) = ABS (R4S1)
         R4A2(I) = COS (R4A2(I))
        ELSE
         R4A2(I) = ABS (R4S1)
         R4A1(I) = COS (R4A2(I))
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2


       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = SIN (R4A1(I))
         R4S2 = ABS (R4A2(I))
         R4S3(I) = R4S1
         R4A2(I) = ABS (R4A2(I))
        END IF
       END DO
       DO I=1,10
        IF (L4A2(I)) THEN
         R4A1(I) = ABS (R4S1)
         R4A2(I) = COS (R4A2(I))
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2


       DO I=1,6,5
        R4S3(1) = SIN (R4A1(I))
        R4S3(2) = ABS (R4A2(I))
        R4S3(I) = R4S3(3)
        R4A2(I) = R4S3(4)
        R4S3(1) = SIN (R4A1(I+1))
        R4S3(2) = ABS (R4A2(I+1))
        R4S3(I+1) = R4S3(3)
        R4A2(I+1) = R4S3(4)
        R4S3(1) = SIN (R4A1(I+2))
        R4S3(2) = ABS (R4A2(I+2))
        R4S3(I+2) = R4S3(3)
        R4A2(I+2) = R4S3(4)
        R4S3(1) = SIN (R4A1(I+3))
        R4S3(2) = ABS (R4A2(I+3))
        R4S3(I+3) = R4S3(3)
        R4A2(I+3) = R4S3(4)
        R4S3(1) = SIN (R4A1(I+4))
        R4S3(2) = ABS (R4A2(I+4))
        R4S3(I+4) = R4S3(3)
        R4A2(I+4) = R4S3(4)
       END DO
       RR2 = ABS (R4S3(1))
       RR3 = COS (R4S3(2))
       DO I=1,6,5
        R4A1(I) = RR2
        R4A1(I+1) = RR2
        R4A1(I+2) = RR2
        R4A1(I+3) = RR2
        R4A1(I+4) = RR2
        R4A2(I) = RR3
        R4A2(I+1) = RR3
        R4A2(I+2) = RR3
        R4A2(I+3) = RR3
        R4A2(I+4) = RR3
       END DO

       WRITE (6, *) '** TEST NO. 4 ***'
       WRITE (6, *) R4S3, R4S1, R4S2, R4A1, R4A2


       DO I=1,10
        IF (L4A2(I)) THEN
         R4S3(1) = SIN (R4A1(I))
         R4S3(2) = ABS (R4A2(I))
         R4S3(I) = R4S3(3)
         R4A2(I) = R4S3(4)
        END IF
       END DO
       DO I=1,10
        IF (L4A1(I)) THEN
         R4A1(I) = ABS (R4S3(5))
         R4A2(I) = COS (R4S3(6))
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 5 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, R4S3


       STOP 
      END
