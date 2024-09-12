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

       DO I=1,10
        R4S1 = R4A1(I)
        R4S3(1) = R4A2(I) + R4A1(I)
        L4S1 = L4A1(I) .AND. L4A2(I)
        L4S3(1) = .NOT.L4A1(I)
        CALL SUB01 (R4S1,R4S3(1),L4S1,L4S3(1))
       END DO

       WRITE (6, *) '** TEST NO. 1 **'
       WRITE (6, *) R4S1, R4S3, L4S1, L4S3


       DO I=1,10
        R4S1 = R4A1(I)
        R4S3(1) = R4A2(I) + R4A1(I)
        L4S1 = L4A1(I) .AND. L4A2(I)
        L4S3(1) = .NOT.L4A1(I)
        CALL SUB01 (R4S1,R4S3(1),L4S1,L4S3(1))
        R4A1(I) = R4S1
        R4A2(I) = R4S3(1)
        L4A1(I) = L4S1
        L4A2(I) = L4S3(1)
       END DO

       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, *) R4S1, R4S3, L4S1, L4S3, R4A1, R4A2, L4A1, L4A2


       DO I=1,10
        CALL SUB01 (R4S1,R4S3(1),L4S1,L4S3(1))
        R4A1(I) = R4S1
        R4A2(I) = R4S3(1)
        L4A1(I) = L4S1
        L4A2(I) = L4S3(1)
       END DO

       WRITE (6, *) '** TEST NO. 3 **'
       WRITE (6, *) R4A1, R4A2, L4A1, L4A2


       STOP 
      END


      SUBROUTINE SUB01 ( R4S1, R4S3, L4S1, L4S3 )
       REAL*4 R4S1, R4S3
       LOGICAL*4 L4S1, L4S3
       RETURN 
      END