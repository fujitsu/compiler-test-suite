      PROGRAM MAIN

       INTEGER*4 I11(10)
       REAL*4 R11(10), R12(10), R13(10), R14(10), R15(10), R16(10), R17(
     X   10), R18(10), R19(10), R20(10), R21(10), R22(10)
       REAL*8 RD11(10)
       COMPLEX*8 C11(10)
       COMPLEX*16 CD11(10)
       DATA R14/1,2,3,4,5,6,7,8,9,10/ 
       DATA I11/1,2,1,2,1,2,3,2,1,2/ 
       DATA RD11/10,9,8,7,6,5,4,3,2,1/ 
       DATA C11/2*(1,1),3*(2,2),4*(3,3),(2,1)/ 
       DATA CD11/(2,1),4*(3,3),3*(2,2),2*(1,1)/ 

       REAL*4 R30(10), R31(10), R32(10), R33(10), R34(10), R35(10), R36(
     X   10), R37(10), R38(10), R39(10), R40(10)
       COMPLEX*8 C30(10)
       DATA R32/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.5/ 
       DATA R34/1.4,2.5,3.6,4.4,5.5,6.6,7.4,8.5,9.6,10.0/ 
       DATA R36/11,-12,13,-14,15,-16,-17,18,-19,20/ 
       DATA R31/10*0./ 
       DATA C30/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/ 
       LOGICAL*4 L41(10)
       DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 

       REAL*4 R41(10), R42(10), R43(10), R45(10), R46(10), R47(10), R48(
     X   10), R49(10), R50(10), R51(10), R52(10)
       DATA R41/10*0./ 
       DATA R42/10*0./ 
       DATA R43/10*0./ 
       DATA R45/10*0./ 
       DATA R46/10*0./ 
       DATA R47/10*0./ 
       DATA R48/10*0./ 
       DATA R49/10*0./ 
       DATA R50/10*0./ 
       DATA R51/10*0./ 
       DATA R52/10*0./ 

       REAL*4 R60(10), R61(10), R62(10), R63(10), R65(10), R67(10), R68(
     X   10), R69(10), R70(10)
       REAL RV33, RV32, RV31, RV30, RV11
       INTEGER N
       PARAMETER (RV33 = 12.5, RV32 = 0.5, RV31 = 2.5, RV30 = 5., RV11
     X    = 1.5)
       PARAMETER (N = 10)
       REAL RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, 
     X   RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       RV13 = 0.
       RV34 = 0.
       DATA R60/10*0./ 
       DATA R61/10*0./ 
       DATA R62/10*0./ 
       DATA R63/10*0./ 
       DATA R65/10*0./ 
       DATA R67/10*0./ 
       DATA R68/10*0./ 
       DATA R69/10*0./ 
       DATA R70/10*0./ 

       DO I=1,9,2
        RR1 = 1.
        RR2 = RV11
        RR3 = R14(I)
        RR4 = I
        RR5 = 2. + RR2
        RR6 = 3. + RR3
        RR7 = R14(I) * RR4
        RR8 = I11(I)
        RR9 = RD11(I)
        RR10 = C11(I)
        RR11 = CD11(I)
        RV13 = RV13 + RR1 + RR2 - RR3 + R14(I) - RR4 + RR5 + RR6 + RR7 -
     X     RR8 + RR9 - RR10 + RR11
        RR12 = 1.
        RR13 = RV11
        RR14 = R14(I+1)
        RR15 = I + 1
        RR16 = 2. + RR13
        RR17 = 3. + RR14
        RR18 = R14(I+1) * RR15
        RR19 = I11(I+1)
        RR20 = RD11(I+1)
        RR21 = C11(I+1)
        RR22 = CD11(I+1)
        RV13 = RV13 + RR12 + RR13 - RR14 + R14(I+1) - RR15 + RR16 + RR17
     X     + RR18 - RR19 + RR20 - RR21 + RR22
        R22(I+1) = RR22
        R21(I+1) = RR21
        R20(I+1) = RR20
        R19(I+1) = RR19
        R18(I+1) = RR18
        R17(I+1) = RR17
        R16(I+1) = RR16
        R15(I+1) = RR15
        R13(I+1) = RR14
        R12(I+1) = RR13
        R11(I+1) = RR12
        R22(I) = RR11
        R21(I) = RR10
        R20(I) = RR9
        R19(I) = RR8
        R18(I) = RR7
        R17(I) = RR6
        R16(I) = RR5
        R15(I) = RR4
        R13(I) = RR3
        R12(I) = RR2
        R11(I) = RR1
       END DO

       WRITE (6, *) R11
       WRITE (6, *) R12
       WRITE (6, *) R13
       WRITE (6, *) R15
       WRITE (6, *) R16
       WRITE (6, *) R17
       WRITE (6, *) R18
       WRITE (6, *) R19
       WRITE (6, *) R20
       WRITE (6, *) R21
       WRITE (6, *) R22
       WRITE (6, *) RV13

       DO I=1,10
        R30(I) = REAL (I)
        R33(I) = R31(I) + ANINT (R34(I))
        R35(I) = ABS (R33(I)) - AMOD (R36(I), 5.)
        R37(I) = SIGN (RV31, R35(I))
        R38(I) = DIM (R37(I), RV32)
        R39(I) = AMAX1 (R30(I), R31(I), R33(I), RV33)
        R40(I) = IMAG (C30(I))
        RV34 = RV34 + R40(I) + R39(I) + R38(I) + R37(I) + R35(I) + R33(I
     X    ) + R32(I) + R31(I) + R30(I)
       END DO

       WRITE (6, *) R30
       WRITE (6, *) R31
       WRITE (6, *) R33
       WRITE (6, *) R35
       WRITE (6, *) R37
       WRITE (6, *) R38
       WRITE (6, *) R39
       WRITE (6, *) R40
       WRITE (6, 10000) RV34
10000  FORMAT(' RV34 = ',F10.3)


       RV13 = 0.
       DO I=1,10
        IF (.NOT.L41(I)) THEN
         R41(I) = 1.
         R42(I) = RV11
         R43(I) = R14(I)
         R45(I) = I
         R46(I) = 2. + R42(I)
         R47(I) = 3. + R43(I)
         R48(I) = R14(I) * R45(I)
         R49(I) = I11(I)
         R50(I) = RD11(I)
         R51(I) = C11(I)
         R52(I) = CD11(I)
         RV13 = RV13 + R41(I) + R42(I) - R43(I) + R14(I) - R45(I) + R46(
     X     I) - R47(I) + R48(I) - R49(I) + R50(I) - R51(I) + R52(I)
        END IF
       END DO


       WRITE (6, *) R41
       WRITE (6, *) R42
       WRITE (6, *) R43
       WRITE (6, *) R45
       WRITE (6, *) R46
       WRITE (6, *) R47
       WRITE (6, *) R48
       WRITE (6, *) R49
       WRITE (6, *) R50
       WRITE (6, *) R51
       WRITE (6, *) R52
       WRITE (6, *) RV13

       RV34 = 0.
       DO I=1,10
        IF (L41(I)) THEN
         R60(I) = REAL (I)
         R63(I) = R61(I) + ANINT (R34(I))
         R65(I) = ABS (R63(I)) - AMOD (R36(I), 5.)
         R67(I) = SIGN (RV31, R65(I))
         R68(I) = DIM (R67(I), RV32)
         R69(I) = AMAX1 (R60(I), R61(I), R63(I), RV33)
         R70(I) = IMAG (C30(I))
         RV34 = RV34 + R70(I) + R69(I) + R68(I) + R67(I) + R65(I) + R63(
     X     I) + R62(I) + R61(I) + R60(I)
        END IF
       END DO

       WRITE (6, *) R60
       WRITE (6, *) R61
       WRITE (6, *) R63
       WRITE (6, *) R65
       WRITE (6, *) R67
       WRITE (6, *) R68
       WRITE (6, *) R69
       WRITE (6, *) R70
       WRITE (6, *) RV34
       STOP 
      END
