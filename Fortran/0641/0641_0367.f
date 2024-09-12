      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3, R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3, L4S4, L4S5, L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       INTEGER II2, II1
       REAL RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6
     X   , RR5, RR4, RR3, RR2, RR1
       LOGICAL LL24, LL23, LL22, LL21, LL20, LL19, LL18, LL17, LL16, 
     X   LL15, LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, 
     X   LL4, LL3, LL2, LL1


       R4S1 = 10.
       L4S1 = .TRUE.
       L4S2 = .FALSE.
       L4S3 = L4A1(10) .AND. L4A2(10)
       L4S5 = 10. .EQ. R4A1(10)
       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, *) R4S1
       WRITE (6, *) L4S1, L4S2, L4S3

       DO I=1,6,5
        R4A2(I) = 0.
        R4A2(I+1) = 0.
        R4A2(I+2) = 0.
        R4A2(I+3) = 0.
        R4A2(I+4) = 0.
        L4A2(I) = L4S2
        L4A2(I+1) = L4S2
        L4A2(I+2) = L4S2
        L4A2(I+3) = L4S2
        L4A2(I+4) = L4S2
       END DO

C$OMP PARALLEL SHARED (R4A1,R4S1,R4A2,LL5,L4S1,L4A2,L4A1,LL6,LL7,LL8,LL9
C$OMP& ) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (19), II1
        DO I=1,6,5
         R4A1(I) = R4S1
         R4S1 = R4A2(I)
         R4A1(I) = R4S1
         R4A1(I+1) = R4S1
         R4S1 = R4A2(I+1)
         R4A1(I+1) = R4S1
         R4A1(I+2) = R4S1
         R4S1 = R4A2(I+2)
         R4A1(I+2) = R4S1
         R4A1(I+3) = R4S1
         R4S1 = R4A2(I+3)
         R4A1(I+3) = R4S1
         R4A1(I+4) = R4S1
         R4S1 = R4A2(I+4)
         R4A1(I+4) = R4S1
        END DO
C$OMP FLUSH
        GO TO 21

   19   DO I=1,6,5
         LL5 = L4S1
         L4S1 = LL5 .AND. L4A2(I)
         L4A1(I) = L4S1
         LL6 = L4S1
         L4S1 = LL6 .AND. L4A2(I+1)
         L4A1(I+1) = L4S1
         LL7 = L4S1
         L4S1 = LL7 .AND. L4A2(I+2)
         L4A1(I+2) = L4S1
         LL8 = L4S1
         L4S1 = LL8 .AND. L4A2(I+3)
         L4A1(I+3) = L4S1
         LL9 = L4S1
         L4S1 = LL9 .AND. L4A2(I+4)
         L4A1(I+4) = L4S1
        END DO
C$OMP FLUSH
   21   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, *) R4A1, R4A2, R4S1
       WRITE (6, *) L4A1, L4A2, L4S1

       DO I=1,6,5
        RR3 = 2. + R4A2(I)
        RR4 = 2. + R4A2(I+1)
        RR5 = 2. + R4A2(I+2)
        RR6 = 2. + R4A2(I+3)
        RR2 = 2. + R4A2(I+4)
        RR7 = RR3 + R4A1(I)
        RR8 = RR4 + R4A1(I+1)
        RR9 = RR5 + R4A1(I+2)
        RR10 = RR6 + R4A1(I+3)
        RR11 = RR2 + R4A1(I+4)
        LL1 = .NOT.L4A1(I)
        LL2 = .NOT.L4A1(I+1)
        LL3 = .NOT.L4A1(I+2)
        LL4 = .NOT.L4A1(I+3)
        L4S1 = .NOT.L4A1(I+4)
        LL10 = LL1 .OR. L4A2(I)
        LL11 = LL2 .OR. L4A2(I+1)
        LL12 = LL3 .OR. L4A2(I+2)
        LL13 = LL4 .OR. L4A2(I+3)
        LL14 = L4S1 .OR. L4A2(I+4)
        L4S2 = .NOT.L4A2(I+4)
        LL15 = LL1 .AND. .NOT.L4A2(I)
        LL16 = LL2 .AND. .NOT.L4A2(I+1)
        LL17 = LL3 .AND. .NOT.L4A2(I+2)
        LL18 = LL4 .AND. .NOT.L4A2(I+3)
        LL19 = L4S1 .AND. .NOT.L4A2(I+4)
        L4A2(I+4) = LL19
        L4A2(I+3) = LL18
        L4A2(I+2) = LL17
        L4A2(I+1) = LL16
        L4A2(I) = LL15
        L4A1(I+4) = LL14
        L4A1(I+3) = LL13
        L4A1(I+2) = LL12
        L4A1(I+1) = LL11
        L4A1(I) = LL10
        R4A1(I+4) = RR11
        R4A1(I+3) = RR10
        R4A1(I+2) = RR9
        R4A1(I+1) = RR8
        R4A1(I) = RR7
       END DO
       R4S1 = R4A1(10) + R4A2(10)

       WRITE (6, *) '** TEST NO. 3 **'
       WRITE (6, *) R4S1, R4A1
       WRITE (6, *) L4A1, L4S1, L4A2, L4S2

C$OMP PARALLEL SHARED (R4A1,R4S1,R4A2,L4S1,L4A2,L4A1,L4S2) PRIVATE (RR12
C$OMP& ,RR13,RR14,RR15,RR16,LL20,LL21,LL22,LL23,LL24,II2,I)
C$OMP DO 
       DO II2=0,1
        GO TO (22), II2
        DO I=1,6,5
         R4A1(I) = R4S1
         R4S1 = R4A2(I)
         RR12 = R4S1 + R4A2(I)
         R4A1(I+1) = R4S1
         R4A1(I) = RR12
         R4S1 = R4A2(I+1)
         RR13 = R4S1 + R4A2(I+1)
         R4A1(I+2) = R4S1
         R4A1(I+1) = RR13
         R4S1 = R4A2(I+2)
         RR14 = R4S1 + R4A2(I+2)
         R4A1(I+3) = R4S1
         R4A1(I+2) = RR14
         R4S1 = R4A2(I+3)
         RR15 = R4S1 + R4A2(I+3)
         R4A1(I+4) = R4S1
         R4A1(I+3) = RR15
         R4S1 = R4A2(I+4)
         RR16 = R4S1 + R4A2(I+4)
         R4A1(I+4) = RR16
        END DO
C$OMP FLUSH
        GO TO 23

   22   DO I=1,6,5
         LL20 = L4S1
         L4S1 = .NOT.LL20
         LL20 = L4S1 .AND. (L4S1 .AND. L4A2(I))
         LL21 = L4S1
         L4A1(I) = LL20
         L4S1 = .NOT.LL21
         LL21 = L4S1 .AND. (L4S1 .AND. L4A2(I+1))
         LL22 = L4S1
         L4A1(I+1) = LL21
         L4S1 = .NOT.LL22
         LL22 = L4S1 .AND. (L4S1 .AND. L4A2(I+2))
         LL23 = L4S1
         L4A1(I+2) = LL22
         L4S1 = .NOT.LL23
         LL23 = L4S1 .AND. (L4S1 .AND. L4A2(I+3))
         LL24 = L4S1
         L4A1(I+3) = LL23
         L4S1 = .NOT.LL24
         LL24 = L4S1 .AND. (L4S1 .AND. L4A2(I+4))
         L4A1(I+4) = LL24
        END DO
        L4S2 = L4S1 .AND. L4A2(10)
C$OMP FLUSH
   23   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '** TEST NO. 4 **'
       WRITE (6, *) R4A1, R4S1
       WRITE (6, *) L4A1, L4S1, L4S2
       DO J=1,10
        RR1 = R4A1(J)
        L4S2 = FLOAT (J) .EQ. RR1

        DO I=1,6,5
         R4S2 = I + 4
         R4S3 = J
         L4S1 = FLOAT (I + 4) .EQ. RR1
        END DO
       END DO
       R4S1 = R4S2 + R4S3
       L4S3 = L4S1 .AND. L4S2
       L4S4 = L4A1(10) .AND. L4S1

       WRITE (6, *) '** TEST NO. 5 **'
       WRITE (6, *) R4S1, R4S2, R4S2, L4S1, L4S2, L4S3, L4S4, L4S5

       DO I=1,10
        L4S2 = FLOAT (I) .EQ. R4A1(I)
        DO J=1,6,5
         L4S1 = L4S2 .AND. L4A1(J)
         L4S2 = L4S2 .AND. L4A1(J) .OR. L4A1(J)
         L4S1 = L4S2 .AND. L4A1(J+1)
         L4S2 = L4S2 .AND. L4A1(J+1) .OR. L4A1(J+1)
         L4S1 = L4S2 .AND. L4A1(J+2)
         L4S2 = L4S2 .AND. L4A1(J+2) .OR. L4A1(J+2)
         L4S1 = L4S2 .AND. L4A1(J+3)
         L4S2 = L4S2 .AND. L4A1(J+3) .OR. L4A1(J+3)
         L4S1 = L4S2 .AND. L4A1(J+4)
         L4S2 = L4S2 .AND. L4A1(J+4) .OR. L4A1(J+4)
        END DO
       END DO
       R4S2 = 10.
       R4S1 = R4A1(10) * 2.

       WRITE (6, *) '** TEST NO. 6 **'
       WRITE (6, *) R4S1, R4S2, L4S1, L4S2

       DO I=1,10
        R4A1(I) = R4S1
        L4A1(I) = L4S1
        L4A2(I) = L4S2 .AND. L4S1
        R4S1 = R4A1(10)
        L4S1 = L4A1(10)
       END DO
       L4S4 = L4A1(10) .AND. L4A2(10)

       L4S2 = 10. .EQ. R4A1(10)
       L4S3 = .NOT.L4A2(10)

       WRITE (6, *) '** TEST NO. 7 **'
       WRITE (6, *) R4A1, L4A1, L4A2, R4S1
       WRITE (6, *) L4S1, L4S2, L4S3, L4S4

       R4S1 = R4A1(10) + R4A2(10)

       WRITE (6, *) '**TEST NO. 8 **'
       WRITE (6, *) R4S1

       DO I=1,10
        R4S1 = 1. + R4A1(10)
        DO K=1,6,5
         R4A1(K) = R4S1
         R4A1(K+1) = R4S1
         R4A1(K+2) = R4S1
         R4A1(K+3) = R4S1
         R4A1(K+4) = R4S1
        END DO
       END DO

       WRITE (6, *) '** TEST NO. 9 **'
       WRITE (6, *) R4S1, R4A1

       R4S1 = R4A1(10)

       WRITE (6, *) '** TEST NO. 10 **'
       WRITE (6, *) R4S1

       DO I=1,10
        R4S1 = R4A1(I)
        DO J=1,10
         R4A1(J) = R4S1
         R4S1 = R4A1(10)
        END DO
       END DO

       WRITE (6, *) '** TEST NO. 11 **'
       WRITE (6, *) R4S1, R4A1


       STOP 
      END
