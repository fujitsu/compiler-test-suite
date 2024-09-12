      PROGRAM MAIN

       REAL*4 A(10,10), B(10,10), C(10,10)
       INTEGER N
       PARAMETER (N = 10)
       DATA A/100*1/ 
       DATA B/100*1/ 
       DATA C/100*1/ 
       INTEGER II2, II1
       REAL RR1
                                                     
       DO I=1,10
        IF (I .GT. 0) THEN
         RR1 = C(I,I) * 2
         II2 = I / 4
         II1 = II2 * 4 + 1
         DO J=1,I-3,4
          A(J,I) = C(J,J) * 2
          A(J+1,I) = C(J+1,J+1) * 2
          A(J+2,I) = C(J+2,J+2) * 2
          A(J+3,I) = C(J+3,J+3) * 2
          B(J,I) = RR1
          B(J+1,I) = RR1
          B(J+2,I) = RR1
          B(J+3,I) = RR1
         END DO
         DO J=II1,I,1
          A(J,I) = C(J,J) * 2
          B(J,I) = RR1
         END DO
        END IF
       END DO
       WRITE (6, *) A(9,9), B(3,3)
      END
