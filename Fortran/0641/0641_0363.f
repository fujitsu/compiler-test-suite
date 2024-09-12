      PROGRAM MAIN
       REAL*4 A(30), B(30)
       INTEGER N6, N5, N4, N2, N1, N
       PARAMETER (N6 = 1, N5 = 1, N4 = -10, N2 = 8, N1 = 10)
       PARAMETER (N = 10)
       DATA A/10*1.,10*2.,10*3./ 
       DATA B/10*1.,10*2.,10*3./ 

       DO I=1,10,1
        IF (I .LE. 9) THEN
         DO I1=2,10,1
          DO I2=3,11,1
           DO K1=1,6,5
            A(K1) = A(K1+10)
            A(K1+1) = A(K1+10)
            A(K1+1) = A(K1+8)
            A(K1+1) = A(K1+11)
            A(K1+2) = A(K1+11)
            A(K1+2) = A(K1+9)
            A(K1+2) = A(K1+12)
            A(K1+3) = A(K1+12)
            A(K1+3) = A(K1+10)
            A(K1+3) = A(K1+13)
            A(K1+4) = A(K1+13)
            A(K1+4) = A(K1+11)
            A(K1+4) = A(K1+14)
            A(K1+5) = A(K1+14)
            A(K1+5) = A(K1+12)
           END DO
           DO K2=11,16,5
            A(K2) = A(K2+I)
            A(K2+1) = A(K2+I+1)
            A(K2+2) = A(K2+I+2)
            A(K2+3) = A(K2+I+3)
            A(K2+4) = A(K2+I+4)
           END DO
          END DO
         END DO
        ELSE
         DO I1=2,10,1
          DO I2=3,11,1
           DO K1=1,6,5
            A(K1) = A(K1+10)
            A(K1+1) = A(K1+10)
            A(K1+1) = A(K1+8)
            A(K1+1) = A(K1+11)
            A(K1+2) = A(K1+11)
            A(K1+2) = A(K1+9)
            A(K1+2) = A(K1+12)
            A(K1+3) = A(K1+12)
            A(K1+3) = A(K1+10)
            A(K1+3) = A(K1+13)
            A(K1+4) = A(K1+13)
            A(K1+4) = A(K1+11)
            A(K1+4) = A(K1+14)
            A(K1+5) = A(K1+14)
            A(K1+5) = A(K1+12)
           END DO
           DO K2=11,16,5
            A(K2) = A(K2+I)
            A(K2+1) = A(K2+I+1)
            A(K2+2) = A(K2+I+2)
            A(K2+3) = A(K2+I+3)
            A(K2+4) = A(K2+I+4)
           END DO
          END DO
         END DO
        END IF
       END DO

       WRITE (6, *) 'A=', A, 'B=', B
       STOP 
      END
