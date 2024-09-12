      PROGRAM MAIN
       REAL*8 A(10), B(10), C(10), S1, S3
       LOGICAL*4 M(10)
       DOUBLEPRECISION S2
       PARAMETER (S2 = 5D0)
       DATA M/10*.TRUE./ 
       DATA A/1,2,3,4,5,6,7,8,9,10/ 
       DATA B/1,-2,4,4,-5,-6,10,2,15,2/ 
       DATA C/10*0.0/ 

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (B(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (C(I), B(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (B(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), B(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (C(I), 5D0)
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (5D0, C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), 5D0)
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (5D0, C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         S3 = A(I)
         C(I) = DMIN1 (S3, S3)
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C



       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (B(I), C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (C(I), B(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (B(I), C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), B(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (C(I), C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (C(I), 5D0, C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMAX1 (5D0, C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), 5D0, C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (5D0, C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         S3 = A(I)
         C(I) = DMIN1 (S3, S3, S3)
        END IF
       END DO
       WRITE (6, *) C

       DO I=1,10
        IF (M(I)) THEN
         C(I) = A(I)
         C(I) = DMIN1 (C(I), C(I), C(I))
        END IF
       END DO
       WRITE (6, *) C
       STOP 
      END
