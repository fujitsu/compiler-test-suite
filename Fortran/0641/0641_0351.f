      PROGRAM MAIN
       REAL*4 RA(10), RB(10), RC(10), RD(10), RE(10), RF(10)
       DATA RA/10*1./ 
       DATA RB/10*2./ 
       DATA RC/10*3./ 
       DATA RD/10*1./ 
       DATA RE/10*2./ 
       DATA RF/10*3./ 

       DO I=1,100
        IF (I .LE. 10) THEN
         RA(I) = 1.
        END IF
       END DO

       WRITE (6, *) '**IFC1**'
       WRITE (6, *) 'RA = ', RA

       DO I=1,100
        IF (I .LE. 10) THEN
         RF(I) = 1.
         IF (I .LT. 5) THEN
          RD(I) = 1.
         END IF
        END IF
       END DO

       WRITE (6, *) '**IFC2**'
       WRITE (6, *) 'RD = ', RD
       WRITE (6, *) 'RF = ', RF

       DO I=1,100
        IF (I .LE. 6) THEN
         RF(I) = 1.
        ELSE
         IF (I .EQ. 9) THEN
          RD(I) = 2.
         END IF
        END IF
       END DO

       WRITE (6, *) '**IFC3**'
       WRITE (6, *) 'RD = ', RD
       WRITE (6, *) 'RF = ', RF

       STOP 
      END
