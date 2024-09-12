      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       EQUIVALENCE (R4S1, R4A1(1)), (R4S2, R4A1(2)), (R4S3(1), R4A1(3))
       EQUIVALENCE (L4S1, L4A1(1)), (L4S2, L4A1(2)), (L4S3(1), L4A1(3))
       INTEGER II1

C$OMP PARALLEL SHARED (R4S1,R4A1,R4S2,R4S3,R4A2,L4S1,L4A1,L4S2,L4S3,L4A2
C$OMP& ) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (4), II1
        DO I=1,6,5
         R4S1 = R4A1(I)
         R4S2 = 1 + R4A1(I)
         R4S3(1) = R4A1(I) + R4A2(I)
         R4A1(I) = R4S1
         R4A2(I) = R4S2
         R4S1 = R4A1(I+1)
         R4S2 = 1 + R4A1(I+1)
         R4S3(1) = R4A1(I+1) + R4A2(I+1)
         R4A1(I+1) = R4S1
         R4A2(I+1) = R4S2
         R4S1 = R4A1(I+2)
         R4S2 = 1 + R4A1(I+2)
         R4S3(1) = R4A1(I+2) + R4A2(I+2)
         R4A1(I+2) = R4S1
         R4A2(I+2) = R4S2
         R4S1 = R4A1(I+3)
         R4S2 = 1 + R4A1(I+3)
         R4S3(1) = R4A1(I+3) + R4A2(I+3)
         R4A1(I+3) = R4S1
         R4A2(I+3) = R4S2
         R4S1 = R4A1(I+4)
         R4S2 = 1 + R4A1(I+4)
         R4S3(1) = R4A1(I+4) + R4A2(I+4)
         R4A1(I+4) = R4S1
         R4A2(I+4) = R4S2
        END DO
C$OMP FLUSH
        GO TO 5

    4   DO I=1,6,5
         L4S1 = L4A1(I)
         L4S2 = .NOT.L4A1(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
         L4A1(I) = L4S1
         L4A2(I) = L4S2
         L4S1 = L4A1(I+1)
         L4S2 = .NOT.L4A1(I+1)
         L4S3(1) = L4A1(I+1) .AND. L4A2(I+1)
         L4A1(I+1) = L4S1
         L4A2(I+1) = L4S2
         L4S1 = L4A1(I+2)
         L4S2 = .NOT.L4A1(I+2)
         L4S3(1) = L4A1(I+2) .AND. L4A2(I+2)
         L4A1(I+2) = L4S1
         L4A2(I+2) = L4S2
         L4S1 = L4A1(I+3)
         L4S2 = .NOT.L4A1(I+3)
         L4S3(1) = L4A1(I+3) .AND. L4A2(I+3)
         L4A1(I+3) = L4S1
         L4A2(I+3) = L4S2
         L4S1 = L4A1(I+4)
         L4S2 = .NOT.L4A1(I+4)
         L4S3(1) = L4A1(I+4) .AND. L4A2(I+4)
         L4A1(I+4) = L4S1
         L4A2(I+4) = L4S2
        END DO
C$OMP FLUSH
    5   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, *) R4S1, R4S2, R4S3, R4A1, R4A2
       WRITE (6, *) L4S1, L4S2, L4S3, L4A1, L4A2


       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I)
         R4S2 = 1 + R4A1(I)
         R4S3(1) = R4A1(I) + R4A2(I)
         R4A1(I) = R4S1
         R4A2(I) = R4S2
         L4S1 = L4A1(I)
         L4S2 = .NOT.L4A1(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
         L4A1(I) = L4S1
         L4A2(I) = L4S2
        ELSE
         R4S1 = 2 + R4A1(I)
         R4S2 = R4A1(I)
         R4S3(1) = R4A1(I) - R4A2(I)
         R4A1(I) = R4S2
         R4A2(I) = R4S1
         L4S2 = L4A1(I)
         L4S1 = .NOT.L4A1(I)
         L4S3(1) = L4A1(I) .OR. L4A2(I)
         L4A1(I) = L4S2
         L4A2(I) = L4S1
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 ***'
       WRITE (6, *) R4S1, R4S2, R4S3, R4A1, R4A2
       WRITE (6, *) L4S1, L4S2, L4S3, L4A1, L4A2


       DO I=1,10
        IF (L4A2(I) .AND. L4A1(I)) THEN
         R4S1 = R4A1(I)
         R4S2 = 1 + R4A1(I)
         R4S3(1) = R4A1(I) + R4A2(I)
         R4A1(I) = R4S1
         R4A2(I) = R4S2
         L4S1 = L4A1(I)
         L4S2 = .NOT.L4A1(I)
         L4S3(1) = L4A1(I) .AND. L4A2(I)
         L4A1(I) = L4S1
         L4A2(I) = L4S2
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 3 ***'
       WRITE (6, *) R4S1, R4S2, R4S3, R4A1, R4A2
       WRITE (6, *) L4S1, L4S2, L4S3, L4A1, L4A2


       STOP 
      END
