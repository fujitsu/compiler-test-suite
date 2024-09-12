      PROGRAM MAIN

       COMPLEX*8 C10(10), C11(10), C12(10), C13(10), C14(10)
       INTEGER*4 I10(10), I11(10), I12(10), I13(10)

       DATA C10/(1,2),(2,2),(1,2),(3,3),(1,2),(2,1),(1,2),(2,3),(1,2),
     X   (1,2)/ 
       DATA C11/(1,3),(0,0),(2,2),(0,3),(1,2),(0,1),(2,2),(1,1),(1,3),
     X   (3,1)/ 
       DATA I10/10*0/ 
       DATA I11/10*0/ 
       DATA I12/10*0/ 
       DATA I13/10*0/ 
       DATA C12/5*(1,1),5*(2,2)/ 
       DATA C13/5*(0,0),5*(3,3)/ 
       DATA C14/5*(1,0),5*(3,2)/ 

       COMPLEX*16 CD20(10), CD21(10), CD22(10)
       INTEGER*4 I20(10), I21(10), I22(10)
       DOUBLE COMPLEX CDV24, CDV23, CDV22, CDV21, CDV20
       COMPLEX CV12, CV11, CV10
       INTEGER L, M, N
       PARAMETER (CDV24 = (3,1), CDV23 = (2,2), CDV22 = (4,3), CDV21 = 
     X   (3,2), CDV20 = (0,1))
       PARAMETER (CV12 = (1,1), CV11 = (1,1), CV10 = (2,2), L = 3, M = 5
     X   )
       PARAMETER (N = 10)

       DATA CD20/2*(1,1),2*(0,0),2*(2,2),2*(3,3),2*(0,1)/ 
       DATA CD21/2*(1,1),2*(1,0),2*(2,2),2*(3,1),2*(0,1)/ 
       DATA CD22/5*(1,1),5*(0,1)/ 
       DATA I20/10*0/ 
       DATA I21/10*0/ 
       DATA I22/10*0/ 
       LOGICAL LL1

                                                               
       WRITE (6, *) '----- LOOP 1 -----'
       DO I=1,10
        IF (C10(I) .EQ. (1.0,2.0)) THEN
         IF ((2.0,2.0) .NE. C11(I)) THEN
          I10(I) = I
         END IF
         IF (C10(3) .EQ. C11(5)) THEN
          I11(I) = I
         END IF
        END IF
        IF (C12(I) .NE. C13(I)) THEN
         IF (C14(I) .NE. CV10) THEN
          I12(I) = I
         END IF
         IF (CV11 .EQ. CV12) THEN
          I13(I) = I
         END IF
        END IF
       END DO
       WRITE (6, *) I10
       WRITE (6, *) I11
       WRITE (6, *) I12
       WRITE (6, *) I13

                                                               

       WRITE (6, *) '----- LOOP 2 -----'
       LL1 = CD20(3) .NE. CD21(3)
       DO I=1,10
        IF (CD20(I) .NE. CD21(I)) THEN
         IF (CD22(I) .NE. CDV20) THEN
          GO TO 3
         END IF
         GO TO 4
        END IF
    3   I20(I) = I
    4   IF (CD22(I) .EQ. CDV20) THEN
         IF (CDV21 .NE. CD22(I)) THEN
          IF (CD22(I) .NE. CDV22) THEN
           GO TO 5
          END IF
          GO TO 6
         END IF
        END IF
    5   I21(I) = I
    6   IF (LL1) THEN
         IF (CD20(3) .EQ. CDV23) THEN
          IF (CDV24 .EQ. CD21(3)) THEN
           GO TO 7
          END IF
          GO TO 8
         END IF
        END IF
    7   I22(I) = I
    8   CONTINUE
       END DO
       WRITE (6, *) I20
       WRITE (6, *) I21
       WRITE (6, *) I22
       STOP 
      END
