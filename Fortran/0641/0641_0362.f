      PROGRAM MAIN
       REAL*4 A(30), B(30), C(30)
       INTEGER L2, L1, L, M1, N1, N
       PARAMETER (L2 = 5, L1 = 10, L = 10, M1 = -10, N1 = 1)
       PARAMETER (N = -5)
       DATA A/10*1.,10*2.,10*3./ 
       DATA B/10*1.,10*2.,10*3./ 
       DATA C/10*1.,10*2.,10*3./ 
       REAL RR4, RR3, RR2, RR1

       DO I=1,-5,-1
        DO I1=10,1,-1
         DO I2=1,-7,-1
          DO K1=1,6,5
           A(K1) = A(K1+5)
           A(K1+1) = A(K1+10)
           A(K1) = A(K1+10)
           A(K1+1) = A(K1+6)
           A(K1+2) = A(K1+11)
           A(K1+1) = A(K1+11)
           A(K1+2) = A(K1+7)
           A(K1+3) = A(K1+12)
           A(K1+2) = A(K1+12)
           A(K1+3) = A(K1+8)
           A(K1+4) = A(K1+13)
           A(K1+3) = A(K1+13)
           A(K1+4) = A(K1+9)
           A(K1+5) = A(K1+14)
           A(K1+4) = A(K1+14)
          END DO
          DO K2=15,27,4
           RR1 = 1. + A(K2)
           RR2 = 1. + A(K2+1)
           RR3 = 1. + A(K2+2)
           RR4 = 1. + A(K2+3)
           A(K2+3) = RR4
           A(K2+2) = RR3
           A(K2+1) = RR2
           A(K2) = RR1
          END DO
         END DO
        END DO
       END DO

       DO I=1,10,1
        IF (I .LE. 9) THEN
         DO I1=3,10,1
          DO I2=1,2,1
           DO K1=1,6,5
            B(K1) = B(K1+10)
            B(K1+2) = B(K1+10)
            B(K1+2) = B(K1+5)
            B(K1+1) = B(K1+11)
            B(K1+3) = B(K1+11)
            B(K1+3) = B(K1+6)
            B(K1+2) = B(K1+12)
            B(K1+4) = B(K1+12)
            B(K1+4) = B(K1+7)
            B(K1+3) = B(K1+13)
            B(K1+5) = B(K1+13)
            B(K1+5) = B(K1+8)
            B(K1+4) = B(K1+14)
            B(K1+6) = B(K1+14)
            B(K1+6) = B(K1+9)
           END DO
           DO K2=1,6,5
            B(K2) = B(K2+I)
            B(K2+1) = B(K2+I+1)
            B(K2+2) = B(K2+I+2)
            B(K2+3) = B(K2+I+3)
            B(K2+4) = B(K2+I+4)
           END DO
          END DO
         END DO
        ELSE
         DO I1=3,10,1
          DO I2=1,2,1
           DO K1=1,6,5
            B(K1) = B(K1+10)
            B(K1+2) = B(K1+10)
            B(K1+2) = B(K1+5)
            B(K1+1) = B(K1+11)
            B(K1+3) = B(K1+11)
            B(K1+3) = B(K1+6)
            B(K1+2) = B(K1+12)
            B(K1+4) = B(K1+12)
            B(K1+4) = B(K1+7)
            B(K1+3) = B(K1+13)
            B(K1+5) = B(K1+13)
            B(K1+5) = B(K1+8)
            B(K1+4) = B(K1+14)
            B(K1+6) = B(K1+14)
            B(K1+6) = B(K1+9)
           END DO
           DO K2=1,6,5
            B(K2) = B(K2+I)
            B(K2+1) = B(K2+I+1)
            B(K2+2) = B(K2+I+2)
            B(K2+3) = B(K2+I+3)
            B(K2+4) = B(K2+I+4)
           END DO
          END DO
         END DO
        END IF
       END DO

       WRITE (6, *) 'A=', A, 'B=', B, 'C=', C
       STOP 
      END
