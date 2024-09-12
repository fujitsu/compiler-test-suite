      PROGRAM MAIN
       REAL R10(10), R11(10), R12(10), R13(10,10), R14(10,10)
       REAL R15(10), R16(10,10), R17(10,10,10), R18(10,10,10)
       REAL R19(10), R20(10), R21(10)
       INTEGER II6, II5, II4, II3, II2, J1, I1, K1, II1
       REAL RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, 
     X   RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, 
     X   RR5, RR4, RR3, RR2, RR1

       R19=0
       DO II1=1,6,5
        R10(II1) = 0.
        R10(II1+1) = 0.
        R10(II1+2) = 0.
        R10(II1+3) = 0.
        R10(II1+4) = 0.
       END DO
C$OMP PARALLEL SHARED (R21,R20,R15,R12,R11,R13,R16,R18) PRIVATE (RR1,RR2
C$OMP& ,RR3,RR4,RR5,RR6,RR7,RR8,RR9,RR10,RR11,RR12,RR13,RR14,RR15,RR16,
C$OMP& RR17,RR18,RR19,RR20,RR21,RR22,RR23,RR24,RR25,I1,K1,J1,II2,II3,II4
C$OMP& ,II5,II6)
C$OMP DO 
       DO I1=1,6,5
        RR21 = I1 * I1
        RR22 = (I1 + 1) * (I1 + 1)
        RR23 = (I1 + 2) * (I1 + 2)
        RR24 = (I1 + 3) * (I1 + 3)
        RR25 = (I1 + 4) * (I1 + 4)

        DO K1=1,10
         DO J1=1,6,5
          RR1 = I1
          RR2 = I1 + 1
          RR3 = I1 + 2
          RR4 = I1 + 3
          RR5 = I1 + 4
          RR6 = I1 - J1
          RR7 = I1 - J1 + 1
          RR8 = I1 - J1 + 2
          RR9 = I1 - J1 + 3
          RR10 = I1 - J1 + 4
          RR11 = I1 - J1
          RR12 = I1 - J1 + 1
          RR13 = I1 - J1 + 2
          RR14 = I1 - J1 + 3
          RR15 = I1 - J1 + 4
          RR16 = I1
          RR17 = I1 + 1
          RR18 = I1 + 2
          RR19 = I1 + 3
          RR20 = I1 + 4
          RR1 = I1
          RR2 = I1 + 1
          RR3 = I1 + 2
          RR4 = I1 + 3
          RR5 = I1 + 4
          RR6 = I1 - J1 - 1
          RR7 = I1 - J1
          RR8 = I1 - J1 + 1
          RR9 = I1 - J1 + 2
          RR10 = I1 - J1 + 3
          RR11 = I1 - J1 - 1
          RR12 = I1 - J1
          RR13 = I1 - J1 + 1
          RR14 = I1 - J1 + 2
          RR15 = I1 - J1 + 3
          RR16 = I1
          RR17 = I1 + 1
          RR18 = I1 + 2
          RR19 = I1 + 3
          RR20 = I1 + 4
          RR1 = I1
          RR2 = I1 + 1
          RR3 = I1 + 2
          RR4 = I1 + 3
          RR5 = I1 + 4
          RR6 = I1 - J1 - 2
          RR7 = I1 - J1 - 1
          RR8 = I1 - J1
          RR9 = I1 - J1 + 1
          RR10 = I1 - J1 + 2
          RR11 = I1 - J1 - 2
          RR12 = I1 - J1 - 1
          RR13 = I1 - J1
          RR14 = I1 - J1 + 1
          RR15 = I1 - J1 + 2
          RR16 = I1
          RR17 = I1 + 1
          RR18 = I1 + 2
          RR19 = I1 + 3
          RR20 = I1 + 4
          RR1 = I1
          RR2 = I1 + 1
          RR3 = I1 + 2
          RR4 = I1 + 3
          RR5 = I1 + 4
          RR6 = I1 - J1 - 3
          RR7 = I1 - J1 - 2
          RR8 = I1 - J1 - 1
          RR9 = I1 - J1
          RR10 = I1 - J1 + 1
          RR11 = I1 - J1 - 3
          RR12 = I1 - J1 - 2
          RR13 = I1 - J1 - 1
          RR14 = I1 - J1
          RR15 = I1 - J1 + 1
          RR16 = I1
          RR17 = I1 + 1
          RR18 = I1 + 2
          RR19 = I1 + 3
          RR20 = I1 + 4
          RR1 = I1
          RR2 = I1 + 1
          RR3 = I1 + 2
          RR4 = I1 + 3
          RR5 = I1 + 4
          RR6 = I1 - J1 - 4
          RR7 = I1 - J1 - 3
          RR8 = I1 - J1 - 2
          RR9 = I1 - J1 - 1
          RR10 = I1 - J1
          RR11 = I1 - J1 - 4
          RR12 = I1 - J1 - 3
          RR13 = I1 - J1 - 2
          RR14 = I1 - J1 - 1
          RR15 = I1 - J1
          RR16 = I1
          RR17 = I1 + 1
          RR18 = I1 + 2
          RR19 = I1 + 3
          RR20 = I1 + 4
         END DO
        END DO
        R21(I1+4) = RR25
        R21(I1+3) = RR24
        R21(I1+2) = RR23
        R21(I1+1) = RR22
        R21(I1) = RR21
        R20(I1+4) = RR20
        R20(I1+3) = RR19
        R20(I1+2) = RR18
        R20(I1+1) = RR17
        R20(I1) = RR16
        R15(I1+4) = RR15
        R15(I1+3) = RR14
        R15(I1+2) = RR13
        R15(I1+1) = RR12
        R15(I1) = RR11
        R12(I1+4) = RR10
        R12(I1+3) = RR9
        R12(I1+2) = RR8
        R12(I1+1) = RR7
        R12(I1) = RR6
        R11(I1+4) = RR5
        R11(I1+3) = RR4
        R11(I1+2) = RR3
        R11(I1+1) = RR2
        R11(I1) = RR1
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J1=1,10

        DO K1=1,10
         DO I1=1,7,4
          R13(I1,J1) = I1 + J1
          R13(I1+1,J1) = I1 + J1 + 1
          R13(I1+2,J1) = I1 + J1 + 2
          R13(I1+3,J1) = I1 + J1 + 3
          R16(I1,J1) = -I1
          R16(I1+1,J1) = -1 - I1
          R16(I1+2,J1) = -2 - I1
          R16(I1+3,J1) = -3 - I1
         END DO
         R13(9,J1) = J1 + 9
         R13(10,J1) = J1 + 10
         R16(9,J1) = -9.
         R16(10,J1) = -10.
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO K1=1,10
        DO J1=1,7,4
         II2 = J1 + K1
         II3 = II2 + 1
         II4 = II2 + 2
         II5 = II2 + 3
         DO I1=1,6,5
          R18(I1,J1,K1) = II2
          R18(I1+1,J1,K1) = II2
          R18(I1+2,J1,K1) = II2
          R18(I1+3,J1,K1) = II2
          R18(I1+4,J1,K1) = II2
          R18(I1,J1+1,K1) = II3
          R18(I1+1,J1+1,K1) = II3
          R18(I1+2,J1+1,K1) = II3
          R18(I1+3,J1+1,K1) = II3
          R18(I1+4,J1+1,K1) = II3
          R18(I1,J1+2,K1) = II4
          R18(I1+1,J1+2,K1) = II4
          R18(I1+2,J1+2,K1) = II4
          R18(I1+3,J1+2,K1) = II4
          R18(I1+4,J1+2,K1) = II4
          R18(I1,J1+3,K1) = II5
          R18(I1+1,J1+3,K1) = II5
          R18(I1+2,J1+3,K1) = II5
          R18(I1+3,J1+3,K1) = II5
          R18(I1+4,J1+3,K1) = II5
         END DO
        END DO
        DO J1=9,10,1
         II6 = J1 + K1
         DO I1=1,6,5
          R18(I1,J1,K1) = II6
          R18(I1+1,J1,K1) = II6
          R18(I1+2,J1,K1) = II6
          R18(I1+3,J1,K1) = II6
          R18(I1+4,J1,K1) = II6
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' ----- TEST NO.1 ----- '
       DO I1=1,10
        R10(I1) = -R11(I1)
        RR26 = R10(I1)
        DO J1=1,10
         R16(I1,J1) = R12(J1) * R10(J1)
         DO K1=1,6,5
          R17(I1,J1,K1) = R18(I1,J1,K1) + R16(I1,K1)
          R17(I1,J1,K1+1) = R18(I1,J1,K1+1) + R16(I1,K1+1)
          R17(I1,J1,K1+2) = R18(I1,J1,K1+2) + R16(I1,K1+2)
          R17(I1,J1,K1+3) = R18(I1,J1,K1+3) + R16(I1,K1+3)
          R17(I1,J1,K1+4) = R18(I1,J1,K1+4) + R16(I1,K1+4)
         END DO
         R15(J1) = R15(J1) + RR26 + R17(1,I1,J1)
         R20(J1) = R15(J1) * R20(J1)
        END DO
        IF (R15(I1) .LT. 0) THEN
         R19(I1) = R15(I1)
        END IF
       END DO
       DO I1=1,10
        IF (R12(I1) .GE. 0) THEN
         R11(I1) = SQRT (R12(I1))
        END IF
        R21(I1) = R21(I1) - R10(I1)
       END DO
       DO J1=1,10
        DO I1=1,6,5
         R14(I1,J1) = SIN (R13(I1,J1))
         R14(I1+1,J1) = SIN (R13(I1+1,J1))
         R14(I1+2,J1) = SIN (R13(I1+2,J1))
         R14(I1+3,J1) = SIN (R13(I1+3,J1))
         R14(I1+4,J1) = SIN (R13(I1+4,J1))
        END DO
       END DO
       I = 11

       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' R14 = ', ((R14(I,J), I=1,10), J=1,2)
       WRITE (6, *) ' R15 = ', R15
       WRITE (6, *) ' R14 = ', ((R16(I,J), I=1,10), J=7,9)
       WRITE (6, *) ' R17 = ', (((R17(I,J,K), I=1,10), J=1,2), K=4,5)
       WRITE (6, *) ' R19 = ', R19
       WRITE (6, *) ' R20 = ', R20
       WRITE (6, *) ' R21 = ', R21

       STOP 
      END
