      PROGRAM MAIN
       REAL*4 A1(10), A2(10), A3(10,10,10,10), S1, S2
       INTEGER N
       PARAMETER (N = 10)
       REAL RR33, RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, 
     X   RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, 
     X   RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2
     X   , RR1


       DO I=1,6,5
        A1(I) = 1.
        A1(I+1) = 1.
        A1(I+2) = 1.
        A1(I+3) = 1.
        A1(I+4) = 1.
        A2(I) = 0.
        A2(I+1) = 0.
        A2(I+2) = 0.
        A2(I+3) = 0.
        A2(I+4) = 0.
       END DO


       S1 = 10 + A1(10)
       S2 = A2(10) + A1(10)
C$OMP PARALLEL SHARED (A2,A1,A3) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7,
C$OMP& RR8,RR9,RR10,RR11,RR14,RR15,RR16,RR17,RR18,RR19,RR20,RR21,RR22,
C$OMP& RR23,RR24,RR25,RR26,RR27,RR28,RR29,RR30,RR31,RR32,RR33,I2,I1,I4,
C$OMP& I3)
C$OMP DO 
       DO I2=1,10
        RR11 = A2(I2)


        DO I1=1,6,5
         RR3 = A1(I1) * 2.
         RR4 = A1(I1+1) * 2.
         RR5 = A1(I1+2) * 2.
         RR6 = A1(I1+3) * 2.
         RR2 = A1(I1+4) * 2.
         DO I4=1,10
          DO I3=1,6,5
           RR14 = RR3 + I2
           RR15 = RR3 + I2
           RR16 = RR3 + I2
           RR17 = RR3 + I2
           RR7 = RR3 + I2
           RR18 = RR4 + I2
           RR19 = RR4 + I2
           RR20 = RR4 + I2
           RR21 = RR4 + I2
           RR8 = RR4 + I2
           RR22 = RR5 + I2
           RR23 = RR5 + I2
           RR24 = RR5 + I2
           RR25 = RR5 + I2
           RR9 = RR5 + I2
           RR26 = RR6 + I2
           RR27 = RR6 + I2
           RR28 = RR6 + I2
           RR29 = RR6 + I2
           RR10 = RR6 + I2
           RR30 = RR2 + I2
           RR31 = RR2 + I2
           RR32 = RR2 + I2
           RR33 = RR2 + I2
           RR1 = RR2 + I2
           A3(I1,I2,I3,I4) = RR14 + RR11
           A3(I1,I2,I3+1,I4) = RR15 + RR11
           A3(I1,I2,I3+2,I4) = RR16 + RR11
           A3(I1,I2,I3+3,I4) = RR17 + RR11
           A3(I1,I2,I3+4,I4) = RR7 + RR11
           A3(I1+1,I2,I3,I4) = RR18 + RR11
           A3(I1+1,I2,I3+1,I4) = RR19 + RR11
           A3(I1+1,I2,I3+2,I4) = RR20 + RR11
           A3(I1+1,I2,I3+3,I4) = RR21 + RR11
           A3(I1+1,I2,I3+4,I4) = RR8 + RR11
           A3(I1+2,I2,I3,I4) = RR22 + RR11
           A3(I1+2,I2,I3+1,I4) = RR23 + RR11
           A3(I1+2,I2,I3+2,I4) = RR24 + RR11
           A3(I1+2,I2,I3+3,I4) = RR25 + RR11
           A3(I1+2,I2,I3+4,I4) = RR9 + RR11
           A3(I1+3,I2,I3,I4) = RR26 + RR11
           A3(I1+3,I2,I3+1,I4) = RR27 + RR11
           A3(I1+3,I2,I3+2,I4) = RR28 + RR11
           A3(I1+3,I2,I3+3,I4) = RR29 + RR11
           A3(I1+3,I2,I3+4,I4) = RR10 + RR11
           A3(I1+4,I2,I3,I4) = RR30 + RR11
           A3(I1+4,I2,I3+1,I4) = RR31 + RR11
           A3(I1+4,I2,I3+2,I4) = RR32 + RR11
           A3(I1+4,I2,I3+3,I4) = RR33 + RR11
           A3(I1+4,I2,I3+4,I4) = RR1 + RR11
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '+++ TEST NO. 1 +++'
       WRITE (6, *) S1, S2, A1, A3

       DO I1=1,10
        DO I2=1,10
         S1 = A1(I2)
         DO I3=1,10
          S2 = A2(I3)
          A2(I3) = S2
          RR12 = S1 + S2
          DO I5=1,6,5
           DO I4=1,6,5
            A3(I2,I3,I4,I5) = RR12
            A3(I2,I3,I4+1,I5) = RR12
            A3(I2,I3,I4+2,I5) = RR12
            A3(I2,I3,I4+3,I5) = RR12
            A3(I2,I3,I4+4,I5) = RR12
            A3(I2,I3,I4,I5+1) = RR12
            A3(I2,I3,I4+1,I5+1) = RR12
            A3(I2,I3,I4+2,I5+1) = RR12
            A3(I2,I3,I4+3,I5+1) = RR12
            A3(I2,I3,I4+4,I5+1) = RR12
            A3(I2,I3,I4,I5+2) = RR12
            A3(I2,I3,I4+1,I5+2) = RR12
            A3(I2,I3,I4+2,I5+2) = RR12
            A3(I2,I3,I4+3,I5+2) = RR12
            A3(I2,I3,I4+4,I5+2) = RR12
            A3(I2,I3,I4,I5+3) = RR12
            A3(I2,I3,I4+1,I5+3) = RR12
            A3(I2,I3,I4+2,I5+3) = RR12
            A3(I2,I3,I4+3,I5+3) = RR12
            A3(I2,I3,I4+4,I5+3) = RR12
            A3(I2,I3,I4,I5+4) = RR12
            A3(I2,I3,I4+1,I5+4) = RR12
            A3(I2,I3,I4+2,I5+4) = RR12
            A3(I2,I3,I4+3,I5+4) = RR12
            A3(I2,I3,I4+4,I5+4) = RR12
           END DO
          END DO
          DO I4=1,10
           RR13 = S1
          END DO
         END DO
         A1(I2) = RR13
         A2(I2) = S2
        END DO
       END DO

       WRITE (6, *) '+++++ TEST NO. 2 +++++'
       WRITE (6, *) S1, S2, A1, A2, A3

       STOP 
      END
