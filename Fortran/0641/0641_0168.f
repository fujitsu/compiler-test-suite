      PROGRAM MAIN
       REAL R10(100), R11(100), R12(100), R13(100,100), R14(100,100)
       REAL R15(100)
       INTEGER J1, I1
       REAL RR36, RR35, RR34, RR33, RR32, RR31, RR30, RR29, RR28, RR27, 
     X   RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, 
     X   RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, 
     X   RR5, RR4, RR3, RR2, RR1
       data r15/100*0/

C$OMP PARALLEL SHARED (R11,R13,R14) PRIVATE (RR1,RR2,RR3,RR4,I1,J1)
C$OMP DO 
       DO I1=1,97,4
        DO J1=1,97,4
         RR1 = I1
         RR2 = I1 + 1
         RR3 = I1 + 2
         RR4 = I1 + 3
         RR1 = I1
         RR2 = I1 + 1
         RR3 = I1 + 2
         RR4 = I1 + 3
         RR1 = I1
         RR2 = I1 + 1
         RR3 = I1 + 2
         RR4 = I1 + 3
         RR1 = I1
         RR2 = I1 + 1
         RR3 = I1 + 2
         RR4 = I1 + 3
        END DO
        R11(I1) = RR1
        R11(I1+1) = RR2
        R11(I1+2) = RR3
        R11(I1+3) = RR4
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J1=1,100

        DO I1=1,97,4
         R13(I1,J1) = I1 + J1
         R13(I1+1,J1) = I1 + J1 + 1
         R13(I1+2,J1) = I1 + J1 + 2
         R13(I1+3,J1) = I1 + J1 + 3
         R14(I1,J1) = -I1
         R14(I1+1,J1) = -1 - I1
         R14(I1+2,J1) = -2 - I1
         R14(I1+3,J1) = -3 - I1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 ----- '
       DO I1=1,97,4
        RR9 = -R11(I1)
        RR10 = -R11(I1+1)
        RR11 = -R11(I1+2)
        RR12 = -R11(I1+3)
        RR13 = R15(I1) + RR9
        RR14 = R15(I1+1) + RR10
        RR15 = R15(I1+2) + RR11
        RR16 = R15(I1+3) + RR12
        R15(I1+3) = RR16
        R15(I1+2) = RR15
        R15(I1+1) = RR14
        R15(I1) = RR13
        R10(I1+3) = RR12
        R10(I1+2) = RR11
        R10(I1+1) = RR10
        R10(I1) = RR9
       END DO
       DO I1=1,100
        R12(I1) = R10(I1) * SIN (R11(I1))
        RR5 = R10(I1)
        DO J1=1,97,4
         RR17 = R13(I1,J1)
         RR18 = R13(I1,J1+1)
         RR19 = R13(I1,J1+2)
         RR20 = R13(I1,J1+3)
         R14(I1,J1) = RR17 * RR5
         R14(I1,J1+1) = RR18 * RR5
         R14(I1,J1+2) = RR19 * RR5
         R14(I1,J1+3) = RR20 * RR5
         R12(J1+3) = RR20
         R12(J1+2) = RR19
         R12(J1+1) = RR18
         R12(J1) = RR17
        END DO
       END DO
       I = 101

       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R12 = ', R12
       WRITE (6, *) ' R14 = ', ((R14(I,J), I=1,10), J=1,2)
       WRITE (6, *) ' R15 = ', R15

       WRITE (6, *) '----- TEST NO.2 ----- '
       DO I1=1,97,4
        R10(I1) = -R11(I1)
        R10(I1+1) = -R11(I1+1)
        R10(I1+2) = -R11(I1+2)
        R10(I1+3) = -R11(I1+3)
       END DO
       DO I1=1,100
        RR6 = R10(I1)
        DO J1=1,97,4
         RR21 = R13(I1,J1)
         RR22 = R13(I1,J1+1)
         RR23 = R13(I1,J1+2)
         RR24 = R13(I1,J1+3)
         R14(I1,J1) = RR21 * RR6
         R14(I1,J1+1) = RR22 * RR6
         R14(I1,J1+2) = RR23 * RR6
         R14(I1,J1+3) = RR24 * RR6
         R12(J1+3) = RR24
         R12(J1+2) = RR23
         R12(J1+1) = RR22
         R12(J1) = RR21
        END DO
        R10(I1) = R12(I1) * SIN (R11(I1))
       END DO
       DO I1=1,97,4
        RR25 = R15(I1) * R10(I1)
        RR26 = R15(I1+1) * R10(I1+1)
        RR27 = R15(I1+2) * R10(I1+2)
        RR28 = R15(I1+3) * R10(I1+3)
        R15(I1+3) = RR28
        R15(I1+2) = RR27
        R15(I1+1) = RR26
        R15(I1) = RR25
       END DO
       I = 101

       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R12 = ', R12
       WRITE (6, *) ' R14 = ', ((R14(I,J), I=1,10), J=1,2)
       WRITE (6, *) ' R15 = ', R15

       WRITE (6, *) '----- TEST NO.3 ----- '
       DO I1=1,97,4
        R10(I1) = -R11(I1)
        R10(I1+1) = -R11(I1+1)
        R10(I1+2) = -R11(I1+2)
        R10(I1+3) = -R11(I1+3)
       END DO
       DO I1=1,100
        R12(I1) = COS (R11(I1))
        RR7 = R10(I1)
        DO J1=1,97,4
         RR29 = R13(I1,J1)
         RR30 = R13(I1,J1+1)
         RR31 = R13(I1,J1+2)
         RR32 = R13(I1,J1+3)
         R14(I1,J1) = RR29 * RR7
         R14(I1,J1+1) = RR30 * RR7
         R14(I1,J1+2) = RR31 * RR7
         R14(I1,J1+3) = RR32 * RR7
         R12(J1+3) = RR32
         R12(J1+2) = RR31
         R12(J1+1) = RR30
         R12(J1) = RR29
        END DO
        DO J1=1,97,4
         RR8 = R12(J1)
         RR8 = R12(J1+1)
         RR8 = R12(J1+2)
         RR8 = R12(J1+3)
        END DO
        R11(I1) = RR8
        R10(I1) = R12(I1) * SIN (R11(I1))
       END DO
       DO I1=1,97,4
        RR33 = R15(I1) * R10(I1)
        RR34 = R15(I1+1) * R10(I1+1)
        RR35 = R15(I1+2) * R10(I1+2)
        RR36 = R15(I1+3) * R10(I1+3)
        R15(I1+3) = RR36
        R15(I1+2) = RR35
        R15(I1+1) = RR34
        R15(I1) = RR33
       END DO
       I = 101

       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' R12 = ', R12
       WRITE (6, *) ' R14 = ', ((R14(I,J), I=1,10), J=1,2)
       WRITE (6, *) ' R15 = ', R15
       STOP 
      END
