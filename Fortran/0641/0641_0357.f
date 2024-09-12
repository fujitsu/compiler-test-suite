      PROGRAM MAIN
       REAL*4 A(20), B(20)
       INTEGER*4 N, NN
       INTEGER MM, M
       PARAMETER (MM = 10, M = 10)
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       INTEGER II3, II2, II1

C$OMP PARALLEL SHARED (A,B) PRIVATE (II3,II2,II1,I,J1,J2,K1,K2)
C$OMP DO 
       DO II1=0,1
        GO TO (5), II1
        DO I=1,10,1
         DO J1=1,10
          DO J2=1,6,5
           A(J2) = A(J2+1)
           A(J2) = A(J2+1)
           A(J2) = A(J2+10)
           A(J2) = A(J2+I)
           A(J2) = A(J2+J1)
           A(J2) = A(J2+1)
           A(J2) = A(J2+10)
           A(J2+1) = A(J2+2)
           A(J2+1) = A(J2+2)
           A(J2+1) = A(J2+11)
           A(J2+1) = A(J2+I+1)
           A(J2+1) = A(J2+J1+1)
           A(J2+1) = A(J2+2)
           A(J2+1) = A(J2+11)
           A(J2+2) = A(J2+3)
           A(J2+2) = A(J2+3)
           A(J2+2) = A(J2+12)
           A(J2+2) = A(J2+I+2)
           A(J2+2) = A(J2+J1+2)
           A(J2+2) = A(J2+3)
           A(J2+2) = A(J2+12)
           A(J2+3) = A(J2+4)
           A(J2+3) = A(J2+4)
           A(J2+3) = A(J2+13)
           A(J2+3) = A(J2+I+3)
           A(J2+3) = A(J2+J1+3)
           A(J2+3) = A(J2+4)
           A(J2+3) = A(J2+13)
           A(J2+4) = A(J2+5)
           A(J2+4) = A(J2+5)
           A(J2+4) = A(J2+14)
           A(J2+4) = A(J2+I+4)
           A(J2+4) = A(J2+J1+4)
           A(J2+4) = A(J2+5)
           A(J2+4) = A(J2+14)
          END DO
         END DO
        END DO
C$OMP FLUSH
        GO TO 6
    5   DO I=1,10,1
         II3 = (11 - I) / 4
         II2 = I + II3 * 4

         DO K1=10,1,-1
          DO K2=I,7,4
           B(K2) = B(K2+10)
           B(K2) = B(K2+1)
           B(K2) = B(K2+I)
           B(K2) = B(K2+1)
           B(K2) = B(K2+K1)
           B(K2+1) = B(K2+11)
           B(K2+1) = B(K2+2)
           B(K2+1) = B(K2+I+1)
           B(K2+1) = B(K2+2)
           B(K2+1) = B(K2+K1+1)
           B(K2+2) = B(K2+12)
           B(K2+2) = B(K2+3)
           B(K2+2) = B(K2+I+2)
           B(K2+2) = B(K2+3)
           B(K2+2) = B(K2+K1+2)
           B(K2+3) = B(K2+13)
           B(K2+3) = B(K2+4)
           B(K2+3) = B(K2+I+3)
           B(K2+3) = B(K2+4)
           B(K2+3) = B(K2+K1+3)
          END DO
          DO K2=II2,10,1
           B(K2) = B(K2+10)
           B(K2) = B(K2+1)
           B(K2) = B(K2+I)
           B(K2) = B(K2+1)
           B(K2) = B(K2+K1)
          END DO
         END DO
        END DO
C$OMP FLUSH
    6   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
