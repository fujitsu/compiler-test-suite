      PROGRAM MAIN
       REAL R10(10,3,3), R11(10,3,3,3), R12(10,3,3,3,3)
       INTEGER L1, K1, J1, I1
       REAL RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, 
     X   RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1


       WRITE (6, *) '----- TEST NO.1 -----'
C$OMP PARALLEL SHARED (R10,R11,R12,RS10) PRIVATE (RR1,RR2,RR3,RR4,I1,J1,
C$OMP& K1,L1)
C$OMP DO LASTPRIVATE (RS10)
       DO I1=1,6,5
        RR2 = I1 + 1
        RR3 = I1 + 2
        RR4 = I1 + 3
        RS10 = I1 + 4
        DO J1=1,3
         RR1 = I1
         DO K1=1,3
          R10(I1,J1,K1) = RR1
          R10(I1+1,J1,K1) = RR2
          R10(I1+2,J1,K1) = RR3
          R10(I1+3,J1,K1) = RR4
          R10(I1+4,J1,K1) = RS10
          DO L1=1,3
           R11(I1,J1,K1,L1) = RR1
           R11(I1+1,J1,K1,L1) = RR2
           R11(I1+2,J1,K1,L1) = RR3
           R11(I1+3,J1,K1,L1) = RR4
           R11(I1+4,J1,K1,L1) = RS10
           R12(I1,J1,K1,L1,1) = RR1
           R12(I1,J1,K1,L1,2) = RR1
           R12(I1,J1,K1,L1,3) = RR1
           R12(I1+1,J1,K1,L1,1) = RR2
           R12(I1+1,J1,K1,L1,2) = RR2
           R12(I1+1,J1,K1,L1,3) = RR2
           R12(I1+2,J1,K1,L1,1) = RR3
           R12(I1+2,J1,K1,L1,2) = RR3
           R12(I1+2,J1,K1,L1,3) = RR3
           R12(I1+3,J1,K1,L1,1) = RR4
           R12(I1+3,J1,K1,L1,2) = RR4
           R12(I1+3,J1,K1,L1,3) = RR4
           R12(I1+4,J1,K1,L1,1) = RS10
           R12(I1+4,J1,K1,L1,2) = RS10
           R12(I1+4,J1,K1,L1,3) = RS10
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       M = 4
       L = 4
       K = 4
       J = 4

       WRITE (6, *) ' I = ', 11, ' J = ', J, ' K = ', K, ' L = ', L, 
     X   ' M = ', M
       WRITE (6, *) ' RS10 = ', RS10


       WRITE (6, *) '----- TEST NO.2 -----'
C$OMP PARALLEL SHARED (R10,R11,R12,RS10) PRIVATE (RR5,RR6,RR7,RR8,RR9,
C$OMP& RR10,RR11,RR12,RR13,RR14,RR15,RR16,RR17,RR18,I1,J1,K1,L1)
C$OMP DO LASTPRIVATE (RS10)
       DO I1=1,6,5
        RR6 = I1 + 1
        RR7 = I1 + 2
        RR8 = I1 + 3
        RS10 = I1 + 4
        DO J1=1,3
         RR5 = I1
         RR14 = RR5 * 2.
         RR15 = RR6 * 2.
         RR16 = RR7 * 2.
         RR17 = RR8 * 2.
         RR18 = RS10 * 2.
         RR9 = 1. + RR5
         RR10 = 1. + RR6
         RR11 = 1. + RR7
         RR12 = 1. + RR8
         RR13 = 1. + RS10
         DO K1=1,3
          R10(I1,J1,K1) = RR5
          R10(I1+1,J1,K1) = RR6
          R10(I1+2,J1,K1) = RR7
          R10(I1+3,J1,K1) = RR8
          R10(I1+4,J1,K1) = RS10
          DO L1=1,3
           R11(I1,J1,K1,L1) = RR5
           R11(I1+1,J1,K1,L1) = RR6
           R11(I1+2,J1,K1,L1) = RR7
           R11(I1+3,J1,K1,L1) = RR8
           R11(I1+4,J1,K1,L1) = RS10
           R12(I1,J1,K1,L1,1) = RR5
           R12(I1,J1,K1,L1,2) = RR5
           R12(I1,J1,K1,L1,3) = RR5
           R12(I1+1,J1,K1,L1,1) = RR6
           R12(I1+1,J1,K1,L1,2) = RR6
           R12(I1+1,J1,K1,L1,3) = RR6
           R12(I1+2,J1,K1,L1,1) = RR7
           R12(I1+2,J1,K1,L1,2) = RR7
           R12(I1+2,J1,K1,L1,3) = RR7
           R12(I1+3,J1,K1,L1,1) = RR8
           R12(I1+3,J1,K1,L1,2) = RR8
           R12(I1+3,J1,K1,L1,3) = RR8
           R12(I1+4,J1,K1,L1,1) = RS10
           R12(I1+4,J1,K1,L1,2) = RS10
           R12(I1+4,J1,K1,L1,3) = RS10
           R11(I1,J1,K1,L1) = RR9
           R11(I1+1,J1,K1,L1) = RR10
           R11(I1+2,J1,K1,L1) = RR11
           R11(I1+3,J1,K1,L1) = RR12
           R11(I1+4,J1,K1,L1) = RR13
          END DO
          R10(I1,J1,K1) = RR14
          R10(I1+1,J1,K1) = RR15
          R10(I1+2,J1,K1) = RR16
          R10(I1+3,J1,K1) = RR17
          R10(I1+4,J1,K1) = RR18
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11

       WRITE (6, *) ' RS10 = ', RS10
       WRITE (6, *) ' R10  = ', (R10(I,1,2), I=1,10)
       WRITE (6, *) ' R11  = ', (R11(I,1,2,3), I=1,10)
       WRITE (6, *) ' R12  = ', (R12(I,3,1,2,2), I=1,10)

       STOP 
      END
