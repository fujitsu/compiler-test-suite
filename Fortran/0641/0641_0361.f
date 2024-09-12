      PROGRAM MAIN
       REAL*4 A(30), B(30), C(30), D(30)
       INTEGER L12, L11, L10, L9, L8, L7, L6, L5, L4, L3, L2, L1
       PARAMETER (L12 = 10, L11 = -10, L10 = 10, L9 = -10, L8 = 10)
       PARAMETER (L7 = -10, L6 = -10, L5 = 10, L4 = -10, L3 = -10)
       PARAMETER (L2 = 10, L1 = 10)
       DATA A/10*1.,10*2.,10*3./ 
       DATA B/10*4.,10*5.,10*6./ 
       DATA C/10*7.,10*8.,10*9./ 
       DATA D/10*10.,10*11.,10*12./ 
       REAL RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, 
     X   RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1


       DO I=1,10,1
        DO J=1,10,1
         DO J1=1,10,1
          DO K1=1,6,5
           RR1 = A(K1+10)
           RR2 = A(K1+11)
           RR3 = A(K1+12)
           RR4 = A(K1+13)
           RR5 = A(K1+14)
           A(K1+4) = RR5
           A(K1+3) = RR4
           A(K1+2) = RR3
           A(K1+1) = RR2
           A(K1) = RR1
          END DO
          DO K2=11,16,5
           RR6 = A(K2+10)
           RR7 = A(K2+11)
           RR8 = A(K2+12)
           RR9 = A(K2+13)
           A(K2+4) = A(K2+14)
           A(K2+3) = RR9
           A(K2+2) = RR8
           A(K2+1) = RR7
           A(K2) = RR6
          END DO
         END DO
        END DO
       END DO

       DO I=-1,-10,-1
        DO J=-1,-10,-1
         DO J2=-1,-10,-1
          DO K1=1,6,5
           RR10 = C(K1+10)
           RR11 = C(K1+11)
           RR12 = C(K1+12)
           RR13 = C(K1+13)
           RR14 = C(K1+14)
           C(K1+4) = RR14
           C(K1+3) = RR13
           C(K1+2) = RR12
           C(K1+1) = RR11
           C(K1) = RR10
          END DO
          DO K2=1,6,5
           C(K2) = A(K2-I)
           C(K2+1) = A(K2-I+1)
           C(K2+2) = A(K2-I+2)
           C(K2+3) = A(K2-I+3)
           C(K2+4) = A(K2-I+4)
          END DO
         END DO
        END DO
       END DO

       DO I=10,1,-1
        DO J=10,1,-1
         DO J1=10,1,-1
          DO K1=1,6,5
           RR15 = D(K1+10)
           RR16 = D(K1+11)
           RR17 = D(K1+12)
           RR18 = D(K1+13)
           RR19 = D(K1+14)
           D(K1+4) = RR19
           D(K1+3) = RR18
           D(K1+2) = RR17
           D(K1+1) = RR16
           D(K1) = RR15
          END DO
          DO K2=1,6,5
           D(K2) = D(K2+1)
           D(K2+1) = D(K2+2)
           D(K2+2) = D(K2+3)
           D(K2+3) = D(K2+4)
           D(K2+4) = D(K2+5)
          END DO
         END DO
        END DO
       END DO

       WRITE (6, *) 'A=', A, 'B=', B, 'C=', C, 'D=', D
       STOP 
      END
