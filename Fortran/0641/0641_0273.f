      PROGRAM MAIN

       LOGICAL*4 L10(10), L11(10)
       DATA L11/10*.TRUE./ 
       DATA L10/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       INTEGER*4 I10(10), I11(10)
       DATA I11/10*0/ 
       DATA I10/10*0/ 
       REAL*4 R10(10)
       DATA R10/2,1,2,2*1,3,2,1,3,1/ 
       REAL*8 D10(10)
       DATA D10/0,1,2,2*3,0,1,2,2*1/ 

       REAL*4 R20(10)
       DATA R20/0,1,2,0,1,2,0,1,2,0/ 
       INTEGER*4 I20(10), I21(10)
       DATA I21/10*0/ 
       DATA I20/10*0/ 
       LOGICAL*4 L20(10)
       DATA L20/4*.FALSE.,2*.TRUE.,3*.FALSE.,.TRUE./ 
       COMPLEX*8 C20(10)
       DATA C20/4*(0,0),(1,1),5*(0,0)/ 
       COMPLEX*8 C21(10)
       DATA C21/4*(2,2),(1,1),5*(3,3)/ 
       COMPLEX*8 C22(10)
       DATA C22/5*(2,1),5*(1,2)/ 
       COMPLEX*8 C23(10)
       INTEGER K2, J2, K, J, N
       REAL Z2, X2, Y2, X
       DOUBLEPRECISION Y
       PARAMETER (K2 = 5, J2 = 3, Z2 = 1., X2 = 2.5, Y2 = 2.)
       PARAMETER (Y = 2D0, X = 1., K = 2, J = 5, N = 10)
       REAL RR1
       PARAMETER (RR1 = X2 - 2.)
       DATA C23/2*(0,0),(2.1,3.1),7*(1,1)/ 
       LOGICAL LL1

       WRITE (6, *) ' ---- LOOP 1 -----'
       LL1 = L11(5)
       DO I=1,10
        IF (.NOT.L10(I)) THEN
         IF (1. .GT. R10(I)) THEN
          GO TO 3
         END IF
         GO TO 4
        END IF
        IF (D10(I) .LT. 2D0) THEN
         GO TO 3
        END IF
        GO TO 4
    3   I10(I) = I
    4   IF (LL1) THEN
         I11(I) = I * I
        END IF
       END DO
       WRITE (6, *) I10
       WRITE (6, *) I11


       WRITE (6, *) ' ---- LOOP 2 -----'
       DO I=1,10
        IF (1. - R20(I)) 5, 6, 7
    5   IF (C20(5) .EQ. C21(5)) THEN
         GO TO 8
        END IF
        GO TO 9
    6   IF (.NOT.L20(3)) THEN
         GO TO 8
        END IF
        GO TO 9
    7   IF (RR1) 9, 8, 8
    8   I20(I) = INT (FLOAT (I))
    9   IF (C22(I) .NE. (1.0,2.0)) THEN
         IF ((2.0,3.0) .NE. C23(5)) THEN
          GO TO 18
         END IF
         GO TO 19
        END IF
        IF (C22(5) .EQ. C23(3)) THEN
         GO TO 18
        END IF
        GO TO 19
   18   I21(I) = I
   19   CONTINUE
       END DO
       WRITE (6, *) I20
       WRITE (6, *) I21
       STOP 
      END
