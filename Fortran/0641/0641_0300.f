      PROGRAM MAIN

       INTEGER*4 L10(10), L20(10,10), L1S, L2S
       REAL*4 A(10), B(10), C(10), D(10,10), E(10,10), S1, S2
       REAL*8 DA(10), DB(10), DC(10), DD(10,10), DE(10,10), D1, D2
       REAL*8 QA(10), QB(10), QC(10), QD(10,10), QE(10,10)
       INTEGER N10
       PARAMETER (N10 = 10)
       INTEGER II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD1


       DO I=1,6,5
        L10(I) = I
        L10(I+1) = I + 1
        L10(I+2) = I + 2
        L10(I+3) = I + 3
        L10(I+4) = I + 4
        A(I) = 0.
        A(I+1) = 0.
        A(I+2) = 0.
        A(I+3) = 0.
        A(I+4) = 0.
        B(I) = I
        B(I+1) = I + 1
        B(I+2) = I + 2
        B(I+3) = I + 3
        B(I+4) = I + 4
        C(I) = I * 2
        C(I+1) = I * 2 + 2
        C(I+2) = I * 2 + 4
        C(I+3) = I * 2 + 6
        C(I+4) = I * 2 + 8
        DA(I) = 0D0
        DA(I+1) = 0D0
        DA(I+2) = 0D0
        DA(I+3) = 0D0
        DA(I+4) = 0D0
        DB(I) = I
        DB(I+1) = I + 1
        DB(I+2) = I + 2
        DB(I+3) = I + 3
        DB(I+4) = I + 4
        DC(I) = -I
        DC(I+1) = -1 - I
        DC(I+2) = -2 - I
        DC(I+3) = -3 - I
        DC(I+4) = -4 - I
        QA(I) = 0D0
        QA(I+1) = 0D0
        QA(I+2) = 0D0
        QA(I+3) = 0D0
        QA(I+4) = 0D0
        QB(I) = I
        QB(I+1) = I + 1
        QB(I+2) = I + 2
        QB(I+3) = I + 3
        QB(I+4) = I + 4
       END DO
C$OMP PARALLEL SHARED (D,DD,DE,QD,QE,L20,E) PRIVATE (RR1,RR2,RR3,RR4,RR5
C$OMP& ,J,I)
C$OMP DO 
       DO J=1,10


        DO I=1,6,5
         D(I,J) = J + I
         D(I+1,J) = J + I + 1
         D(I+2,J) = J + I + 2
         D(I+3,J) = J + I + 3
         D(I+4,J) = J + I + 4
         RR1 = J - I
         RR2 = J - I - 1
         RR3 = J - I - 2
         RR4 = J - I - 3
         RR5 = J - I - 4
         DD(I,J) = RR1
         DD(I+1,J) = RR2
         DD(I+2,J) = RR3
         DD(I+3,J) = RR4
         DD(I+4,J) = RR5
         DE(I,J) = RR1 - I
         DE(I+1,J) = RR2 - 1 - I
         DE(I+2,J) = RR3 - 2 - I
         DE(I+3,J) = RR4 - 3 - I
         DE(I+4,J) = RR5 - 4 - I
         QD(I,J) = I * J
         QD(I+1,J) = (I + 1) * J
         QD(I+2,J) = (I + 2) * J
         QD(I+3,J) = (I + 3) * J
         QD(I+4,J) = (I + 4) * J
         QE(I,J) = I - J
         QE(I+1,J) = I - J + 1
         QE(I+2,J) = I - J + 2
         QE(I+3,J) = I - J + 3
         QE(I+4,J) = I - J + 4
         L20(I,J) = J
         L20(I+1,J) = J
         L20(I+2,J) = J
         L20(I+3,J) = J
         L20(I+4,J) = J
         E(I+4,J) = RR5
         E(I+3,J) = RR4
         E(I+2,J) = RR3
         E(I+1,J) = RR2
         E(I,J) = RR1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) L10, L20
       WRITE (6, *) '----- NO.1 -----'
C$OMP PARALLEL SHARED (L10,A,C,DA) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (35), II1
        DO I=1,6,5
         A(L10(I)) = C(I)
         A(L10(I+1)) = C(I+1)
         A(L10(I+2)) = C(I+2)
         A(L10(I+3)) = C(I+3)
         A(L10(I+4)) = C(I+4)
        END DO
C$OMP FLUSH
        GO TO 36
   35   DO I=1,6,5
         DA(L10(I)) = DFLOAT (I)
         DA(L10(I+1)) = DFLOAT (I + 1)
         DA(L10(I+2)) = DFLOAT (I + 2)
         DA(L10(I+3)) = DFLOAT (I + 3)
         DA(L10(I+4)) = DFLOAT (I + 4)
        END DO
C$OMP FLUSH
   36   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        B(I) = C(L10(I))
        B(I+1) = C(L10(I+1))
        B(I+2) = C(L10(I+2))
        B(I+3) = C(L10(I+3))
        B(I+4) = C(L10(I+4))
        DB(I) = DC(L10(I))
        DB(I+1) = DC(L10(I+1))
        DB(I+2) = DC(L10(I+2))
        DB(I+3) = DC(L10(I+3))
        DB(I+4) = DC(L10(I+4))
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' B    = ', B
       WRITE (6, *) ' DB   = ', DB

       WRITE (6, *) '----- NO.2 -----'
C$OMP PARALLEL SHARED (L10,A,C,DA,DC) PRIVATE (II2,I)
C$OMP DO 
       DO II2=0,1
        GO TO (37), II2
        DO I=1,6,5
         A(L10(I)) = C(L10(I))
         A(L10(I+1)) = C(L10(I+1))
         A(L10(I+2)) = C(L10(I+2))
         A(L10(I+3)) = C(L10(I+3))
         A(L10(I+4)) = C(L10(I+4))
        END DO
C$OMP FLUSH
        GO TO 38
   37   DO I=1,6,5
         DA(L10(I)) = DC(L10(I))
         DA(L10(I+1)) = DC(L10(I+1))
         DA(L10(I+2)) = DC(L10(I+2))
         DA(L10(I+3)) = DC(L10(I+3))
         DA(L10(I+4)) = DC(L10(I+4))
        END DO
C$OMP FLUSH
   38   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA

       WRITE (6, *) '----- NO.3 -----'
C$OMP PARALLEL SHARED (L20,A,C,DA) PRIVATE (II3,I)
C$OMP DO 
       DO II3=0,1
        GO TO (39), II3
        DO I=1,6,5
         A(L20(I,I)) = C(I)
         A(L20(I+1,I+1)) = C(I+1)
         A(L20(I+2,I+2)) = C(I+2)
         A(L20(I+3,I+3)) = C(I+3)
         A(L20(I+4,I+4)) = C(I+4)
        END DO
C$OMP FLUSH
        GO TO 40
   39   DO I=1,6,5
         DA(L20(I,I)) = DFLOAT (I)
         DA(L20(I+1,I+1)) = DFLOAT (I + 1)
         DA(L20(I+2,I+2)) = DFLOAT (I + 2)
         DA(L20(I+3,I+3)) = DFLOAT (I + 3)
         DA(L20(I+4,I+4)) = DFLOAT (I + 4)
        END DO
C$OMP FLUSH
   40   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        B(I) = C(L20(I,I))
        B(I+1) = C(L20(I+1,I+1))
        B(I+2) = C(L20(I+2,I+2))
        B(I+3) = C(L20(I+3,I+3))
        B(I+4) = C(L20(I+4,I+4))
        DB(I) = DC(L20(I,I))
        DB(I+1) = DC(L20(I+1,I+1))
        DB(I+2) = DC(L20(I+2,I+2))
        DB(I+3) = DC(L20(I+3,I+3))
        DB(I+4) = DC(L20(I+4,I+4))
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' B    = ', B
       WRITE (6, *) ' DB   = ', DB

       WRITE (6, *) '----- NO.4 -----'
C$OMP PARALLEL SHARED (L20,A,B,DA,DB) PRIVATE (II4,I)
C$OMP DO 
       DO II4=0,1
        GO TO (41), II4
        DO I=1,6,5
         A(L20(I,I)) = B(L20(I,I))
         A(L20(I+1,I+1)) = B(L20(I+1,I+1))
         A(L20(I+2,I+2)) = B(L20(I+2,I+2))
         A(L20(I+3,I+3)) = B(L20(I+3,I+3))
         A(L20(I+4,I+4)) = B(L20(I+4,I+4))
        END DO
C$OMP FLUSH
        GO TO 42
   41   DO I=1,6,5
         DA(L20(I,I)) = DB(L20(I,I))
         DA(L20(I+1,I+1)) = DB(L20(I+1,I+1))
         DA(L20(I+2,I+2)) = DB(L20(I+2,I+2))
         DA(L20(I+3,I+3)) = DB(L20(I+3,I+3))
         DA(L20(I+4,I+4)) = DB(L20(I+4,I+4))
        END DO
C$OMP FLUSH
   42   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA

       WRITE (6, *) '----- NO.5 -----'
C$OMP PARALLEL SHARED (L10,A,C,DA,DC) PRIVATE (II5,I)
C$OMP DO 
       DO II5=0,1
        GO TO (43), II5
        DO I=1,6,5
         A(L10(I)) = C(L10(I))
         A(L10(I+1)) = C(L10(I+1))
         A(L10(I+2)) = C(L10(I+2))
         A(L10(I+3)) = C(L10(I+3))
         A(L10(I+4)) = C(L10(I+4))
        END DO
C$OMP FLUSH
        GO TO 44
   43   DO I=1,6,5
         DA(L10(I)) = DC(L10(I))
         DA(L10(I+1)) = DC(L10(I+1))
         DA(L10(I+2)) = DC(L10(I+2))
         DA(L10(I+3)) = DC(L10(I+3))
         DA(L10(I+4)) = DC(L10(I+4))
        END DO
C$OMP FLUSH
   44   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA

       WRITE (6, *) '----- NO.6 -----'
       DO I=1,6,5
        L1S = L10(I)
        QA(I) = QB(L1S)
        L1S = L10(I+1)
        QA(I+1) = QB(L1S)
        L1S = L10(I+2)
        QA(I+2) = QB(L1S)
        L1S = L10(I+3)
        QA(I+3) = QB(L1S)
        L1S = L10(I+4)
        QA(I+4) = QB(L1S)
       END DO
C$OMP PARALLEL SHARED (L10,A,B,C,DA,DC) PRIVATE (II6,I)
C$OMP DO 
       DO II6=0,1
        GO TO (45), II6
        DO I=1,6,5
         A(L10(I)) = B(L10(I)) + C(L10(I))
         A(L10(I+1)) = B(L10(I+1)) + C(L10(I+1))
         A(L10(I+2)) = B(L10(I+2)) + C(L10(I+2))
         A(L10(I+3)) = B(L10(I+3)) + C(L10(I+3))
         A(L10(I+4)) = B(L10(I+4)) + C(L10(I+4))
        END DO
C$OMP FLUSH
        GO TO 46
   45   DO I=1,6,5
         DA(L10(I)) = DC(L10(I))
         DA(L10(I+1)) = DC(L10(I+1))
         DA(L10(I+2)) = DC(L10(I+2))
         DA(L10(I+3)) = DC(L10(I+3))
         DA(L10(I+4)) = DC(L10(I+4))
        END DO
C$OMP FLUSH
   46   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' QA   = ', QA

       WRITE (6, *) '----- NO.7 -----'
       DD1 = QB(L1S)
       DO I=1,6,5
        QA(I) = DD1
        QA(I+1) = DD1
        QA(I+2) = DD1
        QA(I+3) = DD1
        QA(I+4) = DD1
       END DO
C$OMP PARALLEL SHARED (L20,A,B,C,DA,DC) PRIVATE (II7,I)
C$OMP DO 
       DO II7=0,1
        GO TO (47), II7
        DO I=1,6,5
         A(L20(I,I)) = B(L20(I,I)) + C(L20(I,I))
         A(L20(I+1,I+1)) = B(L20(I+1,I+1)) + C(L20(I+1,I+1))
         A(L20(I+2,I+2)) = B(L20(I+2,I+2)) + C(L20(I+2,I+2))
         A(L20(I+3,I+3)) = B(L20(I+3,I+3)) + C(L20(I+3,I+3))
         A(L20(I+4,I+4)) = B(L20(I+4,I+4)) + C(L20(I+4,I+4))
        END DO
C$OMP FLUSH
        GO TO 48
   47   DO I=1,6,5
         DA(L20(I,I)) = DC(L20(I,I))
         DA(L20(I+1,I+1)) = DC(L20(I+1,I+1))
         DA(L20(I+2,I+2)) = DC(L20(I+2,I+2))
         DA(L20(I+3,I+3)) = DC(L20(I+3,I+3))
         DA(L20(I+4,I+4)) = DC(L20(I+4,I+4))
        END DO
C$OMP FLUSH
   48   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' QA   = ', QA

       WRITE (6, *) '----- NO.8 -----'
       DO I=1,6,5
        L1S = L10(I)
        D(L1S,I) = E(L10(I),L1S) + C(L1S)
        QD(I,L1S) = QE(L1S,L20(I,I))
        L1S = L10(I+1)
        D(L1S,I+1) = E(L10(I+1),L1S) + C(L1S)
        QD(I+1,L1S) = QE(L1S,L20(I+1,I+1))
        L1S = L10(I+2)
        D(L1S,I+2) = E(L10(I+2),L1S) + C(L1S)
        QD(I+2,L1S) = QE(L1S,L20(I+2,I+2))
        L1S = L10(I+3)
        D(L1S,I+3) = E(L10(I+3),L1S) + C(L1S)
        QD(I+3,L1S) = QE(L1S,L20(I+3,I+3))
        L1S = L10(I+4)
        D(L1S,I+4) = E(L10(I+4),L1S) + C(L1S)
        QD(I+4,L1S) = QE(L1S,L20(I+4,I+4))
       END DO
       DO I=1,6,5
        DD(L10(I),L10(I)) = DE(L10(I),L10(I))
        DD(L10(I+1),L10(I+1)) = DE(L10(I+1),L10(I+1))
        DD(L10(I+2),L10(I+2)) = DE(L10(I+2),L10(I+2))
        DD(L10(I+3),L10(I+3)) = DE(L10(I+3),L10(I+3))
        DD(L10(I+4),L10(I+4)) = DE(L10(I+4),L10(I+4))
       END DO
       WRITE (6, *) ' D    = ', D
       WRITE (6, *) ' DD   = ', DD
       WRITE (6, *) ' QD   = ', QD

       WRITE (6, *) '----- NO.9 -----'
       DO I=1,6,5
        L2S = L20(I,I)
        QD(I,L20(I,I)) = QE(L2S,L2S)
        L2S = L20(I+1,I+1)
        QD(I+1,L20(I+1,I+1)) = QE(L2S,L2S)
        L2S = L20(I+2,I+2)
        QD(I+2,L20(I+2,I+2)) = QE(L2S,L2S)
        L2S = L20(I+3,I+3)
        QD(I+3,L20(I+3,I+3)) = QE(L2S,L2S)
        L2S = L20(I+4,I+4)
        QD(I+4,L20(I+4,I+4)) = QE(L2S,L2S)
       END DO
C$OMP PARALLEL SHARED (L20,D,E,C,DD,DE) PRIVATE (II8,I)
C$OMP DO 
       DO II8=0,1
        GO TO (49), II8
        DO I=1,6,5
         D(L20(I,I),L20(I,I)) = E(L20(I,I),L20(I,I)) + C(L20(I,I))
         D(L20(I+1,I+1),L20(I+1,I+1)) = E(L20(I+1,I+1),L20(I+1,I+1)) + C
     X     (L20(I+1,I+1))
         D(L20(I+2,I+2),L20(I+2,I+2)) = E(L20(I+2,I+2),L20(I+2,I+2)) + C
     X     (L20(I+2,I+2))
         D(L20(I+3,I+3),L20(I+3,I+3)) = E(L20(I+3,I+3),L20(I+3,I+3)) + C
     X     (L20(I+3,I+3))
         D(L20(I+4,I+4),L20(I+4,I+4)) = E(L20(I+4,I+4),L20(I+4,I+4)) + C
     X     (L20(I+4,I+4))
        END DO
C$OMP FLUSH
        GO TO 50
   49   DO I=1,6,5
         DD(L20(I,I),L20(I,I)) = DE(L20(I,I),L20(I,I))
         DD(L20(I+1,I+1),L20(I+1,I+1)) = DE(L20(I+1,I+1),L20(I+1,I+1))
         DD(L20(I+2,I+2),L20(I+2,I+2)) = DE(L20(I+2,I+2),L20(I+2,I+2))
         DD(L20(I+3,I+3),L20(I+3,I+3)) = DE(L20(I+3,I+3),L20(I+3,I+3))
         DD(L20(I+4,I+4),L20(I+4,I+4)) = DE(L20(I+4,I+4),L20(I+4,I+4))
        END DO
C$OMP FLUSH
   50   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' D    = ', D
       WRITE (6, *) ' DD   = ', DD
       WRITE (6, *) ' QD   = ', QD
       STOP 
      END
 
 
 
 
 
