      PROGRAM MAIN
       INTEGER*2 I2S1, I2S2, I2S3, I2S4, I2S5, I2S6, I2S7, I2S8
       INTEGER*2 I2A1(10), I2A2(10)
       INTEGER*4 I4A1(10), I4A2(10)
       REAL*4 R4S1, R4S2, R4S3, R4S4, R4S5, R4S6, R4S7, R4S8, R4S9
       REAL*4 R4A1(10), R4A2(10)
       REAL*8 R8S1, R8S2, R8S3, R8S4, R8S5, R8S6, R8S7, R8S8, R8S9
       REAL*8 R8A1(10), R8A2(10)
       REAL*8 R16S1, R16S2, R16S3, R16S4, R16S5, R16S6, R16S7, R16S8, 
     X   R16S9
       REAL*8 R16S10, R16S11, R16A1(10), R16A2(10)
       COMPLEX*8 C8S1, C8S2, C8S3, C8S4, C8S5, C8S6, C8S7, C8S8, C8S9, 
     X   C8S10
       COMPLEX*8 C8A1(10), C8A2(10)
       COMPLEX*16 C16S1, C16S2, C16S3, C16S4, C16S5, C16S6, C16S7, C16S8
     X   , C16S9
       COMPLEX*16 C16S10, C16A1(10), C16A2(10)
       COMPLEX*16 C32S1, C32S2, C32S3, C32S4, C32S5, C32S6, C32S7, C32S8
     X   , C32S9
       COMPLEX*16 C32S10, C32S11, C32A1(10), C32A2(10)
       LOGICAL*1 L1S1, L1S2, L1S3, L1S4, L1S5, L1S6, L1S7, L1S8, L1S9
       LOGICAL*1 L1A1(10), L1A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3, L4S4, L4S5, L4S6, L4S7, L4S8, L4S9, 
     X   L4S10
       LOGICAL*4 L4S11, L4S12, L4A1(10), L4A2(10)
       DATA I2A1/1,2,3,4,5,6,7,8,9,10/ 
       DATA I2A2/11,12,13,14,15,16,17,18,19,20/ 
       DATA I4A1/1,2,3,4,5,6,7,8,9,10/ 
       DATA I4A2/11,12,13,14,15,16,17,18,19,20/ 
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./ 
       DATA R8A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R8A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./ 
       DATA R16A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.),
     X   (7.,7.),(8.,8.),(9.,9.),(10.,10.)/ 
       DATA R16A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.),(1.,6.),
     X   (1.,7.),(1.,8.),(1.,9.),(1.,10.)/ 
       DATA C8A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.),(7.,7.)
     X   ,(8.,8.),(9.,9.),(10.,10.)/ 
       DATA C8A2/(1.,1.),(2.,1.),(3.,1.),(4.,1.),(5.,1.),(6.,1.),(7.,1.)
     X   ,(8.,1.),(9.,1.),(10.,1.)/ 
       DATA C16A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.),
     X   (7.,7.),(8.,8.),(9.,9.),(10.,10.)/ 
       DATA C16A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.),(1.,6.),
     X   (1.,7.),(1.,8.),(1.,9.),(1.,10.)/ 
       DATA C32A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),(6.,6.),
     X   (7.,7.),(8.,8.),(9.,9.),(10.,10.)/ 
       DATA C32A2/(2.,1.),(2.,2.),(2.,3.),(2.,4.),(2.,5.),(2.,6.),
     X   (2.,7.),(2.,8.),(2.,9.),(2.,10.)/ 
       DATA L1A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L1A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       DATA L4A1/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       INTEGER*2 HI10, HI9, HI8, HI7, HI6, HI5, HI4, HI3, HI2, HI1
       INTEGER II20, II19, II18, II17, II16, II15, II14, II13, II12, 
     X   II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X   RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD25, DD24, DD23, DD22, DD21, DD20, DD19, DD18, 
     X   DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, 
     X   DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL*1 LL5, LL4, LL3, LL2, LL1
       LOGICAL LL10, LL9, LL8, LL7, LL6
       COMPLEX CC4, CC3, CC2, CC1
       COMPLEX*16 DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

       R4S3 = 0.
       R4S4 = 0.
       R4S5 = 0.
       R4S6 = 0.
       R4S7 = 0.
       R4S8 = 0.
       R4S9 = 0.

       I2S2 = 0
       I2S4 = 0
       I2S5 = 0
       I2S6 = 0
       I2S7 = 0
       I2S8 = 0
       DO I=1,6,5
        I2S1 = 1
        HI1 = I2S2
        I2S2 = HI1
        I2S3 = I4A1(I)
        II1 = I2S4
        I4A1(I) = II1
        I2S4 = R4A1(I)
        HI1 = I2S5
        I2S5 = HI1 + I2A2(I)
        HI1 = I2S6
        I2S6 = HI1 + II1
        RR1 = I2S7
        R4A1(I) = RR1
        I2S7 = HI1 + RR1
        HI1 = I2S8
        I2A1(I) = HI1
        I2S8 = HI1 + 9
        HI2 = I2S1 + I2S2 + I2S3 + I2S4 + I2S5 + I2S6 + I2S7 + I2S8
        I2A2(I) = HI2
        I2S1 = 1
        HI3 = I2S2
        I2S2 = HI3
        I2S3 = I4A1(I+1)
        II2 = I2S4
        I4A1(I+1) = II2
        I2S4 = R4A1(I+1)
        HI3 = I2S5
        I2S5 = HI3 + I2A2(I+1)
        HI3 = I2S6
        I2S6 = HI3 + II2
        RR2 = I2S7
        R4A1(I+1) = RR2
        I2S7 = HI3 + RR2
        HI3 = I2S8
        I2A1(I+1) = HI3
        I2S8 = HI3 + 9
        HI4 = I2S1 + I2S2 + I2S3 + I2S4 + I2S5 + I2S6 + I2S7 + I2S8
        I2A2(I+1) = HI4
        I2S1 = 1
        HI5 = I2S2
        I2S2 = HI5
        I2S3 = I4A1(I+2)
        II3 = I2S4
        I4A1(I+2) = II3
        I2S4 = R4A1(I+2)
        HI5 = I2S5
        I2S5 = HI5 + I2A2(I+2)
        HI5 = I2S6
        I2S6 = HI5 + II3
        RR3 = I2S7
        R4A1(I+2) = RR3
        I2S7 = HI5 + RR3
        HI5 = I2S8
        I2A1(I+2) = HI5
        I2S8 = HI5 + 9
        HI6 = I2S1 + I2S2 + I2S3 + I2S4 + I2S5 + I2S6 + I2S7 + I2S8
        I2A2(I+2) = HI6
        I2S1 = 1
        HI7 = I2S2
        I2S2 = HI7
        I2S3 = I4A1(I+3)
        II4 = I2S4
        I4A1(I+3) = II4
        I2S4 = R4A1(I+3)
        HI7 = I2S5
        I2S5 = HI7 + I2A2(I+3)
        HI7 = I2S6
        I2S6 = HI7 + II4
        RR4 = I2S7
        R4A1(I+3) = RR4
        I2S7 = HI7 + RR4
        HI7 = I2S8
        I2A1(I+3) = HI7
        I2S8 = HI7 + 9
        HI8 = I2S1 + I2S2 + I2S3 + I2S4 + I2S5 + I2S6 + I2S7 + I2S8
        I2A2(I+3) = HI8
        I2S1 = 1
        HI9 = I2S2
        I2S2 = HI9
        I2S3 = I4A1(I+4)
        II5 = I2S4
        I4A1(I+4) = II5
        I2S4 = R4A1(I+4)
        HI9 = I2S5
        I2S5 = HI9 + I2A2(I+4)
        HI9 = I2S6
        I2S6 = HI9 + II5
        RR5 = I2S7
        R4A1(I+4) = RR5
        I2S7 = HI9 + RR5
        HI9 = I2S8
        I2A1(I+4) = HI9
        I2S8 = HI9 + 9
        HI10 = I2S1 + I2S2 + I2S3 + I2S4 + I2S5 + I2S6 + I2S7 + I2S8
        I2A2(I+4) = HI10
       END DO
       WRITE (6, *) '** INTEGER * 2 **'
       WRITE (6, *) I2S1, I2S2, I2S3, I2S4, I2S5, I2S6, I2S7, I2S8
       WRITE (6, *) I2A2

       I4S6 = 0
       I4S7 = 0
       I4S8 = 0
       DO I=1,6,5
        I4S1 = 1
        I4S2 = I4A1(I)
        I4S3 = I2A1(I)
        I4S4 = R4A1(I)
        I4S5 = R8A1(I)
        II6 = I4S6
        I4S6 = I4A1(I) + II6
        I4A2(I) = I4S7
        I4S7 = I4A1(I) + 2
        I4A2(I) = I4S8
        I4S8 = I4A1(I) + R4A1(I)
        II6 = I4S2 + I4S3 + I4S4 + I4S5 + I4S6 + I4A1(I) + I4S8 + 3
        I4S1 = 1
        I4A2(I) = II6
        I4S2 = I4A1(I+1)
        I4S3 = I2A1(I+1)
        I4S4 = R4A1(I+1)
        I4S5 = R8A1(I+1)
        II7 = I4S6
        I4S6 = I4A1(I+1) + II7
        I4A2(I+1) = I4S7
        I4S7 = I4A1(I+1) + 2
        I4A2(I+1) = I4S8
        I4S8 = I4A1(I+1) + R4A1(I+1)
        II7 = I4S2 + I4S3 + I4S4 + I4S5 + I4S6 + I4A1(I+1) + I4S8 + 3
        I4S1 = 1
        I4A2(I+1) = II7
        I4S2 = I4A1(I+2)
        I4S3 = I2A1(I+2)
        I4S4 = R4A1(I+2)
        I4S5 = R8A1(I+2)
        II8 = I4S6
        I4S6 = I4A1(I+2) + II8
        I4A2(I+2) = I4S7
        I4S7 = I4A1(I+2) + 2
        I4A2(I+2) = I4S8
        I4S8 = I4A1(I+2) + R4A1(I+2)
        II8 = I4S2 + I4S3 + I4S4 + I4S5 + I4S6 + I4A1(I+2) + I4S8 + 3
        I4S1 = 1
        I4A2(I+2) = II8
        I4S2 = I4A1(I+3)
        I4S3 = I2A1(I+3)
        I4S4 = R4A1(I+3)
        I4S5 = R8A1(I+3)
        II9 = I4S6
        I4S6 = I4A1(I+3) + II9
        I4A2(I+3) = I4S7
        I4S7 = I4A1(I+3) + 2
        I4A2(I+3) = I4S8
        I4S8 = I4A1(I+3) + R4A1(I+3)
        II9 = I4S2 + I4S3 + I4S4 + I4S5 + I4S6 + I4A1(I+3) + I4S8 + 3
        I4S1 = 1
        I4A2(I+3) = II9
        I4S2 = I4A1(I+4)
        I4S3 = I2A1(I+4)
        I4S4 = R4A1(I+4)
        I4S5 = R8A1(I+4)
        II10 = I4S6
        I4S6 = I4A1(I+4) + II10
        I4A2(I+4) = I4S7
        I4S7 = I4A1(I+4) + 2
        I4A2(I+4) = I4S8
        I4S8 = I4A1(I+4) + R4A1(I+4)
        II10 = I4S2 + I4S3 + I4S4 + I4S5 + I4S6 + I4A1(I+4) + I4S8 + 3
        I4A2(I+4) = II10
       END DO
       WRITE (6, *) '** INTEGER * 4 **'
       WRITE (6, *) I4S1, I4S2, I4S3, I4S4, I4S5, I4S6, I4S7, I4S8
       WRITE (6, *) I4A2

       R4S1 = 0.
       R4S1 = 1.
       R4S1 = 2.
       R4S1 = 3.
       R4S1 = 4.
       R4S1 = 5.
       R4S1 = 6.
       R4S1 = 7.
       R4S1 = 8.
       DO I=1,6,5
        R4S2 = R4S1
        R4S1 = 3.
        RR6 = R4S2
        R4S2 = RR6
        R4S1 = R4S3
        R4S3 = I4A1(I)
        DD1 = R4S4
        R8A1(I) = DD1
        R4S4 = DD1
        II11 = R4S5
        I4A1(I) = II11
        R4S5 = I2A1(I)
        RR6 = R4S6
        R4S6 = 1. + RR6
        RR6 = R4S7
        R4A1(I) = RR6
        R4S7 = RR6 + R4A2(I)
        R4A2(I) = R4S8
        R4S8 = RR6 + DD1
        R4S8 = R4S9
        R4S9 = RR6 + II11
        RR7 = R4S1 + R4S2 + R4S3 + R4S4 + R4S5 + R4S6 + R4S7 + R4S8 + 
     X    R4S9
        R4A2(I) = RR7
        R4S2 = R4S1
        R4S1 = 3.
        RR8 = R4S2
        R4S2 = RR8
        R4S1 = R4S3
        R4S3 = I4A1(I+1)
        DD2 = R4S4
        R8A1(I+1) = DD2
        R4S4 = DD2
        II12 = R4S5
        I4A1(I+1) = II12
        R4S5 = I2A1(I+1)
        RR8 = R4S6
        R4S6 = 1. + RR8
        RR8 = R4S7
        R4A1(I+1) = RR8
        R4S7 = RR8 + R4A2(I+1)
        R4A2(I+1) = R4S8
        R4S8 = RR8 + DD2
        R4S8 = R4S9
        R4S9 = RR8 + II12
        RR9 = R4S1 + R4S2 + R4S3 + R4S4 + R4S5 + R4S6 + R4S7 + R4S8 + 
     X    R4S9
        R4A2(I+1) = RR9
        R4S2 = R4S1
        R4S1 = 3.
        RR10 = R4S2
        R4S2 = RR10
        R4S1 = R4S3
        R4S3 = I4A1(I+2)
        DD3 = R4S4
        R8A1(I+2) = DD3
        R4S4 = DD3
        II13 = R4S5
        I4A1(I+2) = II13
        R4S5 = I2A1(I+2)
        RR10 = R4S6
        R4S6 = 1. + RR10
        RR10 = R4S7
        R4A1(I+2) = RR10
        R4S7 = RR10 + R4A2(I+2)
        R4A2(I+2) = R4S8
        R4S8 = RR10 + DD3
        R4S8 = R4S9
        R4S9 = RR10 + II13
        RR11 = R4S1 + R4S2 + R4S3 + R4S4 + R4S5 + R4S6 + R4S7 + R4S8 + 
     X    R4S9
        R4A2(I+2) = RR11
        R4S2 = R4S1
        R4S1 = 3.
        RR12 = R4S2
        R4S2 = RR12
        R4S1 = R4S3
        R4S3 = I4A1(I+3)
        DD4 = R4S4
        R8A1(I+3) = DD4
        R4S4 = DD4
        II14 = R4S5
        I4A1(I+3) = II14
        R4S5 = I2A1(I+3)
        RR12 = R4S6
        R4S6 = 1. + RR12
        RR12 = R4S7
        R4A1(I+3) = RR12
        R4S7 = RR12 + R4A2(I+3)
        R4A2(I+3) = R4S8
        R4S8 = RR12 + DD4
        R4S8 = R4S9
        R4S9 = RR12 + II14
        RR13 = R4S1 + R4S2 + R4S3 + R4S4 + R4S5 + R4S6 + R4S7 + R4S8 + 
     X    R4S9
        R4A2(I+3) = RR13
        R4S2 = R4S1
        R4S1 = 3.
        RR14 = R4S2
        R4S2 = RR14
        R4S1 = R4S3
        R4S3 = I4A1(I+4)
        DD5 = R4S4
        R8A1(I+4) = DD5
        R4S4 = DD5
        II15 = R4S5
        I4A1(I+4) = II15
        R4S5 = I2A1(I+4)
        RR14 = R4S6
        R4S6 = 1. + RR14
        RR14 = R4S7
        R4A1(I+4) = RR14
        R4S7 = RR14 + R4A2(I+4)
        R4A2(I+4) = R4S8
        R4S8 = RR14 + DD5
        R4S8 = R4S9
        R4S9 = RR14 + II15
        RR15 = R4S1 + R4S2 + R4S3 + R4S4 + R4S5 + R4S6 + R4S7 + R4S8 + 
     X    R4S9
        R4A2(I+4) = RR15
       END DO
       WRITE (6, *) '** REAL * 4 **'
       WRITE (6, *) R4S1, R4S2, R4S3, R4S4, R4S5, R4S6, R4S7, R4S8, R4S9
       WRITE (6, *) R4A2

       R8S1 = 1D0
       R8S3 = 3D0
       R8S4 = 4D0
       R8S5 = 5D0
       R8S7 = 7D0
       DO I=1,6,5
        R8S2 = R8S1
        R8S1 = 4D0
        R8S2 = R8A1(I)
        RR16 = R8S3
        R8S3 = RR16
        II16 = R8S4
        I4A1(I) = II16
        R8S4 = II16
        R8S6 = R8S5
        R8S5 = C8A1(I)
        DD6 = R8S6
        R8A1(I) = DD6
        R8S6 = DD6 + R8A2(I)
        RR16 = R8S7
        R4A1(I) = RR16
        R8S7 = 4. + DD6
        R8S8 = RR16 + II16
        DD7 = 4D0 + R8S2 + R8S3 + R8S4 + R8S5 + R8S6 + R8S7 + R8S8 + 
     X    RR16 + DD6
        R8A2(I) = DD7
        R8S2 = R8S1
        R8S1 = 4D0
        R8S2 = R8A1(I+1)
        RR17 = R8S3
        R8S3 = RR17
        II17 = R8S4
        I4A1(I+1) = II17
        R8S4 = II17
        R8S6 = R8S5
        R8S5 = C8A1(I+1)
        DD8 = R8S6
        R8A1(I+1) = DD8
        R8S6 = DD8 + R8A2(I+1)
        RR17 = R8S7
        R4A1(I+1) = RR17
        R8S7 = 4. + DD8
        R8S8 = RR17 + II17
        DD9 = 4D0 + R8S2 + R8S3 + R8S4 + R8S5 + R8S6 + R8S7 + R8S8 + 
     X    RR17 + DD8
        R8A2(I+1) = DD9
        R8S2 = R8S1
        R8S1 = 4D0
        R8S2 = R8A1(I+2)
        RR18 = R8S3
        R8S3 = RR18
        II18 = R8S4
        I4A1(I+2) = II18
        R8S4 = II18
        R8S6 = R8S5
        R8S5 = C8A1(I+2)
        DD10 = R8S6
        R8A1(I+2) = DD10
        R8S6 = DD10 + R8A2(I+2)
        RR18 = R8S7
        R4A1(I+2) = RR18
        R8S7 = 4. + DD10
        R8S8 = RR18 + II18
        DD11 = 4D0 + R8S2 + R8S3 + R8S4 + R8S5 + R8S6 + R8S7 + R8S8 + 
     X    RR18 + DD10
        R8A2(I+2) = DD11
        R8S2 = R8S1
        R8S1 = 4D0
        R8S2 = R8A1(I+3)
        RR19 = R8S3
        R8S3 = RR19
        II19 = R8S4
        I4A1(I+3) = II19
        R8S4 = II19
        R8S6 = R8S5
        R8S5 = C8A1(I+3)
        DD12 = R8S6
        R8A1(I+3) = DD12
        R8S6 = DD12 + R8A2(I+3)
        RR19 = R8S7
        R4A1(I+3) = RR19
        R8S7 = 4. + DD12
        R8S8 = RR19 + II19
        DD13 = 4D0 + R8S2 + R8S3 + R8S4 + R8S5 + R8S6 + R8S7 + R8S8 + 
     X    RR19 + DD12
        R8A2(I+3) = DD13
        R8S2 = R8S1
        R8S1 = 4D0
        R8S2 = R8A1(I+4)
        RR20 = R8S3
        R8S3 = RR20
        II20 = R8S4
        I4A1(I+4) = II20
        R8S4 = II20
        R8S6 = R8S5
        R8S5 = C8A1(I+4)
        DD14 = R8S6
        R8A1(I+4) = DD14
        R8S6 = DD14 + R8A2(I+4)
        RR20 = R8S7
        R4A1(I+4) = RR20
        R8S7 = 4. + DD14
        R8S8 = RR20 + II20
        DD15 = 4D0 + R8S2 + R8S3 + R8S4 + R8S5 + R8S6 + R8S7 + R8S8 + 
     X    RR20 + DD14
        R8A2(I+4) = DD15
       END DO
       R8S9 = R8A1(10) + R4A1(10)
       WRITE (6, *) '** REAL * 8 **'
       WRITE (6, *) R8S1, R8S2, R8S3, R8S4, R8S5, R8S6, R8S7, R8S8, R8S9
       WRITE (6, *) R8A2

       R16S2 = 0D0
       R16S7 = 0D0
       R16S8 = 0D0
       R16S9 = 0D0
       R16S10 = 0D0
       R16S11 = 0D0
       DO I=1,6,5
        R16S1 = 5D0
        DD17 = R16S2
        R16S2 = DD17
        R16S3 = R8A1(I)
        R16S4 = R4A1(I)
        R16S5 = I4A1(I)
        R16S6 = C8A1(I)
        DD17 = R16S7
        R16S7 = C16A1(I)
        DD16 = R16S8
        R16S8 = DD17 + DD16
        DD17 = R16S9
        R16S9 = 5. + DD17
        R16A2(I) = R16S10
        R16S10 = R8A1(I) + DD17
        DD17 = R16S11
        R16A1(I) = DD17
        R16S11 = R4A1(I) + DD17
        DD16 = 5D0 + R16S2 + R16S3 + R16S4 + R16S5 + R16S6 + R16S7 + 
     X    R16S8 + R16S9 + R16S10 + R16S11
        R16S1 = 5D0
        DD19 = R16S2
        R16A2(I) = DD16
        R16S2 = DD19
        R16S3 = R8A1(I+1)
        R16S4 = R4A1(I+1)
        R16S5 = I4A1(I+1)
        R16S6 = C8A1(I+1)
        DD19 = R16S7
        R16S7 = C16A1(I+1)
        DD18 = R16S8
        R16S8 = DD19 + DD18
        DD19 = R16S9
        R16S9 = 5. + DD19
        R16A2(I+1) = R16S10
        R16S10 = R8A1(I+1) + DD19
        DD19 = R16S11
        R16A1(I+1) = DD19
        R16S11 = R4A1(I+1) + DD19
        DD18 = 5D0 + R16S2 + R16S3 + R16S4 + R16S5 + R16S6 + R16S7 + 
     X    R16S8 + R16S9 + R16S10 + R16S11
        R16S1 = 5D0
        DD21 = R16S2
        R16A2(I+1) = DD18
        R16S2 = DD21
        R16S3 = R8A1(I+2)
        R16S4 = R4A1(I+2)
        R16S5 = I4A1(I+2)
        R16S6 = C8A1(I+2)
        DD21 = R16S7
        R16S7 = C16A1(I+2)
        DD20 = R16S8
        R16S8 = DD21 + DD20
        DD21 = R16S9
        R16S9 = 5. + DD21
        R16A2(I+2) = R16S10
        R16S10 = R8A1(I+2) + DD21
        DD21 = R16S11
        R16A1(I+2) = DD21
        R16S11 = R4A1(I+2) + DD21
        DD20 = 5D0 + R16S2 + R16S3 + R16S4 + R16S5 + R16S6 + R16S7 + 
     X    R16S8 + R16S9 + R16S10 + R16S11
        R16S1 = 5D0
        DD23 = R16S2
        R16A2(I+2) = DD20
        R16S2 = DD23
        R16S3 = R8A1(I+3)
        R16S4 = R4A1(I+3)
        R16S5 = I4A1(I+3)
        R16S6 = C8A1(I+3)
        DD23 = R16S7
        R16S7 = C16A1(I+3)
        DD22 = R16S8
        R16S8 = DD23 + DD22
        DD23 = R16S9
        R16S9 = 5. + DD23
        R16A2(I+3) = R16S10
        R16S10 = R8A1(I+3) + DD23
        DD23 = R16S11
        R16A1(I+3) = DD23
        R16S11 = R4A1(I+3) + DD23
        DD22 = 5D0 + R16S2 + R16S3 + R16S4 + R16S5 + R16S6 + R16S7 + 
     X    R16S8 + R16S9 + R16S10 + R16S11
        R16S1 = 5D0
        DD25 = R16S2
        R16A2(I+3) = DD22
        R16S2 = DD25
        R16S3 = R8A1(I+4)
        R16S4 = R4A1(I+4)
        R16S5 = I4A1(I+4)
        R16S6 = C8A1(I+4)
        DD25 = R16S7
        R16S7 = C16A1(I+4)
        DD24 = R16S8
        R16S8 = DD25 + DD24
        DD25 = R16S9
        R16S9 = 5. + DD25
        R16A2(I+4) = R16S10
        R16S10 = R8A1(I+4) + DD25
        DD25 = R16S11
        R16A1(I+4) = DD25
        R16S11 = R4A1(I+4) + DD25
        DD24 = 5D0 + R16S2 + R16S3 + R16S4 + R16S5 + R16S6 + R16S7 + 
     X    R16S8 + R16S9 + R16S10 + R16S11
        R16A2(I+4) = DD24
       END DO
       WRITE (6, *) '** REAL * 8  **'
       WRITE (6, *) R16S1, R16S2, R16S3, R16S4, R16S5, R16S6, R16S7, 
     X   R16S8
       WRITE (6, *) R16S9, R16S10, R16S11
       WRITE (6, *) R16A2

       C8S2 = (2., 0.)
       C8S9 = (9., 0.)
       C8S10 = (10., 0.)
       DO I=1,9,2
        C8S1 = (6., 0.)
        CC1 = C8S2
        C8S2 = CC1
        C8S3 = I4A1(I)
        C8S4 = R4A1(I)
        C8S5 = R8A1(I)
        C8S6 = R16A1(I)
        C8S7 = C16A1(I)
        C8S8 = C32A1(I)
        CC1 = C8S9
        C8S9 = CC1 + C8A2(I)
        CC1 = C8S10
        C8A1(I) = CC1
        C8S10 = 6. + CC1
        CC2 = (6., 0.) + C8S2 + C8S3 + C8S4 + C8S5 + C8S6 + C8S7 + C8S8 
     X    + C8S9 + C8S10
        C8S1 = (6., 0.)
        CC3 = C8S2
        C8A2(I) = CC2
        C8S2 = CC3
        C8S3 = I4A1(I+1)
        C8S4 = R4A1(I+1)
        C8S5 = R8A1(I+1)
        C8S6 = R16A1(I+1)
        C8S7 = C16A1(I+1)
        C8S8 = C32A1(I+1)
        CC3 = C8S9
        C8S9 = CC3 + C8A2(I+1)
        CC3 = C8S10
        C8A1(I+1) = CC3
        C8S10 = 6. + CC3
        CC4 = (6., 0.) + C8S2 + C8S3 + C8S4 + C8S5 + C8S6 + C8S7 + C8S8 
     X    + C8S9 + C8S10
        C8A2(I+1) = CC4
       END DO
       WRITE (6, *) '** COMPLEX * 8 **'
       WRITE (6, *) C8S1, C8S2, C8S3, C8S4, C8S5, C8S6, C8S7, C8S8, C8S9
     X   , C8S10
       WRITE (6, *) C8A1

       C16S2 = 2.
       C16S9 = 9.
       C16S10 = 10.
       DO I=1,9,2
        C16S1 = 7.
        DC1 = C16S2
        C16S2 = DC1
        C16S3 = I4A1(I)
        C16S4 = R4A1(I)
        C16S5 = R8A1(I)
        C16S6 = R16A1(I)
        C16S7 = C8A1(I)
        C16S8 = C32A1(I)
        DC1 = C16S9
        C16S9 = DC1 + C16A2(I)
        DC1 = C16S10
        C16A1(I) = DC1
        C16S10 = 7. + DC1
        DC2 = C16S1 + C16S2 + C16S3 + C16S4 + C16S5 + C16S6 + C16S7 + 
     X    C16S8 + C16S9 + C16S10
        C16A2(I) = DC2
        C16S1 = 7.
        DC3 = C16S2
        C16S2 = DC3
        C16S3 = I4A1(I+1)
        C16S4 = R4A1(I+1)
        C16S5 = R8A1(I+1)
        C16S6 = R16A1(I+1)
        C16S7 = C8A1(I+1)
        C16S8 = C32A1(I+1)
        DC3 = C16S9
        C16S9 = DC3 + C16A2(I+1)
        DC3 = C16S10
        C16A1(I+1) = DC3
        C16S10 = 7. + DC3
        DC4 = C16S1 + C16S2 + C16S3 + C16S4 + C16S5 + C16S6 + C16S7 + 
     X    C16S8 + C16S9 + C16S10
        C16A2(I+1) = DC4
       END DO
       WRITE (6, *) '** COMPLEX * 16 **'
       WRITE (6, *) C16S1, C16S2, C16S3, C16S4, C16S5, C16S6, C16S7, 
     X   C16S8
       WRITE (6, *) C16S9, C16S10
       WRITE (6, *) C16A2

       C32S2 = 2.
       C32S9 = 9.
       C32S10 = 10.
       C32S11 = 11.
       DO I=1,9,2
        C32S1 = 8.
        DC5 = C32S2
        C32S2 = DC5
        C32S3 = I4A1(I)
        C32S4 = R4A1(I)
        C32S5 = R8A1(I)
        C32S6 = R16A1(I)
        C32S7 = C8A1(I)
        C32S8 = C16A1(I)
        DC5 = C32S9
        C32S9 = DC5
        DC5 = C32S10
        C32S10 = DC5 + C32A2(I)
        DC5 = C32S11
        C32S11 = 8. + DC5
        DC6 = C32S1 + C32S2 + C32S3 + C32S4 + C32S5 + C32S6 + C32S7 + 
     X    C32S8 + C32S9 + C32S10 + C32S11
        C32A2(I) = DC6
        C32S1 = 8.
        DC7 = C32S2
        C32S2 = DC7
        C32S3 = I4A1(I+1)
        C32S4 = R4A1(I+1)
        C32S5 = R8A1(I+1)
        C32S6 = R16A1(I+1)
        C32S7 = C8A1(I+1)
        C32S8 = C16A1(I+1)
        DC7 = C32S9
        C32S9 = DC7
        DC7 = C32S10
        C32S10 = DC7 + C32A2(I+1)
        DC7 = C32S11
        C32S11 = 8. + DC7
        DC8 = C32S1 + C32S2 + C32S3 + C32S4 + C32S5 + C32S6 + C32S7 + 
     X    C32S8 + C32S9 + C32S10 + C32S11
        C32A2(I+1) = DC8
       END DO
       WRITE (6, *) '** COMPLEX * 16 **'
       WRITE (6, *) C32S1, C32S2, C32S3, C32S4, C32S5, C32S6, C32S7, 
     X   C32S8
       WRITE (6, *) C32S9, C32S10, C32S11
       WRITE (6, *) C32A2

       L1S3 = .TRUE.
       L1S5 = .TRUE.
       L1S7 = .TRUE.
       L1S8 = .FALSE.
       L1S9 = .TRUE.
       DO I=1,6,5
        L1S1 = .TRUE.
        L1S2 = .FALSE.
        LL1 = L1S3
        L1S3 = LL1
        L1S4 = L4A1(I)
        LL1 = L1S5
        L1S5 = .NOT.LL1
        L1S6 = .NOT.L1A2(I)
        LL1 = L1S7
        L1S7 = LL1 .AND. L1A2(I)
        LL1 = L1S8
        L1S8 = LL1 .OR. L1A2(I)
        LL1 = L1S9
        L1A1(I) = LL1
        L1S9 = LL1 .AND. L4A1(I)
        L1S1 = .TRUE.
        L1S2 = .FALSE.
        LL2 = L1S3
        L1S3 = LL2
        L1S4 = L4A1(I+1)
        LL2 = L1S5
        L1S5 = .NOT.LL2
        L1S6 = .NOT.L1A2(I+1)
        LL2 = L1S7
        L1S7 = LL2 .AND. L1A2(I+1)
        LL2 = L1S8
        L1S8 = LL2 .OR. L1A2(I+1)
        LL2 = L1S9
        L1A1(I+1) = LL2
        L1S9 = LL2 .AND. L4A1(I+1)
        L1S1 = .TRUE.
        L1S2 = .FALSE.
        LL3 = L1S3
        L1S3 = LL3
        L1S4 = L4A1(I+2)
        LL3 = L1S5
        L1S5 = .NOT.LL3
        L1S6 = .NOT.L1A2(I+2)
        LL3 = L1S7
        L1S7 = LL3 .AND. L1A2(I+2)
        LL3 = L1S8
        L1S8 = LL3 .OR. L1A2(I+2)
        LL3 = L1S9
        L1A1(I+2) = LL3
        L1S9 = LL3 .AND. L4A1(I+2)
        L1S1 = .TRUE.
        L1S2 = .FALSE.
        LL4 = L1S3
        L1S3 = LL4
        L1S4 = L4A1(I+3)
        LL4 = L1S5
        L1S5 = .NOT.LL4
        L1S6 = .NOT.L1A2(I+3)
        LL4 = L1S7
        L1S7 = LL4 .AND. L1A2(I+3)
        LL4 = L1S8
        L1S8 = LL4 .OR. L1A2(I+3)
        LL4 = L1S9
        L1A1(I+3) = LL4
        L1S9 = LL4 .AND. L4A1(I+3)
        L1S1 = .TRUE.
        L1S2 = .FALSE.
        LL5 = L1S3
        L1S3 = LL5
        L1S4 = L4A1(I+4)
        LL5 = L1S5
        L1S5 = .NOT.LL5
        L1S6 = .NOT.L1A2(I+4)
        LL5 = L1S7
        L1S7 = LL5 .AND. L1A2(I+4)
        LL5 = L1S8
        L1S8 = LL5 .OR. L1A2(I+4)
        LL5 = L1S9
        L1A1(I+4) = LL5
        L1S9 = LL5 .AND. L4A1(I+4)
       END DO
       WRITE (6, *) '** LOGICAL * 1 **'
       WRITE (6, *) L1S1, L1S2, L1S3, L1S4, L1S5, L1S6, L1S7, L1S8, L1S9
       WRITE (6, *) L1A2

       L4S3 = .TRUE.
       L4S5 = .TRUE.
       L4S7 = .TRUE.
       L4S8 = .FALSE.
       L4S9 = .TRUE.
       DO I=1,6,5
        L4S1 = .TRUE.
        L4S2 = .FALSE.
        LL6 = L4S3
        L4S3 = LL6
        L4S4 = L1A1(I)
        LL6 = L4S5
        L4S5 = .NOT.LL6
        L4S6 = .NOT.L4A2(I)
        LL6 = L4S7
        L4S7 = LL6 .AND. L4A2(I)
        LL6 = L4S8
        L4S8 = LL6 .OR. L4A2(I)
        LL6 = L4S9
        L4S9 = LL6 .AND. L1A1(I)
        L4S10 = I4A1(I) .GT. 1
        L4S11 = INT (I2A1(I), KIND = 4) .GT. 1
        L4S1 = .TRUE.
        L4S2 = .FALSE.
        LL7 = L4S3
        L4S3 = LL7
        L4S4 = L1A1(I+1)
        LL7 = L4S5
        L4S5 = .NOT.LL7
        L4S6 = .NOT.L4A2(I+1)
        LL7 = L4S7
        L4S7 = LL7 .AND. L4A2(I+1)
        LL7 = L4S8
        L4S8 = LL7 .OR. L4A2(I+1)
        LL7 = L4S9
        L4S9 = LL7 .AND. L1A1(I+1)
        L4S10 = I4A1(I+1) .GT. 1
        L4S11 = INT (I2A1(I+1), KIND = 4) .GT. 1
        L4S1 = .TRUE.
        L4S2 = .FALSE.
        LL8 = L4S3
        L4S3 = LL8
        L4S4 = L1A1(I+2)
        LL8 = L4S5
        L4S5 = .NOT.LL8
        L4S6 = .NOT.L4A2(I+2)
        LL8 = L4S7
        L4S7 = LL8 .AND. L4A2(I+2)
        LL8 = L4S8
        L4S8 = LL8 .OR. L4A2(I+2)
        LL8 = L4S9
        L4S9 = LL8 .AND. L1A1(I+2)
        L4S10 = I4A1(I+2) .GT. 1
        L4S11 = INT (I2A1(I+2), KIND = 4) .GT. 1
        L4S1 = .TRUE.
        L4S2 = .FALSE.
        LL9 = L4S3
        L4S3 = LL9
        L4S4 = L1A1(I+3)
        LL9 = L4S5
        L4S5 = .NOT.LL9
        L4S6 = .NOT.L4A2(I+3)
        LL9 = L4S7
        L4S7 = LL9 .AND. L4A2(I+3)
        LL9 = L4S8
        L4S8 = LL9 .OR. L4A2(I+3)
        LL9 = L4S9
        L4S9 = LL9 .AND. L1A1(I+3)
        L4S10 = I4A1(I+3) .GT. 1
        L4S11 = INT (I2A1(I+3), KIND = 4) .GT. 1
        L4S1 = .TRUE.
        L4S2 = .FALSE.
        LL10 = L4S3
        L4S3 = LL10
        L4S4 = L1A1(I+4)
        LL10 = L4S5
        L4S5 = .NOT.LL10
        L4S6 = .NOT.L4A2(I+4)
        LL10 = L4S7
        L4S7 = LL10 .AND. L4A2(I+4)
        LL10 = L4S8
        L4S8 = LL10 .OR. L4A2(I+4)
        LL10 = L4S9
        L4S9 = LL10 .AND. L1A1(I+4)
        L4S10 = I4A1(I+4) .GT. 1
        L4S11 = INT (I2A1(I+4), KIND = 4) .GT. 1
       END DO
       WRITE (6, *) '**LOGICAL * 4 **'
       WRITE (6, *) L4S1, L4S2, L4S3, L4S4, L4S5, L4S6, L4S7, L4S8, L4S9
       WRITE (6, *) L4S10, L4S11, .FALSE.

       STOP 
      END
