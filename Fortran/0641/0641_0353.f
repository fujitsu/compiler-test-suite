      PROGRAM MAIN
       REAL*4 A(20), B(20)
       INTEGER*4 N, NN
       INTEGER M
       PARAMETER (M = 10)
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       REAL RR4, RR3, RR2, RR1


       DO I=1,6,5
        A(I) = A(I+1) + B(I)
        B(I) = B(I+1) + A(I)
        A(I+1) = A(I+2) + B(I+1)
        B(I+1) = B(I+2) + A(I+1)
        A(I+2) = A(I+3) + B(I+2)
        B(I+2) = B(I+3) + A(I+2)
        A(I+3) = A(I+4) + B(I+3)
        B(I+3) = B(I+4) + A(I+3)
        A(I+4) = A(I+5) + B(I+4)
        B(I+4) = B(I+5) + A(I+4)
       END DO

       DO I=1,6,5
        RR1 = B(I+10)
        RR2 = B(I+11)
        RR3 = B(I+12)
        RR4 = B(I+13)
        B(I+4) = B(I+14)
        B(I+3) = RR4
        B(I+2) = RR3
        B(I+1) = RR2
        B(I) = RR1
       END DO

       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
