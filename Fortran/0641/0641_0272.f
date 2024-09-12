      PROGRAM MAIN

       LOGICAL*4 L10(10)
       DATA L10/2*.TRUE.,3*.FALSE.,2*.TRUE.,3*.FALSE./ 
       INTEGER*4 I10(10)
       DATA I10/10*0/ 
       REAL*4 R10(10)
       DATA R10/10*0./ 
       REAL*8 D10(10)
       DATA D10/10*0./ 
       COMPLEX*8 C10(10)
       DATA C10/10*(0.,0.)/ 

       INTEGER*4 I20(10), I21(10)
       DATA I21/1,2,3,4,5,1,2,3,4,3/ 
       DATA I20/10*0/ 
       REAL*4 R20(10), R21(10)
       DATA R21/10*0./ 
       DATA R20/-1,0,1,2,-3,-4,2*0,1,3/ 
       LOGICAL*4 L20(11)
       DATA L20/2*.TRUE.,4*.FALSE.,.TRUE.,.FALSE.,3*.TRUE./ 
       REAL*8 D20(10)
       DATA D20/10*0./ 
       COMPLEX*8 C20(10)
       INTEGER L, M, N
       PARAMETER (L = 6, M = 10, N = 10)
       DATA C20/10*(0.,0.)/ 

       WRITE (6, *) ' ***** LOOP 1 *****'
       DO I=1,10
        IF (L10(I)) THEN
         I10(I) = I
        END IF
        IF (L10(I)) THEN
         R10(I) = I
        ELSE
         R10(I) = -I
        END IF
        IF (R10(I)) 3, 4, 5
    3   D10(I) = I * 2
        GO TO 6
    4   D10(I) = I * I
        GO TO 6
    5   D10(I) = I * 2
    6   IF (I10(I) .EQ. I) THEN
         C10(I) = I
        END IF
       END DO
       WRITE (6, *) I10, R10
       WRITE (6, *) D10
       WRITE (6, *) C10

       WRITE (6, *) ' ***** LOOP 2 *****'
       DO J=1,10
        IF (R20(6)) 9, 7, 8
    7   I20(J) = J
        GO TO 11
    8   I20(J) = 0
        GO TO 11
    9   I20(J) = -J
   11   IF (L20(7)) THEN
         D20(J) = J * 2
        ELSE
         D20(J) = J * J
        END IF
        IF (L20(6)) THEN
         R21(J) = J * 3
        END IF
        IF (I21(6) .LE. 3) THEN
         C20(J) = J
        END IF
       END DO
       WRITE (6, *) I20
       WRITE (6, *) D20
       WRITE (6, *) R21
       WRITE (6, *) C20
       STOP 
      END
