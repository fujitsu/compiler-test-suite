      PROGRAM MAIN
       REAL A(10), B(10)
       DATA B/2,4,6,8,10,12,14,16,18,20/ 
       DATA A/1,2,3,4,5,6,7,8,9,0/ 
       REAL RR5, RR4, RR3, RR2, RR1
       S = 0.
       DO I=1,6,5
        RR1 = I
        S = S + RR1 + B(I)
        RR2 = I + 1
        S = S + RR2 + B(I+1)
        RR3 = I + 2
        S = S + RR3 + B(I+2)
        RR4 = I + 3
        S = S + RR4 + B(I+3)
        RR5 = I + 4
        S = S + RR5 + B(I+4)
       END DO
       WRITE (6, *) S
       STOP 
      END
