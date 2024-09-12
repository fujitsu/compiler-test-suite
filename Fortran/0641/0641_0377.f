      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       REAL RR5, RR4, RR3, RR2, RR1

       R4S2 = 0.


       DO J=1,2
        DO I=1,6,5
         R4S1 = R4A1(I+4)
         R4S1 = R4S1 + R4A1(I+4)
        END DO
        DO I=1,6,5
         RR1 = R4S2
         R4A1(I) = RR1
         R4S2 = R4S2 + RR1
         RR2 = R4S2
         R4A1(I+1) = RR2
         R4S2 = R4S2 + RR2
         RR3 = R4S2
         R4A1(I+2) = RR3
         R4S2 = R4S2 + RR3
         RR4 = R4S2
         R4A1(I+3) = RR4
         R4S2 = R4S2 + RR4
         RR5 = R4S2
         R4A1(I+4) = RR5
         R4S2 = R4S2 + RR5
        END DO
       END DO
       WRITE (6, *) '** TEST NO. 2 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2


       DO J=1,10
        DO I=1,6,5
         R4S1 = 1 + R4S1
         R4S1 = R4A1(I) + R4A2(I)
         R4S1 = 1 + R4S1
         R4S1 = R4A1(I+1) + R4A2(I+1)
         R4S1 = 1 + R4S1
         R4S1 = R4A1(I+2) + R4A2(I+2)
         R4S1 = 1 + R4S1
         R4S1 = R4A1(I+3) + R4A2(I+3)
         R4S1 = 1 + R4S1
         R4S1 = R4A1(I+4) + R4A2(I+4)
        END DO
        DO I=1,6,5
         R4S2 = R4S2 + R4A2(I)
         R4A1(I) = R4S2
         R4S2 = R4S2 + R4A2(I+1)
         R4A1(I+1) = R4S2
         R4S2 = R4S2 + R4A2(I+2)
         R4A1(I+2) = R4S2
         R4S2 = R4S2 + R4A2(I+3)
         R4A1(I+3) = R4S2
         R4S2 = R4S2 + R4A2(I+4)
         R4A1(I+4) = R4S2
        END DO
       END DO
       WRITE (6, *) '** TEST NO. 2 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2


       DO I=1,6,5
        R4S1 = R4A2(I+4)
        R4S1 = MAX (R4S1, R4A1(I+4))
       END DO
       R4S2 = 0.
       DO I=1,10
        IF (R4A2(I) .GT. R4S2) THEN
         R4S2 = 1 + R4A2(I)
        END IF
        R4A2(I) = R4S2
       END DO

       WRITE (6, *) '** TEST NO. 3 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2


       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I)
         R4S1 = R4S1 + R4A1(I)
        ELSE
         R4S1 = 1. + R4A1(I)
         R4S1 = 2. + R4A1(I) * 2.
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 4 ***'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2

       STOP 
      END
