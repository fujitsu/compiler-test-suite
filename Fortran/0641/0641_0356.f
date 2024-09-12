      PROGRAM MAIN
       REAL*4 A(20), B(20)
       INTEGER*4 N, M, NN
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       INTEGER II2, II1


       DO I=1,10,1
        II2 = (11 - I) / 4
        II1 = I + II2 * 4
        DO J=I,7,4
         A(J) = A(J+I) + B(J)
         A(J) = A(J+1) + B(J)
         A(J) = A(J+10) + B(J)
         A(J) = A(J+1) + B(J)
         A(J+1) = A(J+I+1) + B(J+1)
         A(J+1) = A(J+2) + B(J+1)
         A(J+1) = A(J+11) + B(J+1)
         A(J+1) = A(J+2) + B(J+1)
         A(J+2) = A(J+I+2) + B(J+2)
         A(J+2) = A(J+3) + B(J+2)
         A(J+2) = A(J+12) + B(J+2)
         A(J+2) = A(J+3) + B(J+2)
         A(J+3) = A(J+I+3) + B(J+3)
         A(J+3) = A(J+4) + B(J+3)
         A(J+3) = A(J+13) + B(J+3)
         A(J+3) = A(J+4) + B(J+3)
        END DO
        DO J=II1,10,1
         A(J) = A(J+I) + B(J)
         A(J) = A(J+1) + B(J)
         A(J) = A(J+10) + B(J)
         A(J) = A(J+1) + B(J)
        END DO
        DO K=1,6,5
         B(K) = B(K+I)
         B(K) = B(K+1)
         B(K) = B(K+10)
         B(K) = B(K+1)
         B(K+1) = B(K+I+1)
         B(K+1) = B(K+2)
         B(K+1) = B(K+11)
         B(K+1) = B(K+2)
         B(K+2) = B(K+I+2)
         B(K+2) = B(K+3)
         B(K+2) = B(K+12)
         B(K+2) = B(K+3)
         B(K+3) = B(K+I+3)
         B(K+3) = B(K+4)
         B(K+3) = B(K+13)
         B(K+3) = B(K+4)
         B(K+4) = B(K+I+4)
         B(K+4) = B(K+5)
         B(K+4) = B(K+14)
         B(K+4) = B(K+5)
        END DO
       END DO

       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
