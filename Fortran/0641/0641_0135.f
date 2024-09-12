      PROGRAM MAIN
       REAL A(10), B(2), C(10), S
       DATA B/2*0/ 
       DATA A/1,2,3,4,5,6,7,8,9,-10/ 
       REAL RR2, RR1
       RR1 = B(1)
       DO I=1,6,5
        S = RR1
        RR1 = S + A(I)
        S = RR1
        RR1 = S + A(I+1)
        S = RR1
        RR1 = S + A(I+2)
        S = RR1
        RR1 = S + A(I+3)
        S = RR1
        RR1 = S + A(I+4)
       END DO
       B(1) = RR1

       WRITE (6, 900) S
       WRITE (6, 900) B
       RR2 = B(2)

       DO I=1,6,5
        S = RR2 + A(I)
        RR2 = RR2 + A(I)
        S = RR2 + A(I+1)
        RR2 = RR2 + A(I+1)
        S = RR2 + A(I+2)
        RR2 = RR2 + A(I+2)
        S = RR2 + A(I+3)
        RR2 = RR2 + A(I+3)
        S = RR2 + A(I+4)
        RR2 = RR2 + A(I+4)
       END DO
       B(2) = RR2

       WRITE (6, 900) S
       WRITE (6, 900) B
  900  FORMAT(' ',(6E12.4))
       STOP 
      END
