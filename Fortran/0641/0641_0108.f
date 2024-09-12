      PROGRAM MAIN

       REAL*4 EV10(10), EV11(10)
       DATA EV10/0,0,8*1.5/ 
       DATA EV11/10*1000/ 

       REAL*8 DV20(100)
       INTEGER IV20(100)
       DATA DV20/19*10.,0.,19*20.,0,60*30./ 
       DATA IV20/100*0/ 

       INTEGER IV30(10), IS30
       LOGICAL LV30(2)
       INTEGER N
       PARAMETER (N = 100)
       INTEGER I1
       LOGICAL LL1
       IS30 = 0
       DATA IV30/10*0/ 
       DATA LV30/.TRUE.,.FALSE./ 

       DO I1=1,10
        IF (EV10(I1) .GE. 0) THEN
         IF (EV10(I1) .EQ. 0) THEN
          EV11(I1) = 999.
          GO TO 19
         END IF
         EV11(I1) = 100.
        ELSE
         EV11(I1) = I1
        END IF
       END DO
   19  CONTINUE

       WRITE (6, *) EV10, EV11

  200  DO I1=1,100
        I = I1
        IF (DV20(I1) .GT. 0) THEN
         IV20(I1) = 100
        ELSE
         IV20(I1) = 200
         GO TO 29
        END IF
       END DO
       I = 101
   29  CONTINUE

       WRITE (6, *) I, IV20
       IF (I .EQ. 20) THEN
        DV20(I) = 1D0
        GO TO 200
       END IF
       LL1 = LV30(1) .AND. LV30(2)

       DO I1=1,10
        IF (LL1) GO TO 39
        IV30(I1) = I1
        IS30 = IS30 + 1
       END DO

   39  CONTINUE
       WRITE (6, *) IS30, IV30

       STOP 
      END
