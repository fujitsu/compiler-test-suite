      PROGRAM MAIN

       REAL*4 EV10(10), ES10
       DATA EV10/-10,0,8*1.5/ 

       REAL*8 DV10(1000), DS10
       DATA DV10/1000*200/ 

       REAL*4 EV30(12)
       LOGICAL LV30(10)
       INTEGER N
       PARAMETER (N = 10)
       INTEGER I1
       ES10 = 1.
       DS10 = 10D0
       DATA EV30/2,4,6,8,10,9,7,5,3,1,-3,-5/ 
       DATA LV30/7*.FALSE.,3*.TRUE./ 

  100  CONTINUE
       DO I1=1,10
        I = I1
        IF (EV10(I1) .GE. 0) THEN
         IF (ES10 .EQ. 0) GO TO 19
        END IF
       END DO
       I = 11
   19  CONTINUE

       WRITE (6, *) EV10, ES10, I

       IF (ES10 .NE. 0) THEN
        ES10 = 0.
        GO TO 100
       END IF

       DO I1=1,6,5
        I = I1
        DS10 = DS10 * DV10(I1)
        IF (DV10(I1)) 29, 29, 20
   20   CONTINUE
        I = I1 + 1
        DS10 = DS10 * DV10(I1+1)
        IF (DV10(I1+1)) 29, 29, 1
    1   CONTINUE
        I = I1 + 2
        DS10 = DS10 * DV10(I1+2)
        IF (DV10(I1+2)) 29, 29, 2
    2   CONTINUE
        I = I1 + 3
        DS10 = DS10 * DV10(I1+3)
        IF (DV10(I1+3)) 29, 29, 3
    3   CONTINUE
        I = I1 + 4
        DS10 = DS10 * DV10(I1+4)
        IF (DV10(I1+4)) 29, 29, 4
    4   CONTINUE
       END DO
       I = 11
   29  CONTINUE

       WRITE (6, *) I, (DV10(K), K=1,11), DS10

       DO I1=1,10
        EV30(I1) = 1. + EV30(I1+1)
        IF (LV30(I1)) GO TO 39
        EV30(I1+1) = EV30(I1+2) - 1
       END DO

   39  CONTINUE
       WRITE (6, *) EV30

       STOP 
      END
