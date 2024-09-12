      DIMENSION A(101,11)
      INTEGER N2
      PARAMETER (N2 = 2)
      REAL RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, 
     X  RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
C$OMP PARALLEL SHARED (A) PRIVATE (J,I)
C$OMP DO 
      DO J=1,11

       DO I=1,98,4
        A(I,J) = I * J
        A(I+1,J) = (I + 1) * J
        A(I+2,J) = (I + 2) * J
        A(I+3,J) = (I + 3) * J
       END DO
       A(101,J) = J * 101
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      DO J=1,7,4

       DO I=1,97,4
        RR13 = 1. + A(I,J+1)
        RR14 = 1. + A(I+1,J+1)
        RR15 = 1. + A(I+2,J+1)
        RR16 = 1. + A(I+3,J+1)
        RR1 = 1. + A(I,J+2)
        RR2 = 1. + A(I+1,J+2)
        RR3 = 1. + A(I+2,J+2)
        RR4 = 1. + A(I+3,J+2)
        RR5 = 1. + A(I,J+3)
        RR6 = 1. + A(I+1,J+3)
        RR7 = 1. + A(I+2,J+3)
        RR8 = 1. + A(I+3,J+3)
        RR9 = 1. + A(I,J+4)
        RR10 = 1. + A(I+1,J+4)
        RR11 = 1. + A(I+2,J+4)
        RR12 = 1. + A(I+3,J+4)
        A(I+3,J+3) = RR12
        A(I+2,J+3) = RR11
        A(I+1,J+3) = RR10
        A(I,J+3) = RR9
        A(I+3,J+2) = RR8
        A(I+2,J+2) = RR7
        A(I+1,J+2) = RR6
        A(I,J+2) = RR5
        A(I+3,J+1) = RR4
        A(I+2,J+1) = RR3
        A(I+1,J+1) = RR2
        A(I,J+1) = RR1
        A(I+3,J) = RR16
        A(I+2,J) = RR15
        A(I+1,J) = RR14
        A(I,J) = RR13
       END DO
      END DO
      DO J=9,10,1

       DO I=1,97,4
        RR17 = 1. + A(I,J+1)
        RR18 = 1. + A(I+1,J+1)
        RR19 = 1. + A(I+2,J+1)
        A(I+3,J) = 1. + A(I+3,J+1)
        A(I+2,J) = RR19
        A(I+1,J) = RR18
        A(I,J) = RR17
       END DO
      END DO
      PRINT *, A
C$OMP PARALLEL SHARED (A) PRIVATE (J,I)
C$OMP DO 
      DO J=1,6,5

       DO I=1,97,4
        A(I,J) = 1. + A(I+1,J)
        A(I,J+1) = 1. + A(I+1,J+1)
        A(I,J+2) = 1. + A(I+1,J+2)
        A(I,J+3) = 1. + A(I+1,J+3)
        A(I,J+4) = 1. + A(I+1,J+4)
        A(I+1,J) = 1. + A(I+2,J)
        A(I+1,J+1) = 1. + A(I+2,J+1)
        A(I+1,J+2) = 1. + A(I+2,J+2)
        A(I+1,J+3) = 1. + A(I+2,J+3)
        A(I+1,J+4) = 1. + A(I+2,J+4)
        A(I+2,J) = 1. + A(I+3,J)
        A(I+2,J+1) = 1. + A(I+3,J+1)
        A(I+2,J+2) = 1. + A(I+3,J+2)
        A(I+2,J+3) = 1. + A(I+3,J+3)
        A(I+2,J+4) = 1. + A(I+3,J+4)
        A(I+3,J) = 1. + A(I+4,J)
        A(I+3,J+1) = 1. + A(I+4,J+1)
        A(I+3,J+2) = 1. + A(I+4,J+2)
        A(I+3,J+3) = 1. + A(I+4,J+3)
        A(I+3,J+4) = 1. + A(I+4,J+4)
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
C$OMP PARALLEL SHARED (A) PRIVATE (J,I)
C$OMP DO 
      DO J=1,6,5

       DO I=2,98,3
        A(I,J) = 1. + A(I-1,J)
        A(I,J+1) = 1. + A(I-1,J+1)
        A(I,J+2) = 1. + A(I-1,J+2)
        A(I,J+3) = 1. + A(I-1,J+3)
        A(I,J+4) = 1. + A(I-1,J+4)
        A(I+1,J) = 1. + A(I,J)
        A(I+1,J+1) = 1. + A(I,J+1)
        A(I+1,J+2) = 1. + A(I,J+2)
        A(I+1,J+3) = 1. + A(I,J+3)
        A(I+1,J+4) = 1. + A(I,J+4)
        A(I+2,J) = 1. + A(I+1,J)
        A(I+2,J+1) = 1. + A(I+1,J+1)
        A(I+2,J+2) = 1. + A(I+1,J+2)
        A(I+2,J+3) = 1. + A(I+1,J+3)
        A(I+2,J+4) = 1. + A(I+1,J+4)
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, A
      END
