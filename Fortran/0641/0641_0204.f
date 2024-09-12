      PROGRAM MAIN
       REAL A(10), B(10,10)
       INTEGER N
       PARAMETER (N = 10)
       DATA B/70*2.5,30*4/ 
       DATA A/10*90./ 
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DO L=1,10
        DO J=1,7,4
         DO I=1,6,5
          RR1 = A(I) + B(I,J)
          RR2 = A(I+1) + B(I+1,J)
          RR3 = A(I+2) + B(I+2,J)
          RR4 = A(I+3) + B(I+3,J)
          RR5 = A(I+4) + B(I+4,J)
          RR1 = RR1 + B(I,J+1)
          RR2 = RR2 + B(I+1,J+1)
          RR3 = RR3 + B(I+2,J+1)
          RR4 = RR4 + B(I+3,J+1)
          RR5 = RR5 + B(I+4,J+1)
          RR1 = RR1 + B(I,J+2)
          RR2 = RR2 + B(I+1,J+2)
          RR3 = RR3 + B(I+2,J+2)
          RR4 = RR4 + B(I+3,J+2)
          RR5 = RR5 + B(I+4,J+2)
          RR1 = RR1 + B(I,J+3)
          RR2 = RR2 + B(I+1,J+3)
          RR3 = RR3 + B(I+2,J+3)
          RR4 = RR4 + B(I+3,J+3)
          RR5 = RR5 + B(I+4,J+3)
          A(I+4) = RR5
          A(I+3) = RR4
          A(I+2) = RR3
          A(I+1) = RR2
          A(I) = RR1
         END DO
        END DO
        DO J=9,10,1
         DO I=1,6,5
          RR6 = A(I) + B(I,J)
          RR7 = A(I+1) + B(I+1,J)
          RR8 = A(I+2) + B(I+2,J)
          RR9 = A(I+3) + B(I+3,J)
          RR10 = A(I+4) + B(I+4,J)
          A(I+4) = RR10
          A(I+3) = RR9
          A(I+2) = RR8
          A(I+1) = RR7
          A(I) = RR6
         END DO
        END DO

        WRITE (6, *) A
       END DO
       STOP 
      END
