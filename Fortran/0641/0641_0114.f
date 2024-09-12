      PROGRAM MAIN

       INTEGER LOOP



       INTEGER J
       REAL*4 EV10(10)
       DATA EV10/0,3*1,5*-2.5,0/ 



       REAL*8 DV20(200)
       REAL*4 EV20(200)
       INTEGER IV20(200)
       DATA (DV20(I), I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/ 
       DATA (DV20(I), I=2,200,2)/1,2,0,28*5,36*4,-1,32*-3/ 
       DATA EV20/200*3.5/ 
       DATA IV20/200*1000/ 



       REAL*4 EV30(64)
       INTEGER IV30(64)
       INTEGER ITR2, ITR1
       PARAMETER (ITR2 = 200, ITR1 = 10)
       REAL RR1
       PARAMETER (RR1 = 1. / 512.)
       INTEGER I1
       REAL RR2
       J = 10
       DATA EV30/31*1.5,31*2,3,1.75/ 
       DATA IV30/40*2,0,23*3/ 

       LOOP = 1
       DO I1=1,10
        I = I1
        IF (EV10(J) .EQ. 0) GO TO 29
        J = J - 1
       END DO

 19    WRITE (6, *) J

       LOOP = 2
       DO J=1,2

        DO I1=2,200,2
         I = I1
         IF (DV20(I1) .GT. 0) THEN
          EV20(I1) = DV20(J) + EV20(I1) * RR1
         ELSE
          GO TO 29
         END IF
        END DO
        I = 202
   29   CONTINUE
        GO TO (19), LOOP
        WRITE (6, *) I
        WRITE (6, *) EV20
       END DO

       RR2 = 2 + EV30(1)

       DO I1=1,64
        IF (IV30(I1) * RR2 .NE. 0) THEN
          STOP
        END IF
       END DO


       STOP 
      END
