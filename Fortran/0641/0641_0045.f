      PROGRAM MAIN

       DIMENSION A(20), B(20), C(20)
       DATA A/10*1.,10*5./ 
       DATA B/20*2./ 
       DATA C/20*3./ 

       N = 10
       DO I=2,10
        A(I+N) = B(I) + C(N)
        IF (I .LE. 7) THEN
         B(I) = A(I+N-1) * 2.
         N = N - 1
         C(N) = A(I+N) + B(I-1)
        END IF
       END DO
       WRITE (6, *) ' A = ', A
       WRITE (6, *) ' B = ', B
       WRITE (6, *) ' C = ', C

       N = 15
       DO I=2,10
        A(I+N) = B(I) + C(N)
        IF (I .LE. 6) THEN
         B(I) = A(I+N-1) * 2.
         N = N - 2
         C(N) = A(I+N) + B(I-1)
        END IF
       END DO
       WRITE (6, *) ' A = ', A
       WRITE (6, *) ' B = ', B
       WRITE (6, *) ' C = ', C

       STOP 
      END
