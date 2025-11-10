      PROGRAM MAIN
       LOGICAL L10(100,5), LS10, LS11, L11(10,5,5), L12(10)
       INTEGER I10(100,5), IS10, IS11, I11(10,5,5), I12(10)
       REAL R10(100,5), RS10, RS11, R11(10,5,5), R12(10), R13(100)
       REAL*8 D10(100,5), DS10, DS11, D11(10,5,5), D12(10)
       COMPLEX C10(100,5), CS10, CS11, C11(10,5,5), C12(10)
       COMPLEX*16 CD10(100,5), CDS10, CDS11, CD11(10,5,5), CD12(10)
       INTEGER II5, II4, II3, II2, II1, J1, K1, I2
       REAL RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, 
     X   RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3
     X   , RR2, RR1
       DOUBLE PRECISION DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX CC19, CC18, CC17, CC16, CC15, CC14, CC13, CC12, CC11, 
     X   CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2, CC1
       COMPLEX*16 DC65, DC64, DC63, DC62, DC61, DC60, DC59, DC58, DC57, 
     X   DC56, DC55, DC54, DC53, DC52, DC51, DC50, DC49, DC48, DC47, 
     X   DC46, DC45, DC44, DC43, DC42, DC41, DC40, DC39, DC38, DC37, 
     X   DC36, DC35, DC34, DC33, DC32, DC31, DC30, DC29, DC28, DC27, 
     X   DC26
       COMPLEX*16 DC25, DC24, DC23, DC22, DC21, DC20, DC19, DC18, DC17, 
     X   DC16, DC15, DC14, DC13, DC12, DC11, DC10, DC9, DC8, DC7, DC6, 
     X   DC5, DC4, DC3, DC2, DC1
       CHARACTER(LEN=30) :: FMT_COMPLEX
       FMT_COMPLEX = '(10(F22.14,1X,F22.14,1X))'


       WRITE (6, *) '----- TEST NO.1 -----'
C$OMP PARALLEL SHARED (L10,I10,CD10,C10,D10,R10,CDS10,CS10,RS10) 
C$OMP& PRIVATE (K1,I2,DC1,DC2,DC3,RR1,RR2,RR3,CC1,CC2,CC3,DC4,DC5,DC6,
C$OMP& DC7,DC8,DC9,DC10,DC11,DC12,DC13,DC14,DC15,DD14,DD15,DD16,DD17,
C$OMP& DC54,DC55,DC56,DC57,DC58,DC59,DC60,DC61,DC62,DC63,DC64,DC65,RR17,
C$OMP& RR18,RR19,RR20,RR21,RR22,RR23,RR24,DD23,DD24,DD25,DD26,DD27,DD28,
C$OMP& DD29,DD30,CC12,CC13,CC14,CC15,CC16,CC17,CC18,CC19)
C$OMP DO 
       DO K1=1,5
        DO I2=1,97,4
         L10(I2,K1) = 0 .EQ. MOD (I2, 2)
         L10(I2+1,K1) = 0 .EQ. MOD (I2 + 1, 2)
         L10(I2+2,K1) = 0 .EQ. MOD (I2 + 2, 2)
         L10(I2+3,K1) = 0 .EQ. MOD (I2 + 3, 2)
         I10(I2,K1) = I2
         I10(I2+1,K1) = I2 + 1
         I10(I2+2,K1) = I2 + 2
         I10(I2+3,K1) = I2 + 3
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (RS10,CS10,CDS10)
       DO I2=1,97,4
        RR1 = FLOAT (I2)
        RR2 = FLOAT (I2 + 1)
        RR3 = FLOAT (I2 + 2)
        RS10 = FLOAT (I2 + 3)
        CC1 = DBLE (RR1)
        CC2 = DBLE (RR2)
        CC3 = DBLE (RR3)
        CS10 = DBLE (RS10)
        DC4 = CC1
        DC5 = CC2
        DC6 = CC3
        CDS10 = CS10
        DD14 = DBLE (RR1)
        DD15 = DBLE (RR2)
        DD16 = DBLE (RR3)
        DD17 = DBLE (RS10)
        DO K1=1,4,2
         RR17 = RR1
         RR18 = RR1
         RR19 = RR2
         RR20 = RR2
         RR21 = RR3
         RR22 = RR3
         RR23 = RS10
         RR24 = RS10
         DD23 = DD14
         DD24 = DD14
         DD25 = DD15
         DD26 = DD15
         DD27 = DD16
         DD28 = DD16
         DD29 = DD17
         DD30 = DD17
         CC12 = CC1
         CC13 = CC1
         CC14 = CC2
         CC15 = CC2
         CC16 = CC3
         CC17 = CC3
         CC18 = CS10
         CC19 = CS10
         DC54 = DC4 + I10(I2,K1)
         DC7 = DC4 + I10(I2,K1+1)
         DC55 = DC5 + I10(I2+1,K1)
         DC8 = DC5 + I10(I2+1,K1+1)
         DC56 = DC6 + I10(I2+2,K1)
         DC9 = DC6 + I10(I2+2,K1+1)
         DC57 = CDS10 + I10(I2+3,K1)
         DC3 = CDS10 + I10(I2+3,K1+1)
         DC58 = DC54 + RR17
         DC10 = DC7 + RR18
         DC59 = DC55 + RR19
         DC11 = DC8 + RR20
         DC60 = DC56 + RR21
         DC12 = DC9 + RR22
         DC61 = DC57 + RR23
         DC2 = DC3 + RR24
         DC62 = DC58 + DD23
         DC13 = DC10 + DD24
         DC63 = DC59 + DD25
         DC14 = DC11 + DD26
         DC64 = DC60 + DD27
         DC15 = DC12 + DD28
         DC65 = DC61 + DD29
         DC1 = DC2 + DD30
         CD10(I2,K1) = DC62 + CC12
         CD10(I2,K1+1) = DC13 + CC13
         CD10(I2+1,K1) = DC63 + CC14
         CD10(I2+1,K1+1) = DC14 + CC15
         CD10(I2+2,K1) = DC64 + CC16
         CD10(I2+2,K1+1) = DC15 + CC17
         CD10(I2+3,K1) = DC65 + CC18
         CD10(I2+3,K1+1) = DC1 + CC19
         C10(I2+3,K1+1) = CC19
         C10(I2+3,K1) = CC18
         C10(I2+2,K1+1) = CC17
         C10(I2+2,K1) = CC16
         C10(I2+1,K1+1) = CC15
         C10(I2+1,K1) = CC14
         C10(I2,K1+1) = CC13
         C10(I2,K1) = CC12
         D10(I2+3,K1+1) = DD30
         D10(I2+3,K1) = DD29
         D10(I2+2,K1+1) = DD28
         D10(I2+2,K1) = DD27
         D10(I2+1,K1+1) = DD26
         D10(I2+1,K1) = DD25
         D10(I2,K1+1) = DD24
         D10(I2,K1) = DD23
         R10(I2+3,K1+1) = RR24
         R10(I2+3,K1) = RR23
         R10(I2+2,K1+1) = RR22
         R10(I2+2,K1) = RR21
         R10(I2+1,K1+1) = RR20
         R10(I2+1,K1) = RR19
         R10(I2,K1+1) = RR18
         R10(I2,K1) = RR17
        END DO
        R10(I2,5) = RR1
        R10(I2+1,5) = RR2
        R10(I2+2,5) = RR3
        R10(I2+3,5) = RS10
        D10(I2,5) = DD14
        D10(I2+1,5) = DD15
        D10(I2+2,5) = DD16
        D10(I2+3,5) = DD17
        C10(I2,5) = CC1
        C10(I2+1,5) = CC2
        C10(I2+2,5) = CC3
        C10(I2+3,5) = CS10
        DC7 = DC4 + I10(I2,5)
        DC8 = DC5 + I10(I2+1,5)
        DC9 = DC6 + I10(I2+2,5)
        DC3 = CDS10 + I10(I2+3,5)
        DC10 = DC7 + R10(I2,5)
        DC11 = DC8 + R10(I2+1,5)
        DC12 = DC9 + R10(I2+2,5)
        DC2 = DC3 + R10(I2+3,5)
        DC13 = DC10 + D10(I2,5)
        DC14 = DC11 + D10(I2+1,5)
        DC15 = DC12 + D10(I2+2,5)
        DC1 = DC2 + D10(I2+3,5)
        CD10(I2,5) = DC13 + C10(I2,5)
        CD10(I2+1,5) = DC14 + C10(I2+1,5)
        CD10(I2+2,5) = DC15 + C10(I2+2,5)
        CD10(I2+3,5) = DC1 + C10(I2+3,5)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       LS10 = .TRUE.
       IS10 = 100
       DS10 = DBLE (RS10)
       K = 6

       WRITE (6, *) ' I = ', 101, ' K = ', K
       WRITE (6, *) ' IS10 = ', IS10, ' RS10 = ', RS10, ' DS10 = ', DS10
       WRITE (6, *) ' CS10 = ', CS10, ' CDS10 = ', CDS10, ' LS10 = ', 
     X   LS10
       WRITE (6, *) ' L10 = ', (L10(I1,5), I1=1,50)
       WRITE (6, *) ' CD10 = '
       WRITE (6, FMT_COMPLEX) (CD10(I1,5), I1=1,50)


       WRITE (6, *) '----- TEST NO.2 -----'
       LS11 = .FALSE.
       IS11 = -10
C$OMP PARALLEL SHARED (I11,R11,D11,C11,L11,J1,CD10,CD11,R10,C10,R12,C12,
C$OMP& CDS11,CS11,DS11,RS11,CDS10,CS10,DS10,RS10) PRIVATE (K1,I2,DC16,
C$OMP& DC17,DC18,DC19,DC20,DC21,DD1,RR4,RR5,RR6,RR7,RR8,DD2,DD3,DD4,DD5,
C$OMP& CC4,CC5,CC6,CC7,DC22,DC23,DC24,DC25,RR9,RR10,RR11,RR12,DD6,DD7,
C$OMP& DD8,DD9,CC8,CC9,CC10,CC11,DC26,DC27,DC28,DC29,DC30,DC31,DC32,DC33
C$OMP& ,DD10,DD11,DD12,DD13,DC34,DC35,DC36,DC37,DC38,DC39,DC40,DC41,DC42
C$OMP& ,DC43,DC44,DC45,DC46,DC47,DC48,DC49,DC50,DC51,DC52,DC53,RR13,RR14
C$OMP& ,RR15,RR16,DD18,DD19,DD20,DD21,DD22,II1,II2,II3,II4,II5)
C$OMP DO LASTPRIVATE (J1)
       DO K1=1,5
        DO I2=1,9,2
         I11(I2,1,K1) = 0
         I11(I2+1,1,K1) = 0
         I11(I2,2,K1) = 0
         I11(I2+1,2,K1) = 0
         I11(I2,3,K1) = 0
         I11(I2+1,3,K1) = 0
         R11(I2,1,K1) = 0.
         R11(I2+1,1,K1) = 0.
         R11(I2,2,K1) = 0.
         R11(I2+1,2,K1) = 0.
         R11(I2,3,K1) = 0.
         R11(I2+1,3,K1) = 0.
         D11(I2,1,K1) = 0D0
         D11(I2+1,1,K1) = 0D0
         D11(I2,2,K1) = 0D0
         D11(I2+1,2,K1) = 0D0
         D11(I2,3,K1) = 0D0
         D11(I2+1,3,K1) = 0D0
         C11(I2,1,K1) = (0., 0.)
         C11(I2+1,1,K1) = (0., 0.)
         C11(I2,2,K1) = (0., 0.)
         C11(I2+1,2,K1) = (0., 0.)
         C11(I2,3,K1) = (0., 0.)
         C11(I2+1,3,K1) = (0., 0.)
         L11(I2,1,K1) = 0 .EQ. MOD (I2, 2) .OR. 0 .NE. MOD (I2, 2)
         L11(I2+1,1,K1) = 0 .EQ. MOD (I2 + 1, 2) .OR. 0 .NE. MOD (I2 + 1
     X     , 2)
         L11(I2,2,K1) = 0 .EQ. MOD (I2, 2) .OR. 0 .NE. MOD (I2, 2)
         L11(I2+1,2,K1) = 0 .EQ. MOD (I2 + 1, 2) .OR. 0 .NE. MOD (I2 + 1
     X     , 2)
         L11(I2,3,K1) = 0 .EQ. MOD (I2, 2) .OR. 0 .NE. MOD (I2, 2)
         L11(I2+1,3,K1) = 0 .EQ. MOD (I2 + 1, 2) .OR. 0 .NE. MOD (I2 + 1
     X     , 2)
        END DO
        DO J1=4,5,1
         DO I2=1,6,5
          I11(I2,J1,K1) = 0
          I11(I2+1,J1,K1) = 0
          I11(I2+2,J1,K1) = 0
          I11(I2+3,J1,K1) = 0
          I11(I2+4,J1,K1) = 0
          R11(I2,J1,K1) = 0.
          R11(I2+1,J1,K1) = 0.
          R11(I2+2,J1,K1) = 0.
          R11(I2+3,J1,K1) = 0.
          R11(I2+4,J1,K1) = 0.
          D11(I2,J1,K1) = 0D0
          D11(I2+1,J1,K1) = 0D0
          D11(I2+2,J1,K1) = 0D0
          D11(I2+3,J1,K1) = 0D0
          D11(I2+4,J1,K1) = 0D0
          C11(I2,J1,K1) = (0., 0.)
          C11(I2+1,J1,K1) = (0., 0.)
          C11(I2+2,J1,K1) = (0., 0.)
          C11(I2+3,J1,K1) = (0., 0.)
          C11(I2+4,J1,K1) = (0., 0.)
          L11(I2,J1,K1) = 0 .EQ. MOD (I2, 2) .OR. 0 .NE. MOD (I2, 2)
          L11(I2+1,J1,K1) = 0 .EQ. MOD (I2 + 1, 2) .OR. 0 .NE. MOD (I2 +
     X       1, 2)
          L11(I2+2,J1,K1) = 0 .EQ. MOD (I2 + 2, 2) .OR. 0 .NE. MOD (I2 +
     X       2, 2)
          L11(I2+3,J1,K1) = 0 .EQ. MOD (I2 + 3, 2) .OR. 0 .NE. MOD (I2 +
     X       3, 2)
          L11(I2+4,J1,K1) = 0 .EQ. MOD (I2 + 4, 2) .OR. 0 .NE. MOD (I2 +
     X       4, 2)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (RS10,DS10,CS10,CDS10,RS11,DS11,CS11,CDS11)
       DO I2=1,6,5
        RR5 = FLOAT (I2)
        RR6 = FLOAT (I2 + 1)
        RR7 = FLOAT (I2 + 2)
        RR8 = FLOAT (I2 + 3)
        RS10 = FLOAT (I2 + 4)
        DD2 = DBLE (RR5)
        DD3 = DBLE (RR6)
        DD4 = DBLE (RR7)
        DD5 = DBLE (RR8)
        DS10 = DBLE (RS10)
        CC4 = DD2
        CC5 = DD3
        CC6 = DD4
        CC7 = DD5
        CS10 = DS10
        DC22 = CC4
        DC23 = CC5
        DC24 = CC6
        DC25 = CC7
        CDS10 = CS10
        DD18 = DBLE (RR5)
        DD19 = DBLE (RR6)
        DD20 = DBLE (RR7)
        DD21 = DBLE (RR8)
        DD22 = DBLE (RS10)
        II1 = I2 + 1
        II2 = I2 + 2
        II3 = I2 + 3
        II4 = I2 + 4
        RR9 = -RR5
        RR10 = -RR6
        RR11 = -RR7
        RR12 = -RR8
        RS11 = -RS10
        DD6 = -DD18
        DD7 = -DD19
        DD8 = -DD20
        DD9 = -DD21
        DS11 = -DD22
        CC8 = -CC4
        CC9 = -CC5
        CC10 = -CC6
        CC11 = -CC7
        CS11 = -CS10
        DC30 = DC22 - CC4
        DC31 = DC23 - CC5
        DC32 = DC24 - CC6
        DC33 = DC25 - CC7
        DC21 = CDS10 - CS10
        RR13 = RR5 * I2
        RR14 = RR6 * II1
        RR15 = RR7 * II2
        RR16 = RR8 * II3
        RR4 = RS10 * II4
        DO K1=1,5
         DC26 = CC8 - DD6 - RR9 * I2
         DC27 = CC9 - DD7 - RR10 * II1
         DC28 = CC10 - DD8 - RR11 * II2
         DC29 = CC11 - DD9 - RR12 * II3
         CDS11 = CS11 - DS11 - RS11 * II4
         CD10(I2,K1) = DC26
         CD10(I2+1,K1) = DC27
         CD10(I2+2,K1) = DC28
         CD10(I2+3,K1) = DC29
         CD10(I2+4,K1) = CDS11
         DD10 = DD18
         DD11 = DD19
         DD12 = DD20
         DD13 = DD21
         DD1 = DD22
         DO II5=1,5
          DC34 = DC30 + DD10
          DC35 = DC31 + DD11
          DC36 = DC32 + DD12
          DC37 = DC33 + DD13
          DC20 = DC21 + DD1
          DC38 = DC34 + C11(I2,II5,K1)
          DC39 = DC35 + C11(I2+1,II5,K1)
          DC40 = DC36 + C11(I2+2,II5,K1)
          DC41 = DC37 + C11(I2+3,II5,K1)
          DC19 = DC20 + C11(I2+4,II5,K1)
          DC42 = DC38 + D11(I2,II5,K1)
          DC43 = DC39 + D11(I2+1,II5,K1)
          DC44 = DC40 + D11(I2+2,II5,K1)
          DC45 = DC41 + D11(I2+3,II5,K1)
          DC18 = DC19 + D11(I2+4,II5,K1)
          DC46 = DC42 + R11(I2,II5,K1)
          DC47 = DC43 + R11(I2+1,II5,K1)
          DC48 = DC44 + R11(I2+2,II5,K1)
          DC49 = DC45 + R11(I2+3,II5,K1)
          DC17 = DC18 + R11(I2+4,II5,K1)
          DC50 = DC46 + I11(I2,II5,K1)
          DC51 = DC47 + I11(I2+1,II5,K1)
          DC52 = DC48 + I11(I2+2,II5,K1)
          DC53 = DC49 + I11(I2+3,II5,K1)
          DC16 = DC17 + I11(I2+4,II5,K1)
          CD11(I2,II5,K1) = DC50 + RR13
          CD11(I2+1,II5,K1) = DC51 + RR14
          CD11(I2+2,II5,K1) = DC52 + RR15
          CD11(I2+3,II5,K1) = DC53 + RR16
          CD11(I2+4,II5,K1) = DC16 + RR4
         END DO
         R10(I2,K1) = RR9
         R10(I2+1,K1) = RR10
         R10(I2+2,K1) = RR11
         R10(I2+3,K1) = RR12
         R10(I2+4,K1) = RS11
         C10(I2,K1) = CC8
         C10(I2+1,K1) = CC9
         C10(I2+2,K1) = CC10
         C10(I2+3,K1) = CC11
         C10(I2+4,K1) = CS11
         CD10(I2,K1) = R10(I2,K1) - I2 + DC26 * C10(I2,K1)
         CD10(I2+1,K1) = R10(I2+1,K1) - 1 - I2 + DC27 * C10(I2+1,K1)
         CD10(I2+2,K1) = R10(I2+2,K1) - 2 - I2 + DC28 * C10(I2+2,K1)
         CD10(I2+3,K1) = R10(I2+3,K1) - 3 - I2 + DC29 * C10(I2+3,K1)
         CD10(I2+4,K1) = R10(I2+4,K1) - 4 - I2 + CDS11 * C10(I2+4,K1)
        END DO
        R12(I2) = RR5
        R12(I2+1) = RR6
        R12(I2+2) = RR7
        R12(I2+3) = RR8
        R12(I2+4) = RS10
        C12(I2) = CC4 + DC22 - I2 + DD2 * RR5
        C12(I2+1) = CC5 - 1 + DC23 - I2 + DD3 * RR6
        C12(I2+2) = CC6 - 2 + DC24 - I2 + DD4 * RR7
        C12(I2+3) = CC7 - 3 + DC25 - I2 + DD5 * RR8
        C12(I2+4) = CS10 - 4 + CDS10 - I2 + DS10 * RS10
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       LS10 = .TRUE.
       IS10 = 10
       DO I2=1,6,5
        L10(I2,1) = 0 .NE. MOD (I2, 2)
        L10(I2+1,1) = 0 .NE. MOD (I2 + 1, 2)
        L10(I2+2,1) = 0 .NE. MOD (I2 + 2, 2)
        L10(I2+3,1) = 0 .NE. MOD (I2 + 3, 2)
        L10(I2+4,1) = 0 .NE. MOD (I2 + 4, 2)
        L10(I2,2) = 0 .NE. MOD (I2, 2)
        L10(I2+1,2) = 0 .NE. MOD (I2 + 1, 2)
        L10(I2+2,2) = 0 .NE. MOD (I2 + 2, 2)
        L10(I2+3,2) = 0 .NE. MOD (I2 + 3, 2)
        L10(I2+4,2) = 0 .NE. MOD (I2 + 4, 2)
        L10(I2,3) = 0 .NE. MOD (I2, 2)
        L10(I2+1,3) = 0 .NE. MOD (I2 + 1, 2)
        L10(I2+2,3) = 0 .NE. MOD (I2 + 2, 2)
        L10(I2+3,3) = 0 .NE. MOD (I2 + 3, 2)
        L10(I2+4,3) = 0 .NE. MOD (I2 + 4, 2)
        L10(I2,4) = 0 .NE. MOD (I2, 2)
        L10(I2+1,4) = 0 .NE. MOD (I2 + 1, 2)
        L10(I2+2,4) = 0 .NE. MOD (I2 + 2, 2)
        L10(I2+3,4) = 0 .NE. MOD (I2 + 3, 2)
        L10(I2+4,4) = 0 .NE. MOD (I2 + 4, 2)
       END DO
       DO I2=1,6,5
        L10(I2,5) = 0 .NE. MOD (I2, 2)
        L10(I2+1,5) = 0 .NE. MOD (I2 + 1, 2)
        L10(I2+2,5) = 0 .NE. MOD (I2 + 2, 2)
        L10(I2+3,5) = 0 .NE. MOD (I2 + 3, 2)
        L10(I2+4,5) = 0 .NE. MOD (I2 + 4, 2)
       END DO
       DO I2=1,6,5
        L12(I2) = 0 .EQ. MOD (I2, 2)
        L12(I2+1) = 0 .EQ. MOD (I2 + 1, 2)
        L12(I2+2) = 0 .EQ. MOD (I2 + 2, 2)
        L12(I2+3) = 0 .EQ. MOD (I2 + 3, 2)
        L12(I2+4) = 0 .EQ. MOD (I2 + 4, 2)
       END DO
       J = 6
       K = 6

       WRITE (6, *) ' I = ', 11, ' K = ', K, ' J = ', J
       WRITE (6, *) ' IS10 = ', IS10, ' RS10 = ', RS10, ' DS10 = ', DS10
       WRITE (6, *) ' CS10 = ', CS10, ' CDS10 = ', CDS10, ' LS10 = ', 
     X   LS10
       WRITE (6, *) ' IS11 = ', IS11, ' RS11 = ', RS11, ' DS11 = ', DS11
       WRITE (6, *) ' CS11 = ', CS11, ' CDS11 = ', CDS11, ' LS11 = ', 
     X   LS11
       WRITE (6, *) ' L11= ', (L11(I1,5,2), I1=1,10)
       WRITE (6, *) ' CD11 = ', (CD11(5,I1,3), I1=1,5)
       WRITE (6, *) ' L10 = ', (L10(I1,5), I1=1,10)
       WRITE (6, *) ' CD10 = '
       WRITE (6, FMT_COMPLEX) (CD10(I1,5), I1=1,10)
       WRITE (6, *) ' L12 = ', (L12(I1), I1=1,10)
       WRITE (6, *) ' C12 = ', (C12(I1), I1=1,10)

       WRITE (6, *) '----- TEST NO.3 -----'
       DO J1=1,10
        DO K1=1,10
         DO I2=1,6,5
          R10(I2,1) = R12(I2)
          R10(I2+1,1) = R12(I2+1)
          R10(I2+2,1) = R12(I2+2)
          R10(I2+3,1) = R12(I2+3)
          R10(I2+4,1) = R12(I2+4)
          R10(I2,2) = R12(I2)
          R10(I2+1,2) = R12(I2+1)
          R10(I2+2,2) = R12(I2+2)
          R10(I2+3,2) = R12(I2+3)
          R10(I2+4,2) = R12(I2+4)
          R10(I2,3) = R12(I2)
          R10(I2+1,3) = R12(I2+1)
          R10(I2+2,3) = R12(I2+2)
          R10(I2+3,3) = R12(I2+3)
          R10(I2+4,3) = R12(I2+4)
          R10(I2,4) = R12(I2)
          R10(I2+1,4) = R12(I2+1)
          R10(I2+2,4) = R12(I2+2)
          R10(I2+3,4) = R12(I2+3)
          R10(I2+4,4) = R12(I2+4)
          R10(I2,5) = R12(I2)
          R10(I2+1,5) = R12(I2+1)
          R10(I2+2,5) = R12(I2+2)
          R10(I2+3,5) = R12(I2+3)
          R10(I2+4,5) = R12(I2+4)
         END DO
        END DO
       END DO
       I = 11

       WRITE (6, *) ' R10 = ', (R10(I,3), I=1,10)

       STOP 
      END
