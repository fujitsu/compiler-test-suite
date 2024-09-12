      PROGRAM MAIN
       REAL*4 S1, S2, S3
       REAL*4 A1(20), A2(20), A3(20)
       REAL*4 A6(20,30,20)
       REAL*4 SA1(20), SA2(20), SA3(20)
       LOGICAL*4 L1(20), L2(20)
       INTEGER M, N
       PARAMETER (M = 11, N = 10)
       REAL RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, 
     X   RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, 
     X   RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL2, LL1
       DATA A6/12000*0.0/

       DO I=1,17,4
        RR15 = I
        RR16 = I + 1
        RR17 = I + 2
        RR18 = I + 3
        RR19 = 1. + RR15
        RR20 = 1. + RR16
        RR21 = 1. + RR17
        RR22 = 1. + RR18
        RR23 = 1. + RR19
        RR24 = 1. + RR20
        RR25 = 1. + RR21
        RR26 = 1. + RR22
        SA1(I) = RR15
        SA1(I+1) = RR16
        SA1(I+2) = RR17
        SA1(I+3) = RR18
        SA2(I) = RR19
        SA2(I+1) = RR20
        SA2(I+2) = RR21
        SA2(I+3) = RR22
        SA3(I) = RR23
        SA3(I+1) = RR24
        SA3(I+2) = RR25
        SA3(I+3) = RR26
        L1(I) = .TRUE.
        L1(I+1) = .TRUE.
        L1(I+2) = .TRUE.
        L1(I+3) = .TRUE.
        L2(I) = .FALSE.
        L2(I+1) = .FALSE.
        L2(I+2) = .FALSE.
        L2(I+3) = .FALSE.
        A3(I+3) = RR26
        A3(I+2) = RR25
        A3(I+1) = RR24
        A3(I) = RR23
        A2(I+3) = RR22
        A2(I+2) = RR21
        A2(I+1) = RR20
        A2(I) = RR19
        A1(I+3) = RR18
        A1(I+2) = RR17
        A1(I+1) = RR16
        A1(I) = RR15
       END DO
C$OMP PARALLEL SHARED (A6) PRIVATE (I2,I1,I)
C$OMP DO 
       DO I2=1,20
        DO I1=1,17,4

         DO I=1,17,4
          A6(I,I1,I2) = I2
          A6(I+1,I1,I2) = I2
          A6(I+2,I1,I2) = I2
          A6(I+3,I1,I2) = I2
          A6(I,I1+1,I2) = I2
          A6(I+1,I1+1,I2) = I2
          A6(I+2,I1+1,I2) = I2
          A6(I+3,I1+1,I2) = I2
          A6(I,I1+2,I2) = I2
          A6(I+1,I1+2,I2) = I2
          A6(I+2,I1+2,I2) = I2
          A6(I+3,I1+2,I2) = I2
          A6(I,I1+3,I2) = I2
          A6(I+1,I1+3,I2) = I2
          A6(I+2,I1+3,I2) = I2
          A6(I+3,I1+3,I2) = I2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=1,11
        RR1 = I2 * 2.

        DO I1=1,10
         S2 = A2(I2) + I2
         DO I3=1,10
          S3 = A3(I3) + I3
          IF (S3 .GT. 0) THEN
           A6(I1,I2,I3) = A1(I1) + A2(I2) + A3(I3) + A6(I1*2,I2*2,I3)
           IF (S3 .EQ. 0) THEN
            GO TO 6
           END IF
           S3 = A1(I1) + I1 + I2 + I3
          END IF
          S3 = S3 + A6(I1,I2,I3)
    6     CONTINUE
         END DO
         A2(I2) = A2(I2) * 2. + RR1
        END DO
       END DO

       DO I1=1,6,5
        S1 = 4 + A1(I1+4) + I1
        RR7 = A1(I1) * 2.
        RR8 = A1(I1+1) * 2.
        RR9 = A1(I1+2) * 2.
        RR10 = A1(I1+3) * 2.
        RR5 = A1(I1+4) * 2.
        RR11 = I1 * 2.
        RR12 = 2. + I1 * 2.
        RR13 = 4. + I1 * 2.
        RR14 = 6. + I1 * 2.
        RR6 = 8. + I1 * 2.
        RR27 = RR7 + RR11
        RR28 = RR8 + RR12
        RR29 = RR9 + RR13
        RR30 = RR10 + RR14
        RR31 = RR5 + RR6
        A1(I1+4) = RR31
        A1(I1+3) = RR30
        A1(I1+2) = RR29
        A1(I1+1) = RR28
        A1(I1) = RR27
       END DO

       WRITE (6, *) S1, S2, S3, A6


       DO I1=1,10
        RR3 = A1(I1) + I1
        LL2 = L1(I1)
        DO I2=1,11
         RR2 = A2(I2) + I2
         LL1 = LL2
         DO I3=1,10
          SA3(1) = A3(I3) + I3
          IF (LL1) THEN
           A6(I1,I2,I3) = A1(I1) + A2(I2) + A3(I3)
           IF (L2(I2)) GO TO 202
           SA3(1) = A1(I1) + A2(I2) + A3(I3) + I1 + I2 + I3
          END IF
  202     CONTINUE
         END DO
        END DO
        RR4 = RR2
        RR3 = RR3 + A1(I1)
       END DO
       SA1(1) = RR3
       SA2(1) = RR4

       WRITE (6, *) SA1, SA2, SA3, A6

       STOP 
      END
