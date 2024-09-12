      PROGRAM MAIN
       INTEGER IG(10), NA, NA2
       INTEGER MXC
       PARAMETER (MXC = 3)
       NA = 10
       DATA IG/9*3,2/ 
       DO L=1,10
        IF (IG(NA) .NE. 3) GO TO 180
        IG(NA) = 0
        NA = NA - 1
       END DO
  180  CONTINUE
       WRITE (6, *) NA
      END
