      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       N = 10
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.TRUE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 


       R4S1 = R4A1(10)
       L4S1 = L4A1(10) .AND. L4A2(10)

       WRITE (6, *) '*** TEST NO. 1 **'
       WRITE (6, *) R4S1, L4S1

       R4S1 = R4A1(10) + R4A2(10)
       L4S1 = L4A1(10) .OR. L4A2(10)
       CALL SUBL (N)
       IF (N .GT. 0) R4S2 = 1. + R4A1(N) + R4A2(N)
       IF (N .GT. 0) L4S2 = .NOT.(L4A1(N) .AND. L4A2(N))

       WRITE (6, *) '*** TEST NO. 2 **'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2
       STOP 
      END

      SUBROUTINE SUBL ( N )
       INTEGER*4 N
       N = 10
       RETURN 
      END
