      PROGRAM MAIN
       REAL*4 A(20), B(20)
       INTEGER N, M
       PARAMETER (N = 1, M = 10)
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       REAL RR5, RR4, RR3, RR2, RR1

       DO I=5,10,1
        DO I1=10,1,-1
         RR1 = B(I1)
         DO I2=1,6,5
          RR2 = A(I2+10) + RR1
          RR3 = A(I2+11) + RR1
          RR4 = A(I2+12) + RR1
          RR5 = A(I2+13) + RR1
          A(I2+4) = A(I2+14) + RR1
          A(I2+3) = RR5
          A(I2+2) = RR4
          A(I2+1) = RR3
          A(I2) = RR2
         END DO
         DO I3=11,16,5
          A(I3-10) = A(I3-1) + B(I3)
          A(I3-9) = A(I3) + B(I3+1)
          A(I3-8) = A(I3+1) + B(I3+2)
          A(I3-7) = A(I3+2) + B(I3+3)
          A(I3-6) = A(I3+3) + B(I3+4)
         END DO
        END DO
       END DO

       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
