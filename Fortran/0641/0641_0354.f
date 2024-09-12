      PROGRAM MAIN
       REAL*4 A(20), B(20)
       INTEGER*4 N
       INTEGER M
       PARAMETER (M = 10)
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       INTEGER II2, II1

       DO I=1,10
        II2 = (11 - I) / 4
        II1 = I + II2 * 4
        DO J=I,7,4
         A(J) = A(J+1)
         B(J) = A(J) + B(J+10) + B(J+I)
         A(J+1) = A(J+2)
         B(J+1) = A(J+1) + B(J+11) + B(J+I+1)
         A(J+2) = A(J+3)
         B(J+2) = A(J+2) + B(J+12) + B(J+I+2)
         A(J+3) = A(J+4)
         B(J+3) = A(J+3) + B(J+13) + B(J+I+3)
        END DO
        DO J=II1,10,1
         A(J) = A(J+1)
         B(J) = A(J) + B(J+10) + B(J+I)
        END DO
       END DO

       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
