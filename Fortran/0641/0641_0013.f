      PROGRAM MAIN
       REAL*4 EV01(5,5,2)
       DATA EV01/50*100/ 
       DO J=1,5
        EV01(1,J,1) = J + 2
        EV01(2,J,1) = J + 3
        EV01(3,J,1) = J + 4
        EV01(4,J,1) = J + 5
        EV01(5,J,1) = J + 6
        EV01(1,J,2) = J + 3
        EV01(2,J,2) = J + 4
        EV01(3,J,2) = J + 5
        EV01(4,J,2) = J + 6
        EV01(5,J,2) = J + 7
       END DO

       WRITE (6, *) EV01
       STOP 
      END
