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
         RA(I) = RB(I)
        END IF
       END DO

       WRITE (6, *) '**IFA1**'
       WRITE (6, *) 'RA = ', RA

       DO I=1,100
        IF (I .LE. 10) THEN
         RC(I) = RD(I) + RE(I)
        END IF
       END DO

       WRITE (6, *) '**IFA2**'
       WRITE (6, *) 'RC = ', RC

       DO I=1,100
        IF (I .LE. 10) THEN
         RF(I) = RA(I)
         IF (I .LT. 5) THEN
          RD(I) = RF(I)
         END IF
        END IF
       END DO

       WRITE (6, *) '**IFA3**'
       WRITE (6, *) 'RD = ', RD
       WRITE (6, *) 'RF = ', RF

       DO I=1,100
        IF (I .LE. 5) THEN
         RF(I) = RA(I)
        ELSE
         IF (I .EQ. 6) THEN
          RD(I) = RF(I)
         END IF
        END IF
       END DO

       WRITE (6, *) '**IFA4**'
       WRITE (6, *) 'RD = ', RD
       WRITE (6, *) 'RF = ', RF

       STOP 
      END
