      PROGRAM MAIN

       LOGICAL M10(10), M20(10)
       INTEGER*4 L10(10), L20(10,10), L1S, L2S
       REAL*4 A(10), B(10), C(10), D(10,10), E(10,10), S1, S2
       REAL*8 DA(10), DB(10), DC(10), DD(10,10), DE(10,10), D1, D2
       REAL*8 QA(10), QB(10), QC(10), QD(10,10), QE(10,10)
       INTEGER N10
       PARAMETER (N10 = 10)
       INTEGER II2, II1
       REAL RR5, RR4, RR3, RR2, RR1


       DO I=1,10
        L10(I) = I
        A(I) = 0.
        B(I) = I
        C(I) = I * 2
        DA(I) = 0D0
        DB(I) = I
        DC(I) = -I
        QA(I) = 0D0
        QB(I) = I
        IF (MOD (I, 2) .EQ. 0) THEN
         M10(I) = .TRUE.
         M20(I) = .FALSE.
        ELSE
         M10(I) = .FALSE.
         M20(I) = .TRUE.
        END IF
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
       DO I=1,10
        IF (M10(I)) THEN
         A(L10(I)) = C(I)
         DA(L10(I)) = DFLOAT (I)
        ELSE
         B(I) = C(L10(I))
         DB(I) = DC(L10(I))
        END IF
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' B    = ', B
       WRITE (6, *) ' DB   = ', DB

       WRITE (6, *) '----- NO.2 -----'
       DO I=1,10
        IF (M10(I)) THEN
         A(L10(I)) = C(L10(I))
         DA(L10(I)) = DC(L10(I))
         B(I) = C(L20(I,I))
         DB(I) = DC(L20(I,I))
        END IF
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' B    = ', B
       WRITE (6, *) ' DB   = ', DB

       WRITE (6, *) '----- NO.3 -----'
       IF (M20(5)) THEN
C$OMP PARALLEL SHARED (L20,A,C,DA) PRIVATE (II1,I)
C$OMP DO 
        DO II1=0,1
         GO TO (11), II1
         DO I=1,6,5
          A(L20(I,I)) = C(I)
          A(L20(I+1,I+1)) = C(I+1)
          A(L20(I+2,I+2)) = C(I+2)
          A(L20(I+3,I+3)) = C(I+3)
          A(L20(I+4,I+4)) = C(I+4)
         END DO
C$OMP FLUSH
         GO TO 12
   11    DO I=1,6,5
          DA(L20(I,I)) = DFLOAT (I)
          DA(L20(I+1,I+1)) = DFLOAT (I + 1)
          DA(L20(I+2,I+2)) = DFLOAT (I + 2)
          DA(L20(I+3,I+3)) = DFLOAT (I + 3)
          DA(L20(I+4,I+4)) = DFLOAT (I + 4)
         END DO
C$OMP FLUSH
   12    CONTINUE
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END IF
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA

       WRITE (6, *) '----- NO.4 -----'
       DO I=1,10
        IF (M10(L10(I))) THEN
         A(L20(I,I)) = B(L20(I,I))
         DA(L20(I,I)) = DB(L20(I,I))
        END IF
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA

       WRITE (6, *) '----- NO.5 -----'
       DO I=1,10
        IF (.NOT.M20(I)) THEN
         A(L10(I)) = C(L10(I))
         DA(L10(I)) = DC(L10(I))
        END IF
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA

       WRITE (6, *) '----- NO.6 -----'
       IF (.NOT.M10(1)) THEN
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
C$OMP PARALLEL SHARED (L10,A,B,C,DA,DC) PRIVATE (II2,I)
C$OMP DO 
        DO II2=0,1
         GO TO (13), II2
         DO I=1,6,5
          A(L10(I)) = B(L10(I)) + SQRT (C(L10(I)))
          A(L10(I+1)) = B(L10(I+1)) + SQRT (C(L10(I+1)))
          A(L10(I+2)) = B(L10(I+2)) + SQRT (C(L10(I+2)))
          A(L10(I+3)) = B(L10(I+3)) + SQRT (C(L10(I+3)))
          A(L10(I+4)) = B(L10(I+4)) + SQRT (C(L10(I+4)))
         END DO
C$OMP FLUSH
         GO TO 14
   13    DO I=1,6,5
          DA(L10(I)) = DC(L10(I))
          DA(L10(I+1)) = DC(L10(I+1))
          DA(L10(I+2)) = DC(L10(I+2))
          DA(L10(I+3)) = DC(L10(I+3))
          DA(L10(I+4)) = DC(L10(I+4))
         END DO
C$OMP FLUSH
   14    CONTINUE
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END IF
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' QA   = ', QA

       WRITE (6, *) '----- NO.7 -----'
       DO I=1,10
        IF (M10(I) .OR. M20(L10(I))) THEN
         L2S = L20(I,I)
         A(L2S) = B(L2S) + C(L2S)
         DA(L20(I,I)) = DC(L2S)
         QA(I) = QB(L1S)
        END IF
       END DO
       WRITE (6, *) ' A    = ', A
       WRITE (6, *) ' DA   = ', DA
       WRITE (6, *) ' QA   = ', QA

       WRITE (6, *) '----- NO.8 -----'
       DO I=1,10
        IF (M10(L10(I))) THEN
         L1S = L10(I)
         D(L1S,I) = E(L10(I),L1S) + C(L1S)
         DD(L10(I),L10(I)) = DE(L1S,L1S)
         QD(I,L1S) = QE(L1S,L20(I,I))
        END IF
       END DO
       WRITE (6, *) ' D    = ', D
       WRITE (6, *) ' DD   = ', DD
       WRITE (6, *) ' QD   = ', QD

       WRITE (6, *) '----- NO.9 -----'
       DO I=1,10
        IF (M10(L20(I,I)) .OR. M20(L10(I))) THEN
         L2S = L20(I,I)
         D(L2S,L20(I,I)) = E(L2S,L2S) + C(L2S)
         DD(L20(I,I),L20(I,I)) = DE(L20(I,I),L2S)
         QD(I,L20(I,I)) = QE(L2S,L2S)
        END IF
       END DO
       WRITE (6, *) ' D    = ', D
       WRITE (6, *) ' DD   = ', DD
       WRITE (6, *) ' QD   = ', QD
       STOP 
      END
