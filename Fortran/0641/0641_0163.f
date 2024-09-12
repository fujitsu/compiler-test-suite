      PROGRAM MAIN
       INTEGER I10(100), I11(100,5), I12(100,5)
       LOGICAL L10(100), L11(100,5)
       REAL R20(100,10), R21(100), R22(100), R23(100,5)
       LOGICAL L30S, L31S, L32S
       LOGICAL L30(10,5), L31(10,5), L32(10)
       REAL R30(10), R31(10)
       INTEGER II7, II6, II5, II4, II3, II2, II1, K1, J1, I1
       REAL RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, 
     X   RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL30, LL29, LL28, LL27, LL26, LL25, LL24, LL23, LL22, 
     X   LL21, LL20, LL19, LL18, LL17, LL16, LL15, LL14, LL13, LL12, 
     X   LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3, LL2, LL1

       data r20/1000*0/

C$OMP PARALLEL SHARED (I10,L11,R21,R22,L10,I11,I12,R20,R23) PRIVATE (LL2
C$OMP& ,LL3,LL4,LL5,I1,J1,II1)
       DO J1=1,5
C$OMP DO 
        DO I1=1,97,4
         I10(I1) = I1 + J1
         I10(I1+1) = I1 + J1 + 1
         I10(I1+2) = I1 + J1 + 2
         I10(I1+3) = I1 + J1 + 3
         LL2 = 0 .EQ. MOD (I1, 2)
         LL3 = 0 .EQ. MOD (I1 + 1, 2)
         LL4 = 0 .EQ. MOD (I1 + 2, 2)
         LL5 = 0 .EQ. MOD (I1 + 3, 2)
         L11(I1,J1) = .NOT.LL2
         L11(I1+1,J1) = .NOT.LL3
         L11(I1+2,J1) = .NOT.LL4
         L11(I1+3,J1) = .NOT.LL5
         R21(I1) = I1 * J1
         R21(I1+1) = (I1 + 1) * J1
         R21(I1+2) = (I1 + 2) * J1
         R21(I1+3) = (I1 + 3) * J1
         R22(I1) = I1 - J1
         R22(I1+1) = I1 - J1 + 1
         R22(I1+2) = I1 - J1 + 2
         R22(I1+3) = I1 - J1 + 3
         L10(I1+3) = LL5
         L10(I1+2) = LL4
         L10(I1+1) = LL3
         L10(I1) = LL2
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP DO 
       DO J1=1,5
        II1 = J1 - 1
        DO I1=1,97,4
         I11(I1,J1) = I1 * J1
         I11(I1+1,J1) = (I1 + 1) * J1
         I11(I1+2,J1) = (I1 + 2) * J1
         I11(I1+3,J1) = (I1 + 3) * J1
         I12(I1,J1) = I1 - J1
         I12(I1+1,J1) = I1 - J1 + 1
         I12(I1+2,J1) = I1 - J1 + 2
         I12(I1+3,J1) = I1 - J1 + 3
         R20(I1,J1) = I1 + J1
         R20(I1+1,J1) = I1 + J1 + 1
         R20(I1+2,J1) = I1 + J1 + 2
         R20(I1+3,J1) = I1 + J1 + 3
         R23(I1,J1) = I1 * II1
         R23(I1+1,J1) = (I1 + 1) * II1
         R23(I1+2,J1) = (I1 + 2) * II1
         R23(I1+3,J1) = (I1 + 3) * II1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,6,5
        LL6 = 0 .EQ. MOD (I1, 2)
        LL7 = 0 .EQ. MOD (I1 + 1, 2)
        LL8 = 0 .EQ. MOD (I1 + 2, 2)
        LL9 = 0 .EQ. MOD (I1 + 3, 2)
        LL10 = 0 .EQ. MOD (I1 + 4, 2)
        LL11 = 0 .EQ. MOD (I1, 2)
        LL12 = 0 .EQ. MOD (I1 + 1, 2)
        LL13 = 0 .EQ. MOD (I1 + 2, 2)
        LL14 = 0 .EQ. MOD (I1 + 3, 2)
        LL15 = 0 .EQ. MOD (I1 + 4, 2)
        LL16 = 0 .EQ. MOD (I1, 2)
        LL17 = 0 .EQ. MOD (I1 + 1, 2)
        LL18 = 0 .EQ. MOD (I1 + 2, 2)
        LL19 = 0 .EQ. MOD (I1 + 3, 2)
        LL20 = 0 .EQ. MOD (I1 + 4, 2)
        LL21 = 0 .EQ. MOD (I1, 2)
        LL22 = 0 .EQ. MOD (I1 + 1, 2)
        LL23 = 0 .EQ. MOD (I1 + 2, 2)
        LL24 = 0 .EQ. MOD (I1 + 3, 2)
        LL25 = 0 .EQ. MOD (I1 + 4, 2)
        L31(I1,1) = .NOT.LL6
        L31(I1+1,1) = .NOT.LL7
        L31(I1+2,1) = .NOT.LL8
        L31(I1+3,1) = .NOT.LL9
        L31(I1+4,1) = .NOT.LL10
        L31(I1,2) = .NOT.LL11
        L31(I1+1,2) = .NOT.LL12
        L31(I1+2,2) = .NOT.LL13
        L31(I1+3,2) = .NOT.LL14
        L31(I1+4,2) = .NOT.LL15
        L31(I1,3) = .NOT.LL16
        L31(I1+1,3) = .NOT.LL17
        L31(I1+2,3) = .NOT.LL18
        L31(I1+3,3) = .NOT.LL19
        L31(I1+4,3) = .NOT.LL20
        L31(I1,4) = .NOT.LL21
        L31(I1+1,4) = .NOT.LL22
        L31(I1+2,4) = .NOT.LL23
        L31(I1+3,4) = .NOT.LL24
        L31(I1+4,4) = .NOT.LL25
        L30(I1+4,4) = LL25
        L30(I1+3,4) = LL24
        L30(I1+2,4) = LL23
        L30(I1+1,4) = LL22
        L30(I1,4) = LL21
        L30(I1+4,3) = LL20
        L30(I1+3,3) = LL19
        L30(I1+2,3) = LL18
        L30(I1+1,3) = LL17
        L30(I1,3) = LL16
        L30(I1+4,2) = LL15
        L30(I1+3,2) = LL14
        L30(I1+2,2) = LL13
        L30(I1+1,2) = LL12
        L30(I1,2) = LL11
        L30(I1+4,1) = LL10
        L30(I1+3,1) = LL9
        L30(I1+2,1) = LL8
        L30(I1+1,1) = LL7
        L30(I1,1) = LL6
       END DO

       DO I1=1,6,5
        LL26 = 0 .EQ. MOD (I1, 2)
        LL27 = 0 .EQ. MOD (I1 + 1, 2)
        LL28 = 0 .EQ. MOD (I1 + 2, 2)
        LL29 = 0 .EQ. MOD (I1 + 3, 2)
        LL30 = 0 .EQ. MOD (I1 + 4, 2)
        L31(I1,5) = .NOT.LL26
        L31(I1+1,5) = .NOT.LL27
        L31(I1+2,5) = .NOT.LL28
        L31(I1+3,5) = .NOT.LL29
        L31(I1+4,5) = .NOT.LL30
        L30(I1+4,5) = LL30
        L30(I1+3,5) = LL29
        L30(I1+2,5) = LL28
        L30(I1+1,5) = LL27
        L30(I1,5) = LL26
       END DO

       DO I1=1,7,4
        RR1 = I1
        RR2 = I1 + 1
        RR3 = I1 + 2
        RR4 = I1 + 3
        RR5 = I1 * 5
        RR6 = I1 * 5 + 5
        RR7 = I1 * 5 + 10
        RR8 = I1 * 5 + 15
        R30(I1) = RR1
        R30(I1+1) = RR2
        R30(I1+2) = RR3
        R30(I1+3) = RR4
        R31(I1) = RR5
        R31(I1+1) = RR6
        R31(I1+2) = RR7
        R31(I1+3) = RR8
       END DO
       RR9 = 9.
       RR10 = 10.
       RR11 = 45.
       RR12 = 50.
       R30(9) = RR9
       R30(10) = RR10
       R31(9) = RR11
       R31(10) = RR12
                                                                        
       WRITE (6, *) '----- TEST NO.1 -----'
       IS3 = 0
C$OMP PARALLEL SHARED (L10,I10,I12,IS2,J1) PRIVATE (II2,II3,II4,II5,II6,
C$OMP& K1,I1)
C$OMP DO LASTPRIVATE (J1,IS2)
       DO I1=1,100
        IF (L10(I1)) THEN
         IS2 = I1
        ELSE
         IS2 = -I1
        END IF
        II2 = I10(I1) + I1 + IS2
        II3 = I10(I1) + I1 + IS2
        II4 = I10(I1) + I1 + IS2
        II5 = I10(I1) + I1 + IS2
        I12(I1,1) = II2
        I12(I1,2) = II3
        I12(I1,3) = II4
        I12(I1,4) = II5
        II6 = I10(I1) + I1 + IS2
        I12(I1,5) = II6
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       IS1 = I10(100)
       DO I1=1,97,4
        IS3 = IS3 + I10(I1)
        IS3 = IS3 + I10(I1+1)
        IS3 = IS3 + I10(I1+2)
        IS3 = IS3 + I10(I1+3)
       END DO
       DO J1=1,5
        DO I1=1,100
         IF (L11(I1,J1)) THEN
          II7 = I10(I1)
          I11(I1,J1) = II7
         END IF
        END DO
       END DO
       K = 3
       J = 6
       I = 101

       WRITE (6, *) ' I = ', 101, ' J = ', J, ' K = ', K
       WRITE (6, *) ' IS1 = ', IS1, ' IS2 = ', IS2, ' IS3 = ', IS3
       WRITE (6, *) ' I11 = ', ((I11(I,J), I=1,5), J=2,3)
       WRITE (6, *) ' I12 = ', ((I12(I,J), I=4,9), J=3,5)

       WRITE (6, *) '----- TEST NO.2 -----'
       R21S = 0.
       DO J1=1,10
        DO K1=1,2
         DO I1=1,7,4
          RR13 = R20(I1,J1) * 2.
          RR14 = R20(I1+1,J1) * 2.
          RR15 = R20(I1+2,J1) * 2.
          RR16 = R20(I1+3,J1) * 2.
          R20(I1+3,J1) = RR16
          R20(I1+2,J1) = RR15
          R20(I1+1,J1) = RR14
          R20(I1,J1) = RR13
         END DO
         R20(9,J1) = R20(9,J1) * 2.
         R20(10,J1) = R20(10,J1) * 2.
        END DO
       END DO
       DO K1=1,2
        DO I1=1,6,5
         R20S = R21(I1)
         RR17 = R20S + R23(I1,K1)
         R21S = R21S + RR17
         R22(I1) = RR17
         R20S = R21(I1+1)
         RR18 = R20S + R23(I1+1,K1)
         R21S = R21S + RR18
         R22(I1+1) = RR18
         R20S = R21(I1+2)
         RR19 = R20S + R23(I1+2,K1)
         R21S = R21S + RR19
         R22(I1+2) = RR19
         R20S = R21(I1+3)
         RR20 = R20S + R23(I1+3,K1)
         R21S = R21S + RR20
         R22(I1+3) = RR20
         R20S = R21(I1+4)
         RR21 = R20S + R23(I1+4,K1)
         R21S = R21S + RR21
         R22(I1+4) = RR21
        END DO
       END DO
       I = 11

       WRITE (6, *) ' R20 = ', ((R20(I,J), I=1,5), J=2,3)
       WRITE (6, *) ' R22 = ', R22
       WRITE (6, *) ' R21S = ', R21S

       WRITE (6, *) '----- TEST NO.3 -----'
       DO J1=1,6,5
        L30(J1,1) = R30(J1) .NE. R31(J1) .AND. L31(J1,1)
        L30(J1+1,1) = R30(J1+1) .NE. R31(J1+1) .AND. L31(J1+1,1)
        L30(J1+2,1) = R30(J1+2) .NE. R31(J1+2) .AND. L31(J1+2,1)
        L30(J1+3,1) = R30(J1+3) .NE. R31(J1+3) .AND. L31(J1+3,1)
        L30(J1+4,1) = R30(J1+4) .NE. R31(J1+4) .AND. L31(J1+4,1)
        L30(J1,2) = R30(J1) .NE. R31(J1) .AND. L31(J1,2)
        L30(J1+1,2) = R30(J1+1) .NE. R31(J1+1) .AND. L31(J1+1,2)
        L30(J1+2,2) = R30(J1+2) .NE. R31(J1+2) .AND. L31(J1+2,2)
        L30(J1+3,2) = R30(J1+3) .NE. R31(J1+3) .AND. L31(J1+3,2)
        L30(J1+4,2) = R30(J1+4) .NE. R31(J1+4) .AND. L31(J1+4,2)
        L30(J1,3) = R30(J1) .NE. R31(J1) .AND. L31(J1,3)
        L30(J1+1,3) = R30(J1+1) .NE. R31(J1+1) .AND. L31(J1+1,3)
        L30(J1+2,3) = R30(J1+2) .NE. R31(J1+2) .AND. L31(J1+2,3)
        L30(J1+3,3) = R30(J1+3) .NE. R31(J1+3) .AND. L31(J1+3,3)
        L30(J1+4,3) = R30(J1+4) .NE. R31(J1+4) .AND. L31(J1+4,3)
        L30(J1,4) = R30(J1) .NE. R31(J1) .AND. L31(J1,4)
        L30(J1+1,4) = R30(J1+1) .NE. R31(J1+1) .AND. L31(J1+1,4)
        L30(J1+2,4) = R30(J1+2) .NE. R31(J1+2) .AND. L31(J1+2,4)
        L30(J1+3,4) = R30(J1+3) .NE. R31(J1+3) .AND. L31(J1+3,4)
        L30(J1+4,4) = R30(J1+4) .NE. R31(J1+4) .AND. L31(J1+4,4)
       END DO
       DO J1=1,6,5
        L30(J1,5) = R30(J1) .NE. R31(J1) .AND. L31(J1,5)
        L30(J1+1,5) = R30(J1+1) .NE. R31(J1+1) .AND. L31(J1+1,5)
        L30(J1+2,5) = R30(J1+2) .NE. R31(J1+2) .AND. L31(J1+2,5)
        L30(J1+3,5) = R30(J1+3) .NE. R31(J1+3) .AND. L31(J1+3,5)
        L30(J1+4,5) = R30(J1+4) .NE. R31(J1+4) .AND. L31(J1+4,5)
       END DO
       DO J1=1,10
        L32S = 0 .EQ. MOD (J1, 2)
        LL1 = R30(J1) .NE. R31(J1) .OR. R30(J1) .EQ. R31(J1)
        DO K1=1,5
         L31(J1,K1) = LL1
         IF (L31(J1,K1)) THEN
          L32S = L30(J1,K1)
         END IF
        END DO
        L32(J1) = R30(J1) .NE. R31(J1)
        L31S = L32(J1) .OR. L32S
        L32S = .NOT.L32(J1)
       END DO

       WRITE (6, *) ' L30  = ', L30
       WRITE (6, *) ' L31  = ', L31
       WRITE (6, *) ' L31S = ', L31S
       WRITE (6, *) ' L32S = ', L32S

       STOP 
      END
