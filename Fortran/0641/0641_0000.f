      PROGRAM MAIN
       REAL*8 A(10,10)
       INTEGER J1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       J = 2
       DATA A/90*3.5,10*2.5/ 
       DO I=1,10
    5   IF (A(I,J) .GE. 3D0) THEN
         DO J1=1,10
          J = J1
          A(I,J1) = A(I,J1) * .1
          IF (J1 .EQ. 10) THEN
           GO TO 5
          END IF
         END DO
         J = 11
         J = 1
         GO TO 5
        END IF
       END DO
       WRITE (6, *) A
       DO I=1,10
    7   CONTINUE
        DO J1=1,6,5
         DD1 = A(I,J1) * 10
         DD2 = A(I,J1+1) * 10
         DD3 = A(I,J1+2) * 10
         DD4 = A(I,J1+3) * 10
         DD5 = A(I,J1+4) * 10
         A(I,J1+4) = DD5
         A(I,J1+3) = DD4
         A(I,J1+2) = DD3
         A(I,J1+1) = DD2
         A(I,J1) = DD1
        END DO
        IF (A(I,10) .LT. 3D0) THEN
         GO TO 7
        END IF
        IF (A(I,9) .LT. 9D0) THEN
         GO TO 7
        END IF
       END DO
       WRITE (6, *) A
      END
