      PROGRAM MAIN

       REAL A(10), B(2), S
       DATA B/2*99/ 
       DATA A/10*100/ 

       DO I=1,10
        IF (I .LT. 10) THEN
         S = I
         B(1) = S
         B(2) = S
         A(I) = S * S
        END IF
       END DO

       WRITE (6, *) A
       WRITE (6, *) B
       STOP 
      END
