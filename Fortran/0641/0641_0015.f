      PROGRAM MAIN
       INTEGER ICARD(10)
       DATA ICARD/0,4*10,0,4*9/ 
       INTEGER INTEG(12), IREAL(3)
       INTEGER IBLANK, NINT, NREA, NCHAR
       PARAMETER (IBLANK = 0, NINT = 12, NREA = 2, NCHAR = 10)
       DATA IREAL/3*100/ 
       DATA INTEG/12*10/ 
       INTEGER II1

       ITYPE = 0
       DO I=1,10
        IF (ICARD(I) .NE. 0) THEN
         II1 = ICARD(I)
         DO J=1,12
          IF (II1 .EQ. INTEG(J)) GO TO 60
         END DO
         IF (ICARD(I) .EQ. IREAL(1)) GO TO 50
         IF (ITYPE .GE. 2) THEN
          WRITE (6, *) 'LOOP, I=', I
         END IF

         ITYPE = 1
         GO TO 90
   50    ITYPE = 3
         GO TO 90
   60    ITYPE = 2
        END IF
       END DO

   90  WRITE (6, *) 'ITYPE=', ITYPE
       STOP 
      END
