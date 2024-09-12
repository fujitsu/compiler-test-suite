      PROGRAM MAIN



       INTEGER JV(2)
       DATA JV/1,2/ 



       REAL*4 EV10(10)
       DATA EV10/4*0,5*-2.5,-1.5/ 



       REAL*8 DV20(200)
       REAL*4 EV20(200)
       INTEGER IV20(200)
       DATA (DV20(I), I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/ 
       DATA (DV20(I), I=2,200,2)/1,2,28*5,0,36*4,-1,32*-3/ 
       DATA EV20/200*3.5/ 
       DATA IV20/200*1000/ 



       REAL*4 EV30(64)
       INTEGER IV30(64), J
       INTEGER IS30, ITR2, ITR1
       PARAMETER (IS30 = -1, ITR2 = 200, ITR1 = 10)
       REAL RR1
       PARAMETER (RR1 = 1. / 512.)
       DATA EV30/31*1.5,31*2,3,1.75/ 
       DATA IV30/40*2,0,23*3/ 
       INTEGER I1
       REAL RR2

       DO K=1,2

        DO I1=1,10
         IF (EV10(I1) .GT. 0) THEN
          GO TO 6
         END IF
        END DO

    6   DO I1=1,200,2
         I = I1
        END DO
       END DO

       DO K=1,2
        J = JV(K)

        WRITE (6, *) EV10

        DO I1=1,200,2
         IF (DV20(J) .GT. 0) THEN
          EV20(I1) = DV20(J) + EV20(I1) * RR1
         ELSE
          GO TO 8
         END IF
         J = J + 2
        END DO
        I = 201

 8      WRITE (6, *) I, J
        WRITE (6, *) EV20
       END DO
       RR2 = 2 + EV30(1)

       DO I1=1,64
        IF (IV30(I1) * RR2 .EQ. 0) GO TO 30
        GO TO 39
   30   J = J - 1
       END DO

   39  CONTINUE
       WRITE (6, *) J

       STOP 
      END
