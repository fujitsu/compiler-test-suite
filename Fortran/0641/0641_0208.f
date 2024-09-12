      PROGRAM MAIN
       REAL*4 R1(10), R2(10), R3(10), R4(10), R5(10), R6(10,10,10)
       INTEGER N
       PARAMETER (N = 10)
       REAL RR78, RR77, RR76, RR75, RR74, RR73, RR72, RR71, RR70, RR69, 
     X   RR68, RR67, RR66, RR65, RR64, RR63, RR62, RR61, RR60, RR59, 
     X   RR58, RR57, RR56, RR55, RR54, RR53, RR52, RR51, RR50, RR49, 
     X   RR48, RR47, RR46, RR45, RR44, RR43, RR42, RR41, RR40, RR39
       REAL RR38, RR37, RR36, RR35, RR34, RR33, RR32, RR31, RR30, RR29, 
     X   RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, 
     X   RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8
     X   , RR7, RR6, RR5, RR4, RR3, RR2, RR1


       DO I=1,6,5
        RR44 = 1.
        RR45 = 1.
        RR46 = 1.
        RR47 = 1.
        RR48 = 1.
        RR49 = 1. + RR44
        RR50 = 1. + RR45
        RR51 = 1. + RR46
        RR52 = 1. + RR47
        RR53 = 1. + RR48
        RR54 = 1. + RR49
        RR55 = 1. + RR50
        RR56 = 1. + RR51
        RR57 = 1. + RR52
        RR58 = 1. + RR53
        RR59 = 0.
        RR60 = 0.
        RR61 = 0.
        RR62 = 0.
        RR63 = 0.
        RR24 = RR59 + RR54
        RR25 = RR60 + RR55
        RR26 = RR61 + RR56
        RR27 = RR62 + RR57
        RR19 = RR63 + RR58
        R5(I) = RR24 + RR49
        R5(I+1) = RR25 + RR50
        R5(I+2) = RR26 + RR51
        R5(I+3) = RR27 + RR52
        R5(I+4) = RR19 + RR53
        R4(I+4) = RR63
        R4(I+3) = RR62
        R4(I+2) = RR61
        R4(I+1) = RR60
        R4(I) = RR59
        R3(I+4) = RR58
        R3(I+3) = RR57
        R3(I+2) = RR56
        R3(I+1) = RR55
        R3(I) = RR54
        R2(I+4) = RR53
        R2(I+3) = RR52
        R2(I+2) = RR51
        R2(I+1) = RR50
        R2(I) = RR49
        R1(I+4) = RR48
        R1(I+3) = RR47
        R1(I+2) = RR46
        R1(I+1) = RR45
        R1(I) = RR44
       END DO
C$OMP PARALLEL SHARED (R3,R2,R1,R6) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7
C$OMP& ,RR20,RR21,RR28,RR29,RR30,RR31,RR32,RR33,RR34,RR35,K,J,I)
C$OMP DO 
       DO K=1,10
        RR1 = R3(K)
        DO J=1,7,4
         RR2 = R2(J)
         RR3 = R2(J+1)
         RR4 = R2(J+2)
         RR5 = R2(J+3)

         DO I=1,6,5
          RR28 = R1(I) + RR2
          RR29 = R1(I+1) + RR2
          RR30 = R1(I+2) + RR2
          RR31 = R1(I+3) + RR2
          RR20 = R1(I+4) + RR2
          R6(I,J,K) = RR28 + RR1
          R6(I+1,J,K) = RR29 + RR1
          R6(I+2,J,K) = RR30 + RR1
          R6(I+3,J,K) = RR31 + RR1
          R6(I+4,J,K) = RR20 + RR1
          RR28 = R1(I) + RR3
          RR29 = R1(I+1) + RR3
          RR30 = R1(I+2) + RR3
          RR31 = R1(I+3) + RR3
          RR20 = R1(I+4) + RR3
          R6(I,J+1,K) = RR28 + RR1
          R6(I+1,J+1,K) = RR29 + RR1
          R6(I+2,J+1,K) = RR30 + RR1
          R6(I+3,J+1,K) = RR31 + RR1
          R6(I+4,J+1,K) = RR20 + RR1
          RR28 = R1(I) + RR4
          RR29 = R1(I+1) + RR4
          RR30 = R1(I+2) + RR4
          RR31 = R1(I+3) + RR4
          RR20 = R1(I+4) + RR4
          R6(I,J+2,K) = RR28 + RR1
          R6(I+1,J+2,K) = RR29 + RR1
          R6(I+2,J+2,K) = RR30 + RR1
          R6(I+3,J+2,K) = RR31 + RR1
          R6(I+4,J+2,K) = RR20 + RR1
          RR28 = R1(I) + RR5
          RR29 = R1(I+1) + RR5
          RR30 = R1(I+2) + RR5
          RR31 = R1(I+3) + RR5
          RR20 = R1(I+4) + RR5
          R6(I,J+3,K) = RR28 + RR1
          R6(I+1,J+3,K) = RR29 + RR1
          R6(I+2,J+3,K) = RR30 + RR1
          R6(I+3,J+3,K) = RR31 + RR1
          R6(I+4,J+3,K) = RR20 + RR1
         END DO
        END DO
        RR6 = R3(K)
        DO J=9,10,1
         RR7 = R2(J)

         DO I=1,6,5
          RR32 = R1(I) + RR7
          RR33 = R1(I+1) + RR7
          RR34 = R1(I+2) + RR7
          RR35 = R1(I+3) + RR7
          RR21 = R1(I+4) + RR7
          R6(I,J,K) = RR32 + RR6
          R6(I+1,J,K) = RR33 + RR6
          R6(I+2,J,K) = RR34 + RR6
          R6(I+3,J,K) = RR35 + RR6
          R6(I+4,J,K) = RR21 + RR6
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,6,5
        RR64 = I1
        R2(I1) = RR64 + I1
        RR65 = I1 + 1
        R2(I1+1) = 1 + RR65 + I1
        RR66 = I1 + 2
        R2(I1+2) = 2 + RR66 + I1
        RR67 = I1 + 3
        R2(I1+3) = 3 + RR67 + I1
        RR68 = I1 + 4
        R2(I1+4) = 4 + RR68 + I1
        R1(I1+4) = RR68
        R1(I1+3) = RR67
        R1(I1+2) = RR66
        R1(I1+1) = RR65
        R1(I1) = RR64
       END DO
C$OMP PARALLEL SHARED (R4,R1,R2,R6,R3,R5) PRIVATE (RR8,RR9,RR10,RR11,
C$OMP& RR22,RR23,RR36,RR37,RR38,RR39,RR40,RR41,RR42,RR43,RR69,RR70,RR71,
C$OMP& RR72,RR73,I2,I1,I3)
C$OMP DO LASTPRIVATE (R5)
       DO I2=1,10
        RR11 = R4(I2)
        DO I1=1,10
         RR10 = R1(I1) + I2
         RR11 = R2(I1) + RR11
         RR8 = R1(I1)
         RR9 = RR8 + R2(I1) + RR10 + RR11
         DO I3=1,6,5
          RR69 = RR9
          RR70 = RR9
          RR71 = RR9
          RR72 = RR9
          RR73 = RR9
          RR36 = RR69 + I3
          RR37 = 1 + RR70 + I3
          RR38 = 2 + RR71 + I3
          RR39 = 3 + RR72 + I3
          RR23 = 4 + RR73 + I3
          RR40 = RR36 + RR8
          RR41 = RR37 + RR8
          RR42 = RR38 + RR8
          RR43 = RR39 + RR8
          RR22 = RR23 + RR8
          R6(I1,I2,I3) = RR40 + I1
          R6(I1,I2,I3+1) = RR41 + I1
          R6(I1,I2,I3+2) = RR42 + I1
          R6(I1,I2,I3+3) = RR43 + I1
          R6(I1,I2,I3+4) = RR22 + I1
          R5(I3+4) = RR73
          R5(I3+3) = RR72
          R5(I3+2) = RR71
          R5(I3+1) = RR70
          R5(I3) = RR69
         END DO
        END DO
        R3(I2) = RR10
        R4(I2) = RR11
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '+++ TEST NO. 1 +++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        DO I3=1,10
         RR12 = R2(I3)
         DO I2=1,6,5
          RR13 = RR12 + I1
          RR12 = R3(I2) + R4(I2)
          R6(I1,I2,I3) = RR13 + RR12 + I1
          RR13 = RR12 + I1
          RR12 = R3(I2+1) + R4(I2+1)
          R6(I1,I2+1,I3) = RR13 + RR12 + I1
          RR13 = RR12 + I1
          RR12 = R3(I2+2) + R4(I2+2)
          R6(I1,I2+2,I3) = RR13 + RR12 + I1
          RR13 = RR12 + I1
          RR12 = R3(I2+3) + R4(I2+3)
          R6(I1,I2+3,I3) = RR13 + RR12 + I1
          RR13 = RR12 + I1
          RR12 = R3(I2+4) + R4(I2+4)
          R6(I1,I2+4,I3) = RR13 + RR12 + I1
         END DO
         R2(I3) = RR12
         R1(I3) = RR13
        END DO
        DO I2=1,6,5
         RR74 = 1. + I2
         R4(I2) = 1. + RR74
         RR75 = 2. + I2
         R4(I2+1) = 1. + RR75
         RR76 = 3. + I2
         R4(I2+2) = 1. + RR76
         RR77 = 4. + I2
         R4(I2+3) = 1. + RR77
         RR78 = 5. + I2
         R4(I2+4) = 1. + RR78
         R3(I2+4) = RR78
         R3(I2+3) = RR77
         R3(I2+2) = RR76
         R3(I2+1) = RR75
         R3(I2) = RR74
        END DO
        R5(I1) = 1.
       END DO

       WRITE (6, *) '+++++ TEST NO. 2 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        R1(I1) = 1.
        R2(I1) = R1(I1) + I1
        RR16 = R1(I1)
        RR17 = R2(I1)
        RR18 = RR16 + RR17
        RR14 = RR16 + RR17
        DO I2=1,10
         R3(I2) = RR16 + I2
         R4(I2) = RR17 + R3(I2)
         RR15 = R3(I2) + RR16
         DO I3=1,6,5
          R5(I3) = RR14 + I3
          R5(I3+1) = 1 + RR14 + I3
          R5(I3+2) = 2 + RR14 + I3
          R5(I3+3) = 3 + RR14 + I3
          R5(I3+4) = 4 + RR14 + I3
          R6(I1,I2,I3) = RR15
          R6(I1,I2,I3+1) = RR15
          R6(I1,I2,I3+2) = RR15
          R6(I1,I2,I3+3) = RR15
          R6(I1,I2,I3+4) = RR15
         END DO
         R3(I2) = RR18
        END DO
        R1(I1) = R1(I1) + I1
        R2(I1) = R2(I1) + R1(I1)
       END DO

       WRITE (6, *) '+++++ TEST NO. 3 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6
C$OMP PARALLEL SHARED (R1,R2,R6,R3) PRIVATE (I2,I1,I3)
C$OMP DO 
       DO I2=1,10

        DO I1=1,10
         R1(I2) = I1 + I2
         R2(I2) = R1(I2) * 2.
         DO I3=1,6,5
          R3(I2) = R3(I2) + I3
          R6(I1,I2,I3) = 1. + R1(I2)
          R3(I2) = 1 + R3(I2) + I3
          R6(I1,I2,I3+1) = 1. + R1(I2)
          R3(I2) = 2 + R3(I2) + I3
          R6(I1,I2,I3+2) = 1. + R1(I2)
          R3(I2) = 3 + R3(I2) + I3
          R6(I1,I2,I3+3) = 1. + R1(I2)
          R3(I2) = 4 + R3(I2) + I3
          R6(I1,I2,I3+4) = 1. + R1(I2)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '+++++ TEST NO. 4 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6


       STOP 
      END
