      PROGRAM MAIN
       REAL*4 A(20), B(20)
       INTEGER*4 N, M, NN, N1
       INTEGER N2
       PARAMETER (N2 = -10)
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,17.
     X   ,18.,19.,20./ 
       INTEGER II1

C$OMP PARALLEL SHARED (A,B) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (4), II1
        DO I=1,6,5
         A(I) = A(I+1) * 2. + A(I+10)
         A(I+1) = A(I+2) * 2. + A(I+11)
         A(I+2) = A(I+3) * 2. + A(I+12)
         A(I+3) = A(I+4) * 2. + A(I+13)
         A(I+4) = A(I+5) * 2. + A(I+14)
        END DO
C$OMP FLUSH
        GO TO 5
    4   DO I=1,6,5
         B(I) = B(I*2) + B(I+10)
         B(I+1) = B(I*2+2) + B(I+11)
         B(I+2) = B(I*2+4) + B(I+12)
         B(I+3) = B(I*2+6) + B(I+13)
         B(I+4) = B(I*2+8) + B(I+14)
        END DO
C$OMP FLUSH
    5   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
