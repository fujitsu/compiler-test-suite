      PROGRAM MAIN



       INTEGER ITR1(2), IS10
       REAL*4 EV10(100), EV20(100)
       DATA ITR1/100,0/ 
       DATA EV10/11*0.0,31*15,50*-25,7*0,.5/ 
       DATA EV20/100*0/ 



       REAL*4 DV20(100)
       DATA DV20/30*-3,-1,36*5,0,9*5,-1,20*4,2,-1/ 



       INTEGER ITR3(2)
       REAL*4 EV30(64), EV31(64)
       DATA EV30/31*1.5,31*2,3,1.75/ 
       DATA ITR3/0,64/ 
       DATA EV31/64*100/ 
       INTEGER II2, II1, I1

       DO J=1,2

        LPNO = 1
        II1 = ITR1(J)
        DO I1=1,ITR1(J)
         I = I1
         IS10 = EV10(I1)
         IF (EV10(I1) .EQ. FLOAT (IS10)) THEN
          EV20(I1) = IS10 + 1
         ELSE
          GO TO 19
         END IF
        END DO
        I = MAX0 (II1, 0) + 1

   19   CONTINUE
        GO TO (18, 29), LPNO
   18   WRITE (6, *) EV20, ITR1(J)

        LPNO = 2

        DO I1=100,1,-1
         I = I1
         IF (DV20(I1) .LT. 0) THEN
          GO TO 19
         END IF
         DV20(I1) = SQRT (DV20(I1))
        END DO
        I = 0
   29   CONTINUE
        WRITE (6, *) I
        DV20(I) = 0.

        II2 = ITR3(J)
        DO I1=1,ITR3(J)
         I = I1
         IF (SIN (EV30(I1)) .GT. 0) GO TO 30
         GO TO 39
   30    EV31(I1) = I1
        END DO
        I = MAX0 (II2, 0) + 1

 39     WRITE (6, *) EV31, I
       END DO

       STOP 
      END
