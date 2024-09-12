      PROGRAM MAIN
       REAL A(10), B(10), C(10), D(10)
       LOGICAL*4 LA(10), LB(10), LC(10), LD(10)
       INTEGER N
       PARAMETER (N = 10)
       DATA A/1,2,3,4,5,6,7,8,9,10/ 
       DATA B/-4,-3,-2,-1,0,1,2,3,4,5/ 
       DATA C/-4,-3,-2,-1,0,1,2,3,4,5/ 
       DATA D/-4,3,-2,-1,0,1,-2,3,-4,5/ 
       DATA LA/5*.TRUE.,5*.FALSE./ 
       DATA LB/5*.FALSE.,5*.FALSE./ 
       DATA LC/5*.TRUE.,5*.FALSE./ 
       DATA LD/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./ 

       DO I=1,10
        IF (LA(I)) THEN
         IF (LB(I)) THEN
          IF (LC(I)) THEN
           A(I) = B(I)
          END IF
         END IF
        END IF

        IF (A(I) .NE. B(I)) THEN
        ELSE
         IF (LA(I)) THEN
          C(I) = D(I)
         END IF
        END IF
       END DO
       WRITE (6, *) ' A  = ', A
       WRITE (6, *) ' C  = ', C
       DO I=1,10

        IF (A(I) .NE. B(I)) THEN
         IF (LA(I)) THEN
          C(I) = D(I)
         END IF
        END IF
       END DO
       WRITE (6, *) ' A  = ', A
       WRITE (6, *) ' C  = ', C

       DO I=1,10
        IF (LB(I)) THEN
        ELSE
         A(I) = B(I)
        END IF
        C(I) = D(I)
       END DO
       WRITE (6, *) ' A = ', A

       DO I=1,10
        IF (LB(I)) THEN
        ELSE
         A(I) = B(I)
        END IF
        C(I) = D(I)
       END DO
       WRITE (6, *) ' A = ', A
       WRITE (6, *) ' C = ', D

       DO I=1,10
        A(I) = B(I)
        C(I) = D(I)
        A(I) = C(I)
        IF (LA(I)) THEN
         A(I) = B(I)
         IF (LD(I)) THEN
         ELSE
          GO TO 6
         END IF
         C(I) = D(I)
    6    CONTINUE
        END IF
       END DO
       WRITE (6, *) ' A = ', A
       WRITE (6, *) ' C = ', C
       STOP 
      END
