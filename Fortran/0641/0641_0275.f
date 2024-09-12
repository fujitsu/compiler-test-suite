      PROGRAM MAIN

       INTEGER*4 I10(10)
       DATA I10/1,2,3,4,5,6,7,8,9,10/ 
       INTEGER*4 I11(10)
       DATA I11/2*1,2*3,2*5,2*7,2*9/ 
       INTEGER*4 I12(10)
       DATA I12/1,2,1,2,1,6,0,6,0,10/ 
       INTEGER*4 I13(10)
       DATA I13/1,0,3,2*5,2*0,7,8,7/ 
       INTEGER*4 I14(10)
       DATA I14/2*0,2*4,2*2,2*3,2*4/ 
       INTEGER*4 I15(10), I16(10), I10V
       DATA I16/10*0/ 
       DATA I15/2,0,4,1,2,3,4,5,6,7/ 
       COMPLEX*8 C10(10), C11(10)
       DATA C11/5*(1,1),5*(2,2)/ 
       DATA C10/10*(0.0,0.0)/ 

       LOGICAL*4 L10(10), L11(10)
       DATA L11/10*.TRUE./ 
       DATA L10/4*.FALSE.,.TRUE.,5*.FALSE./ 
       LOGICAL*4 L12(10), L14(10)
       DATA L14/10*.TRUE./ 
       DATA L12/4*.FALSE.,.TRUE.,5*.FALSE./ 
       LOGICAL*4 L13(10)
       DATA L13/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       LOGICAL*4 L15(10), L16(10)
       DATA L16/5*.FALSE.,5*.TRUE./ 
       DATA L15/10*.FALSE./ 
       REAL*8 D20(10), D20V
       DATA D20/1,2,3,4,5,6,5,4,3,2/ 
       INTEGER*4 I20V

       REAL*4 R30(10)
       DATA R30/0,1,2,3,4,5,6,7,8,9/ 
       REAL*4 R31(10), R32(10)
       DATA R32/10*2.0/ 
       DATA R31/1,0,1,2,3,4,5,6,7,10/ 
       REAL*4 R33(10)
       DATA R33/2*3,2,1,3,2,1,3,2,3/ 
       REAL*4 R34(10), R35(10)
       DATA R35/10*1.5/ 
       DATA R34/10*1.5/ 
       REAL*4 R36(10)
       DATA R36/1,2,3,4,5,6,7,8,9,10/ 
       REAL*4 R37(10), R38(10), R30V
       DATA R38/10*0./ 
       DATA R37/1,2,4,3,5,2,1,7,9,10/ 
       INTEGER L, N
       PARAMETER (L = 8, N = 10)
       LOGICAL LL4, LL3, LL2, LL1
       I10V = 0
       D20V = 2D0
       I20V = 4
       R30V = 3.

       WRITE (6, *) '----- LOOP 1 -----'
       LL1 = I10(8) .NE. I14(8)
       DO I=1,10
        IF (I10(I) .NE. I11(I)) THEN
         IF (I10(I) .NE. I12(I)) THEN
          GO TO 4
         END IF
         GO TO 5
        END IF
        IF (I10(I) .EQ. I13(I)) THEN
         GO TO 5
        END IF
    4   IF (LL1) THEN
         GO TO 6
        END IF
        GO TO 7
    5   IF (I10(I) .EQ. I15(I)) THEN
         GO TO 7
        END IF
    6   C10(I) = (1.0,2.0) + C11(I)
        I16(I) = I
        I10V = I10V + I16(I)
    7   CONTINUE
       END DO
       WRITE (6, *) C10
       WRITE (6, *) I16
       WRITE (6, *) I10V

       WRITE (6, *) '----- LOOP 2 -----'
       LL2 = .NOT.L10(8)
       LL3 = L12(8)
       LL4 = L14(8)
       DO I=1,10
        IF (LL2) THEN
         IF (L11(8)) THEN
          GO TO 8
         END IF
         GO TO 9
        END IF
        IF (LL3) THEN
         GO TO 9
        END IF
    8   IF (L13(I)) THEN
         GO TO 15
        END IF
        GO TO 16
    9   IF (LL4) THEN
         GO TO 16
        END IF
   15   L15(I) = .NOT.L16(I)
        D20V = D20V + D20(I)
        I20V = MAX0 (I20V, 5)
   16   CONTINUE
       END DO
       WRITE (6, *) L15
       WRITE (6, *) D20V
       WRITE (6, *) I20V

       WRITE (6, *) '----- LOOP 3 -----'
       DO I=1,10
        IF (R30(I) .GE. R31(I)) THEN
         IF (R31(8) - 5.) 27, 17, 18
   17    IF (R32(8) .GE. 1.) THEN
          GO TO 19
         END IF
         GO TO 25
   18    IF (2. .LE. R33(I)) THEN
          GO TO 25
         END IF
   19    IF (R34(I) .EQ. R35(I)) THEN
          GO TO 26
         END IF
         GO TO 27
   25    IF (R36(8) .NE. R37(8)) THEN
          GO TO 27
         END IF
   26    R38(I) = I
         R30V = R30V + R38(I)
        END IF
   27   CONTINUE
       END DO
       WRITE (6, *) R38
       WRITE (6, *) R30V
       STOP 
      END
