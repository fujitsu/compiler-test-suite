      PROGRAM MAIN

       REAL*4 EV10(10,3), EV11(3)
       DATA EV10/30*100/ 
       DATA EV11/1,0,-1/ 

       REAL*8 DV20(10)
       REAL*4 EV20(10)
       DATA DV20/8*10,-9,7/ 
       DATA EV20/1,2,3,4,5,6,7,8,9,10/ 

       REAL*4 RV30(100), RV31(100)
       INTEGER IV30(100)
       INTEGER N30
       DOUBLEPRECISION DS30
       PARAMETER (N30 = 100, DS30 = 3.5)
       DATA RV30/9*1.5,2,9*1.5,2,80*1.5/ 
       DATA RV31/1,2,3,4,5,6,7,8,9,10*10,81*246/ 
       DATA IV30/100*2/ 
       INTEGER II5, II4, II3, II2, II1, I1, J1
       REAL RR1

       DO J1=1,3
        J = J1
        IF (EV11(J1) .LT. 0) GO TO 19
        RR1 = EV11(J1)
        DO I1=1,6,5
         II2 = I1 * J1
         II3 = (I1 + 1) * J1
         II4 = (I1 + 2) * J1
         II5 = (I1 + 3) * J1
         II1 = (I1 + 4) * J1
         EV10(I1,J1) = II2 - RR1
         EV10(I1+1,J1) = II3 - RR1
         EV10(I1+2,J1) = II4 - RR1
         EV10(I1+3,J1) = II5 - RR1
         EV10(I1+4,J1) = II1 - RR1
        END DO
       END DO
       J = 4
   19  CONTINUE

       WRITE (6, *) J, EV10, EV11

       DO I1=2,10
        IF (DV20(I1) .GE. 0D0) GO TO 29
        EV20(I1) = -EV20(I1-1) * 2.5
       END DO
   29  CONTINUE

       WRITE (6, *) DV20, EV20

       DO I1=1,100
        I = I1
        IF (REAL (IV30(I1) * RV30(I1), KIND = 8) .GE. DS30) GO TO 39
        RV31(I1) = RV31(I1) * 2 + DS30
       END DO
       I = 101
   39  CONTINUE
       WRITE (6, *) I, IV30, RV30

       STOP 
      END
