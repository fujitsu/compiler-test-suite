      PROGRAM MAIN
       REAL*4 A(30), B(30), C(30), D(30), E(30), F(30)
       INTEGER LL, L, N1
       PARAMETER (LL = 4, L = 1, N1 = 1)
       INTEGER II5, II4, II3, II2, II1
       REAL RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16, 
     X   RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, 
     X   RR4, RR3, RR2, RR1


       DO I=1,26,5
        RR1 = 1.
        RR2 = 1.
        RR3 = 1.
        RR4 = 1.
        RR5 = 1.
        RR6 = 1. + RR1
        RR7 = 1. + RR2
        RR8 = 1. + RR3
        RR9 = 1. + RR4
        RR10 = 1. + RR5
        RR11 = 1. + RR6
        RR12 = 1. + RR7
        RR13 = 1. + RR8
        RR14 = 1. + RR9
        RR15 = 1. + RR10
        RR16 = 1. + RR11
        RR17 = 1. + RR12
        RR18 = 1. + RR13
        RR19 = 1. + RR14
        RR20 = 1. + RR15
        RR21 = 1. + RR16
        RR22 = 1. + RR17
        RR23 = 1. + RR18
        RR24 = 1. + RR19
        RR25 = 1. + RR20
        F(I) = 1. + RR21
        F(I+1) = 1. + RR22
        F(I+2) = 1. + RR23
        F(I+3) = 1. + RR24
        F(I+4) = 1. + RR25
        E(I+4) = RR25
        E(I+3) = RR24
        E(I+2) = RR23
        E(I+1) = RR22
        E(I) = RR21
        D(I+4) = RR20
        D(I+3) = RR19
        D(I+2) = RR18
        D(I+1) = RR17
        D(I) = RR16
        C(I+4) = RR15
        C(I+3) = RR14
        C(I+2) = RR13
        C(I+1) = RR12
        C(I) = RR11
        B(I+4) = RR10
        B(I+3) = RR9
        B(I+2) = RR8
        B(I+1) = RR7
        B(I) = RR6
        A(I+4) = RR5
        A(I+3) = RR4
        A(I+2) = RR3
        A(I+1) = RR2
        A(I) = RR1
       END DO

C$OMP PARALLEL SHARED (A,B) PRIVATE (II2,I,J,J1,K1,K2,II3)
C$OMP DO 
       DO II2=0,1
        GO TO (56), II2
        DO I=1,10,1
         DO J=1,10,1
          DO J1=1,10,1
           DO K1=1,6,5
            A(K1) = A(K1+1)
            A(K1) = A(K1+1) + A(K1)
            A(K1+1) = A(K1+2)
            A(K1+1) = A(K1+2) + A(K1+1)
            A(K1+2) = A(K1+3)
            A(K1+2) = A(K1+3) + A(K1+2)
            A(K1+3) = A(K1+4)
            A(K1+3) = A(K1+4) + A(K1+3)
            A(K1+4) = A(K1+5)
            A(K1+4) = A(K1+5) + A(K1+4)
           END DO
          END DO
         END DO
        END DO
C$OMP FLUSH
        GO TO 57
   56   DO I=1,10,1
         DO J=1,10,1
          DO J1=1,10,1
           DO K2=21,26,5
            A(K2-1) = A(K2)
            A(K2) = A(K2+1)
            A(K2+1) = A(K2+2)
            A(K2+2) = A(K2+3)
            A(K2+3) = A(K2+4)
           END DO
          END DO
         END DO
        END DO
C$OMP FLUSH
   57   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO II3=0,1
        GO TO (58), II3
        DO I=1,4,1
         DO J=1,4,1
          DO J1=-10,-1,1
           DO K1=1,6,5
            B(K1) = B(K1+1)
            B(K1) = B(K1+1) + B(K1)
            B(K1+1) = B(K1+2)
            B(K1+1) = B(K1+2) + B(K1+1)
            B(K1+2) = B(K1+3)
            B(K1+2) = B(K1+3) + B(K1+2)
            B(K1+3) = B(K1+4)
            B(K1+3) = B(K1+4) + B(K1+3)
            B(K1+4) = B(K1+5)
            B(K1+4) = B(K1+5) + B(K1+4)
           END DO
          END DO
         END DO
        END DO
C$OMP FLUSH
        GO TO 59

   58   DO I=1,4,1
         DO J=1,4,1
          DO J1=-10,-1,1
           DO K2=21,26,5
            B(K2-1) = B(K2)
            B(K2-1) = B(K2) + A(K2)
            B(K2) = B(K2+1)
            B(K2) = B(K2+1) + A(K2+1)
            B(K2+1) = B(K2+2)
            B(K2+1) = B(K2+2) + A(K2+2)
            B(K2+2) = B(K2+3)
            B(K2+2) = B(K2+3) + A(K2+3)
            B(K2+3) = B(K2+4)
            B(K2+3) = B(K2+4) + A(K2+4)
           END DO
          END DO
         END DO
        END DO
C$OMP FLUSH
   59   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I=10,1,-1
        DO J=10,1,-1
         DO J1=10,1,-2
          DO K1=1,6,5
           C(K1) = C(K1+1)
           C(K1) = C(K1+1)
           C(K1+1) = C(K1+2)
           C(K1+1) = C(K1+2)
           C(K1+2) = C(K1+3)
           C(K1+2) = C(K1+3)
           C(K1+3) = C(K1+4)
           C(K1+3) = C(K1+4)
           C(K1+4) = C(K1+5)
           C(K1+4) = C(K1+5)
          END DO
          DO K2=1,6,5
           C(K2) = C(K2+1) + C(K2)
           C(K2+1) = C(K2+2) + C(K2+1)
           C(K2+2) = C(K2+3) + C(K2+2)
           C(K2+3) = C(K2+4) + C(K2+3)
           C(K2+4) = C(K2+5) + C(K2+4)
          END DO
         END DO
        END DO
       END DO


C$OMP PARALLEL SHARED (D) PRIVATE (II4,I,J,J1)
C$OMP DO 
       DO II4=0,1
        GO TO (65), II4
        DO I=4,1,-1
         DO J=4,1,-1
          DO J1=4,1,-1
           D(1) = D(2)
           D(1) = D(2)
           D(2) = D(3)
           D(2) = D(3)
           D(3) = D(4)
           D(3) = D(4)
           D(4) = D(5)
           D(4) = D(5)
           D(5) = D(6)
           D(5) = D(6)
          END DO
         END DO
        END DO
C$OMP FLUSH
        GO TO 66

   65   DO I=4,1,-1
         DO J=4,1,-1
          DO J1=4,1,-1
           D(11) = D(12) + D(11)
           D(12) = D(13) + D(12)
           D(13) = D(14) + D(13)
           D(14) = D(15) + D(14)
           D(15) = D(16) + D(15)
          END DO
         END DO
        END DO
C$OMP FLUSH
   66   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I=1,4,2
        DO J=1,4,I
         DO J1=1,10,4
          DO K1=1,6,5
           E(K1) = E(K1+1)
           E(K1) = E(K1+4)
           E(K1+1) = E(K1+2)
           E(K1+1) = E(K1+5)
           E(K1+2) = E(K1+3)
           E(K1+2) = E(K1+6)
           E(K1+3) = E(K1+4)
           E(K1+3) = E(K1+7)
           E(K1+4) = E(K1+5)
           E(K1+4) = E(K1+8)
          END DO
          DO K2=11,16,5
           E(K2) = E(K2+J) + E(K2)
           E(K2+1) = E(K2+J+1) + E(K2+1)
           E(K2+2) = E(K2+J+2) + E(K2+2)
           E(K2+3) = E(K2+J+3) + E(K2+3)
           E(K2+4) = E(K2+J+4) + E(K2+4)
          END DO
         END DO
        END DO
       END DO

       N6 = 1
       M6 = -1
       II1 = 1
C$OMP PARALLEL SHARED (M6,F,N6,II1) PRIVATE (II5,J,K1,K2,I)

       DO I=1,10,II1
C$OMP DO 
        DO II5=0,1
         GO TO (67), II5
         DO J=1,10,-M6
          DO K1=1,6,5
           F(K1) = F(K1+N6)
           F(K1+1) = F(K1+N6+1)
           F(K1+2) = F(K1+N6+2)
           F(K1+3) = F(K1+N6+3)
           F(K1+4) = F(K1+N6+4)
          END DO
         END DO
C$OMP FLUSH
         GO TO 68
   67    DO J=1,10,-M6
          DO K2=11,16,5
           F(K2) = F(K2-M6)
           F(K2+1) = F(K2-M6+1)
           F(K2+2) = F(K2-M6+2)
           F(K2+3) = F(K2-M6+3)
           F(K2+4) = F(K2-M6+4)
          END DO
         END DO
C$OMP FLUSH
   68    CONTINUE
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP SINGLE 
        N6 = 1
        M6 = -1
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 

       WRITE (6, *) 'A=', A, 'B=', B, 'C=', C, 'D=', D, 'E=', E, 'F=', F
       STOP 
      END
