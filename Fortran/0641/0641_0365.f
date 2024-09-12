      PROGRAM MAIN
       INTEGER*2 I2S1(20), I2A1(10), I2A2(10)
       INTEGER*4 I4S1(20), I4A1(10), I4A2(10)
       REAL*4 R4S1(20), R4A1(10), R4A2(10)
       REAL*8 R8S1(20), R8A1(10), R8A2(10)
       REAL*8 R16S1(20), R16A1(10), R16A2(10)
       COMPLEX*8 C8S1(20), C8A1(10), C8A2(10)
       COMPLEX*16 C16S1(20), C16A1(10), C16A2(10)
       COMPLEX*16 C32S1(20), C32A1(10), C32A2(10)
       LOGICAL*1 L1S1(20), L1A1(10), L1A2(10)
       LOGICAL*4 L4S1(20), L4A1(10), L4A2(10)
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
       INTEGER*2 HI7, HI6, HI5, HI4, HI3, HI2, HI1
       INTEGER II18, II17, II16, II15, II14, II13, II12, II11, II10, II9
     X   , II8, II7, II6, II5, II4, II3, II2, II1, I1, AA11
       REAL RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL*1 LL9, LL8, LL7, LL6, LL5, LL4, LL3, LL2, LL1
       LOGICAL LL19, LL18, LL17, LL16, LL15, LL14, LL13, LL12, LL11, 
     X   LL10
       COMPLEX CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2, CC1
       COMPLEX*16 DC21, DC20, DC19, DC18, DC17, DC16, DC15, DC14, DC13, 
     X   DC12, DC11, DC10, DC9, DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

       DO AA11=1,17,4
        L1S1(AA11) = .FALSE.
        L1S1(AA11+1) = .FALSE.
        L1S1(AA11+2) = .FALSE.
        L1S1(AA11+3) = .FALSE.
        L4S1(AA11) = .FALSE.
        L4S1(AA11+1) = .FALSE.
        L4S1(AA11+2) = .FALSE.
        L4S1(AA11+3) = .FALSE.
       END DO

C$OMP PARALLEL SHARED (I2S1,I2A1,I4A1,R4A1,I2A2) PRIVATE (HI1,HI2,HI3,
C$OMP& HI4,HI5,HI6,HI7,II1,I1)
C$OMP DO 
       DO II1=0,6
        GO TO (119, 120, 121, 122, 123, 124), II1
        DO I1=1,10
         HI1 = 0
        END DO
        I2S1(1) = HI1
C$OMP FLUSH
        GO TO 125

  119   DO I1=1,6,5
         HI2 = I2A1(I1)
         HI2 = I2A1(I1+1)
         HI2 = I2A1(I1+2)
         HI2 = I2A1(I1+3)
         HI2 = I2A1(I1+4)
        END DO
        I2S1(2) = HI2
C$OMP FLUSH
        GO TO 125

  120   DO I1=1,6,5
         HI3 = I4A1(I1)
         HI3 = R4A1(I1)
         HI3 = I4A1(I1+1)
         HI3 = R4A1(I1+1)
         HI3 = I4A1(I1+2)
         HI3 = R4A1(I1+2)
         HI3 = I4A1(I1+3)
         HI3 = R4A1(I1+3)
         HI3 = I4A1(I1+4)
         HI3 = R4A1(I1+4)
        END DO
        I2S1(3) = HI3
C$OMP FLUSH
        GO TO 125

  121   DO I1=1,6,5
         HI4 = I2A1(I1) + I2A2(I1)
         HI4 = I2A1(I1+1) + I2A2(I1+1)
         HI4 = I2A1(I1+2) + I2A2(I1+2)
         HI4 = I2A1(I1+3) + I2A2(I1+3)
         HI4 = I2A1(I1+4) + I2A2(I1+4)
        END DO
        I2S1(4) = HI4
C$OMP FLUSH
        GO TO 125

  122   DO I1=1,6,5
         HI5 = I2A1(I1) + I4A1(I1)
         HI5 = I2A1(I1+1) + I4A1(I1+1)
         HI5 = I2A1(I1+2) + I4A1(I1+2)
         HI5 = I2A1(I1+3) + I4A1(I1+3)
         HI5 = I2A1(I1+4) + I4A1(I1+4)
        END DO
        I2S1(5) = HI5
C$OMP FLUSH
        GO TO 125

  123   DO I1=1,6,5
         HI6 = I2A1(I1) + R4A1(I1)
         HI6 = I2A1(I1+1) + R4A1(I1+1)
         HI6 = I2A1(I1+2) + R4A1(I1+2)
         HI6 = I2A1(I1+3) + R4A1(I1+3)
         HI6 = I2A1(I1+4) + R4A1(I1+4)
        END DO
        I2S1(6) = HI6
C$OMP FLUSH
        GO TO 125

  124   DO I1=1,6,5
         HI7 = I2A1(I1) + 9
         HI7 = I2A1(I1+1) + 9
         HI7 = I2A1(I1+2) + 9
         HI7 = I2A1(I1+3) + 9
         HI7 = I2A1(I1+4) + 9
        END DO
        I2S1(7) = HI7
C$OMP FLUSH
  125   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** INTEGER * 2 **'
       WRITE (6, *) (I2S1(I), I=1,7)
   11  FORMAT(5(1X,F14.7))

C$OMP PARALLEL SHARED (I4S1,I4A1,I2A1,R4A1,R8A1,I4A2) PRIVATE (II11,II12
C$OMP& ,II13,II14,II15,II16,II17,II18,II2,I1)
C$OMP DO 
       DO II2=0,7
        GO TO (126, 127, 128, 129, 130, 131, 132), II2
        DO I1=1,10
         II11 = 1
        END DO
        I4S1(1) = II11
C$OMP FLUSH
        GO TO 133

  126   DO I1=1,6,5
         II12 = I4A1(I1)
         II12 = I4A1(I1+1)
         II12 = I4A1(I1+2)
         II12 = I4A1(I1+3)
         II12 = I4A1(I1+4)
        END DO
        I4S1(2) = II12
C$OMP FLUSH
        GO TO 133

  127   DO I1=1,6,5
         II13 = I2A1(I1)
         II13 = I2A1(I1+1)
         II13 = I2A1(I1+2)
         II13 = I2A1(I1+3)
         II13 = I2A1(I1+4)
        END DO
        I4S1(3) = II13
C$OMP FLUSH
        GO TO 133

  128   DO I1=1,6,5
         II14 = R4A1(I1)
         II14 = R4A1(I1+1)
         II14 = R4A1(I1+2)
         II14 = R4A1(I1+3)
         II14 = R4A1(I1+4)
        END DO
        I4S1(4) = II14
C$OMP FLUSH
        GO TO 133

  129   DO I1=1,6,5
         II15 = R8A1(I1)
         II15 = R8A1(I1+1)
         II15 = R8A1(I1+2)
         II15 = R8A1(I1+3)
         II15 = R8A1(I1+4)
        END DO
        I4S1(5) = II15
C$OMP FLUSH
        GO TO 133

  130   DO I1=1,6,5
         II16 = I4A1(I1) + I4A2(I1)
         II16 = I4A1(I1+1) + I4A2(I1+1)
         II16 = I4A1(I1+2) + I4A2(I1+2)
         II16 = I4A1(I1+3) + I4A2(I1+3)
         II16 = I4A1(I1+4) + I4A2(I1+4)
        END DO
        I4S1(6) = II16
C$OMP FLUSH
        GO TO 133

  131   DO I1=1,6,5
         II17 = I4A1(I1) + 2
         II17 = I4A1(I1+1) + 2
         II17 = I4A1(I1+2) + 2
         II17 = I4A1(I1+3) + 2
         II17 = I4A1(I1+4) + 2
        END DO
        I4S1(7) = II17
C$OMP FLUSH
        GO TO 133

  132   DO I1=1,6,5
         II18 = I4A1(I1) + R4A1(I1)
         II18 = I4A1(I1+1) + R4A1(I1+1)
         II18 = I4A1(I1+2) + R4A1(I1+2)
         II18 = I4A1(I1+3) + R4A1(I1+3)
         II18 = I4A1(I1+4) + R4A1(I1+4)
        END DO
        I4S1(8) = II18
C$OMP FLUSH
  133   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** INTEGER * 4 **'
       WRITE (6, 1101) (I4S1(I), I=1,8)
 1101  FORMAT(5(1X,I14))

C$OMP PARALLEL SHARED (R4S1,R4A1,I4A1,R8A1,I2A1,R4A2) PRIVATE (RR1,RR2,
C$OMP& RR3,RR4,RR5,RR6,RR7,RR8,RR9,II3,I1)
C$OMP DO 
       DO II3=0,8
        GO TO (134, 135, 136, 137, 138, 139, 140, 141), II3
        DO I1=1,10
         RR1 = 3.
        END DO
        R4S1(1) = RR1
C$OMP FLUSH
        GO TO 142

  134   DO I1=1,6,5
         RR2 = R4A1(I1)
         RR2 = R4A1(I1+1)
         RR2 = R4A1(I1+2)
         RR2 = R4A1(I1+3)
         RR2 = R4A1(I1+4)
        END DO
        R4S1(2) = RR2
C$OMP FLUSH
        GO TO 142

  135   DO I1=1,6,5
         RR3 = I4A1(I1)
         RR3 = I4A1(I1+1)
         RR3 = I4A1(I1+2)
         RR3 = I4A1(I1+3)
         RR3 = I4A1(I1+4)
        END DO
        R4S1(3) = RR3
C$OMP FLUSH
        GO TO 142

  136   DO I1=1,6,5
         RR4 = R8A1(I1)
         RR4 = R8A1(I1+1)
         RR4 = R8A1(I1+2)
         RR4 = R8A1(I1+3)
         RR4 = R8A1(I1+4)
        END DO
        R4S1(4) = RR4
C$OMP FLUSH
        GO TO 142

  137   DO I1=1,6,5
         RR5 = I2A1(I1)
         RR5 = I2A1(I1+1)
         RR5 = I2A1(I1+2)
         RR5 = I2A1(I1+3)
         RR5 = I2A1(I1+4)
        END DO
        R4S1(5) = RR5
C$OMP FLUSH
        GO TO 142

  138   DO I1=1,6,5
         RR6 = 1. + R4A1(I1)
         RR6 = 1. + R4A1(I1+1)
         RR6 = 1. + R4A1(I1+2)
         RR6 = 1. + R4A1(I1+3)
         RR6 = 1. + R4A1(I1+4)
        END DO
        R4S1(6) = RR6
C$OMP FLUSH
        GO TO 142

  139   DO I1=1,6,5
         RR7 = R4A1(I1) + R4A2(I1)
         RR7 = R4A1(I1+1) + R4A2(I1+1)
         RR7 = R4A1(I1+2) + R4A2(I1+2)
         RR7 = R4A1(I1+3) + R4A2(I1+3)
         RR7 = R4A1(I1+4) + R4A2(I1+4)
        END DO
        R4S1(7) = RR7
C$OMP FLUSH
        GO TO 142

  140   DO I1=1,6,5
         RR8 = R4A1(I1) + R8A1(I1)
         RR8 = R4A1(I1+1) + R8A1(I1+1)
         RR8 = R4A1(I1+2) + R8A1(I1+2)
         RR8 = R4A1(I1+3) + R8A1(I1+3)
         RR8 = R4A1(I1+4) + R8A1(I1+4)
        END DO
        R4S1(8) = RR8
C$OMP FLUSH
        GO TO 142

  141   DO I1=1,6,5
         RR9 = R4A1(I1) + I4A1(I1)
         RR9 = R4A1(I1+1) + I4A1(I1+1)
         RR9 = R4A1(I1+2) + I4A1(I1+2)
         RR9 = R4A1(I1+3) + I4A1(I1+3)
         RR9 = R4A1(I1+4) + I4A1(I1+4)
        END DO
        R4S1(9) = RR9
C$OMP FLUSH
  142   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** REAL * 4 **'
       WRITE (6, 11) (R4S1(I), I=1,8)

C$OMP PARALLEL SHARED (R8S1,R8A1,R4A1,I4A1,C8A1,R8A2) PRIVATE (DD1,DD2,
C$OMP& DD3,DD4,DD5,DD6,DD7,DD8,DD9,II4,I1)
C$OMP DO 
       DO II4=0,8
        GO TO (143, 144, 145, 146, 147, 148, 149, 150), II4
        DO I1=1,10
         DD1 = 4D0
        END DO
        R8S1(1) = DD1
C$OMP FLUSH
        GO TO 151

  143   DO I1=1,6,5
         DD2 = R8A1(I1)
         DD2 = R8A1(I1+1)
         DD2 = R8A1(I1+2)
         DD2 = R8A1(I1+3)
         DD2 = R8A1(I1+4)
        END DO
        R8S1(2) = DD2
C$OMP FLUSH
        GO TO 151

  144   DO I1=1,6,5
         DD3 = R4A1(I1)
         DD3 = R4A1(I1+1)
         DD3 = R4A1(I1+2)
         DD3 = R4A1(I1+3)
         DD3 = R4A1(I1+4)
        END DO
        R8S1(3) = DD3
C$OMP FLUSH
        GO TO 151

  145   DO I1=1,6,5
         DD4 = I4A1(I1)
         DD4 = I4A1(I1+1)
         DD4 = I4A1(I1+2)
         DD4 = I4A1(I1+3)
         DD4 = I4A1(I1+4)
        END DO
        R8S1(4) = DD4
C$OMP FLUSH
        GO TO 151

  146   DO I1=1,6,5
         DD5 = C8A1(I1)
         DD5 = C8A1(I1+1)
         DD5 = C8A1(I1+2)
         DD5 = C8A1(I1+3)
         DD5 = C8A1(I1+4)
        END DO
        R8S1(5) = DD5
C$OMP FLUSH
        GO TO 151

  147   DO I1=1,6,5
         DD6 = R8A1(I1) + R8A2(I1)
         DD6 = R8A1(I1+1) + R8A2(I1+1)
         DD6 = R8A1(I1+2) + R8A2(I1+2)
         DD6 = R8A1(I1+3) + R8A2(I1+3)
         DD6 = R8A1(I1+4) + R8A2(I1+4)
        END DO
        R8S1(6) = DD6
C$OMP FLUSH
        GO TO 151

  148   DO I1=1,6,5
         DD7 = 4. + R8A1(I1)
         DD7 = 4. + R8A1(I1+1)
         DD7 = 4. + R8A1(I1+2)
         DD7 = 4. + R8A1(I1+3)
         DD7 = 4. + R8A1(I1+4)
        END DO
        R8S1(7) = DD7
C$OMP FLUSH
        GO TO 151

  149   DO I1=1,6,5
         DD8 = R4A1(I1) + I4A1(I1)
         DD8 = R4A1(I1+1) + I4A1(I1+1)
         DD8 = R4A1(I1+2) + I4A1(I1+2)
         DD8 = R4A1(I1+3) + I4A1(I1+3)
         DD8 = R4A1(I1+4) + I4A1(I1+4)
        END DO
        R8S1(8) = DD8
C$OMP FLUSH
        GO TO 151

  150   DO I1=1,6,5
         DD9 = R8A1(I1) + R4A1(I1)
         DD9 = R8A1(I1+1) + R4A1(I1+1)
         DD9 = R8A1(I1+2) + R4A1(I1+2)
         DD9 = R8A1(I1+3) + R4A1(I1+3)
         DD9 = R8A1(I1+4) + R4A1(I1+4)
        END DO
        R8S1(9) = DD9
C$OMP FLUSH
  151   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** REAL * 8 **'
       WRITE (6, 11) (R8S1(I), I=1,9)

C$OMP PARALLEL SHARED (R16S1,R16A1,R8A1,R4A1,I4A1,C8A1,C16A1,R16A2) 
C$OMP& PRIVATE (DD10,DD11,DD12,DD13,DD14,DD15,DD16,DD17,DD18,DD19,DD20,
C$OMP& II5,I1)
C$OMP DO 
       DO II5=0,10
        GO TO (152, 153, 154, 155, 156, 157, 158, 159, 160, 161), II5
        DO I1=1,10
         DD10 = 5D0
        END DO
        R16S1(1) = DD10
C$OMP FLUSH
        GO TO 162

  152   DO I1=1,6,5
         DD11 = R16A1(I1)
         DD11 = R16A1(I1+1)
         DD11 = R16A1(I1+2)
         DD11 = R16A1(I1+3)
         DD11 = R16A1(I1+4)
        END DO
        R16S1(2) = DD11
C$OMP FLUSH
        GO TO 162

  153   DO I1=1,6,5
         DD12 = R8A1(I1)
         DD12 = R8A1(I1+1)
         DD12 = R8A1(I1+2)
         DD12 = R8A1(I1+3)
         DD12 = R8A1(I1+4)
        END DO
        R16S1(3) = DD12
C$OMP FLUSH
        GO TO 162

  154   DO I1=1,6,5
         DD13 = R4A1(I1)
         DD13 = R4A1(I1+1)
         DD13 = R4A1(I1+2)
         DD13 = R4A1(I1+3)
         DD13 = R4A1(I1+4)
        END DO
        R16S1(4) = DD13
C$OMP FLUSH
        GO TO 162

  155   DO I1=1,6,5
         DD14 = I4A1(I1)
         DD14 = I4A1(I1+1)
         DD14 = I4A1(I1+2)
         DD14 = I4A1(I1+3)
         DD14 = I4A1(I1+4)
        END DO
        R16S1(5) = DD14
C$OMP FLUSH
        GO TO 162

  156   DO I1=1,6,5
         DD15 = C8A1(I1)
         DD15 = C8A1(I1+1)
         DD15 = C8A1(I1+2)
         DD15 = C8A1(I1+3)
         DD15 = C8A1(I1+4)
        END DO
        R16S1(6) = DD15
C$OMP FLUSH
        GO TO 162

  157   DO I1=1,6,5
         DD16 = C16A1(I1)
         DD16 = C16A1(I1+1)
         DD16 = C16A1(I1+2)
         DD16 = C16A1(I1+3)
         DD16 = C16A1(I1+4)
        END DO
        R16S1(7) = DD16
C$OMP FLUSH
        GO TO 162

  158   DO I1=1,6,5
         DD17 = R16A1(I1) + R16A2(I1)
         DD17 = R16A1(I1+1) + R16A2(I1+1)
         DD17 = R16A1(I1+2) + R16A2(I1+2)
         DD17 = R16A1(I1+3) + R16A2(I1+3)
         DD17 = R16A1(I1+4) + R16A2(I1+4)
        END DO
        R16S1(8) = DD17
C$OMP FLUSH
        GO TO 162

  159   DO I1=1,6,5
         DD18 = 5. + R16A1(I1)
         DD18 = 5. + R16A1(I1+1)
         DD18 = 5. + R16A1(I1+2)
         DD18 = 5. + R16A1(I1+3)
         DD18 = 5. + R16A1(I1+4)
        END DO
        R16S1(9) = DD18
C$OMP FLUSH
        GO TO 162

  160   DO I1=1,6,5
         DD19 = R8A1(I1) + R16A1(I1)
         DD19 = R8A1(I1+1) + R16A1(I1+1)
         DD19 = R8A1(I1+2) + R16A1(I1+2)
         DD19 = R8A1(I1+3) + R16A1(I1+3)
         DD19 = R8A1(I1+4) + R16A1(I1+4)
        END DO
        R16S1(10) = DD19
C$OMP FLUSH
        GO TO 162

  161   DO I1=1,6,5
         DD20 = R4A1(I1) + R16A1(I1)
         DD20 = R4A1(I1+1) + R16A1(I1+1)
         DD20 = R4A1(I1+2) + R16A1(I1+2)
         DD20 = R4A1(I1+3) + R16A1(I1+3)
         DD20 = R4A1(I1+4) + R16A1(I1+4)
        END DO
        R16S1(11) = DD20
C$OMP FLUSH
  162   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** REAL * 8  **'
       WRITE (6, 11) (R16S1(I), I=1,11)

C$OMP PARALLEL SHARED (C8S1,C8A1,I4A1,R4A1,R8A1,R16A1,C16A1,C32A1,C8A2) 
C$OMP& PRIVATE (CC1,CC2,CC3,CC4,CC5,CC6,CC7,CC8,CC9,CC10,II6,I1)
C$OMP DO 
       DO II6=0,9
        GO TO (163, 164, 165, 166, 167, 168, 169, 170, 171), II6
        DO I1=1,10
         CC1 = (6., 0.)
        END DO
        C8S1(1) = CC1
C$OMP FLUSH
        GO TO 172

  163   DO I1=1,6,5
         CC2 = C8A1(I1)
         CC2 = C8A1(I1+1)
         CC2 = C8A1(I1+2)
         CC2 = C8A1(I1+3)
         CC2 = C8A1(I1+4)
        END DO
        C8S1(2) = CC2
C$OMP FLUSH
        GO TO 172

  164   DO I1=1,6,5
         CC3 = I4A1(I1)
         CC3 = I4A1(I1+1)
         CC3 = I4A1(I1+2)
         CC3 = I4A1(I1+3)
         CC3 = I4A1(I1+4)
        END DO
        C8S1(3) = CC3
C$OMP FLUSH
        GO TO 172

  165   DO I1=1,6,5
         CC4 = R4A1(I1)
         CC4 = R4A1(I1+1)
         CC4 = R4A1(I1+2)
         CC4 = R4A1(I1+3)
         CC4 = R4A1(I1+4)
        END DO
        C8S1(4) = CC4
C$OMP FLUSH
        GO TO 172

  166   DO I1=1,6,5
         CC5 = R8A1(I1)
         CC5 = R8A1(I1+1)
         CC5 = R8A1(I1+2)
         CC5 = R8A1(I1+3)
         CC5 = R8A1(I1+4)
        END DO
        C8S1(5) = CC5
C$OMP FLUSH
        GO TO 172

  167   DO I1=1,6,5
         CC6 = R16A1(I1)
         CC6 = R16A1(I1+1)
         CC6 = R16A1(I1+2)
         CC6 = R16A1(I1+3)
         CC6 = R16A1(I1+4)
        END DO
        C8S1(6) = CC6
C$OMP FLUSH
        GO TO 172

  168   DO I1=1,6,5
         CC7 = C16A1(I1)
         CC7 = C16A1(I1+1)
         CC7 = C16A1(I1+2)
         CC7 = C16A1(I1+3)
         CC7 = C16A1(I1+4)
        END DO
        C8S1(7) = CC7
C$OMP FLUSH
        GO TO 172

  169   DO I1=1,6,5
         CC8 = C32A1(I1)
         CC8 = C32A1(I1+1)
         CC8 = C32A1(I1+2)
         CC8 = C32A1(I1+3)
         CC8 = C32A1(I1+4)
        END DO
        C8S1(8) = CC8
C$OMP FLUSH
        GO TO 172

  170   DO I1=1,6,5
         CC9 = C8A1(I1) + C8A2(I1)
         CC9 = C8A1(I1+1) + C8A2(I1+1)
         CC9 = C8A1(I1+2) + C8A2(I1+2)
         CC9 = C8A1(I1+3) + C8A2(I1+3)
         CC9 = C8A1(I1+4) + C8A2(I1+4)
        END DO
        C8S1(9) = CC9
C$OMP FLUSH
        GO TO 172

  171   DO I1=1,6,5
         CC10 = 6. + C8A1(I1)
         CC10 = 6. + C8A1(I1+1)
         CC10 = 6. + C8A1(I1+2)
         CC10 = 6. + C8A1(I1+3)
         CC10 = 6. + C8A1(I1+4)
        END DO
        C8S1(10) = CC10
C$OMP FLUSH
  172   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** COMPLEX * 8 **'
       WRITE (6, 11) (C8S1(I), I=1,10)

C$OMP PARALLEL SHARED (C16S1,C16A1,I4A1,R4A1,R8A1,R16A1,C8A1,C32A1,C16A2
C$OMP& ) PRIVATE (DC1,DC2,DC3,DC4,DC5,DC6,DC7,DC8,DC9,DC10,II7,I1)
C$OMP DO 
       DO II7=0,9
        GO TO (173, 174, 175, 176, 177, 178, 179, 180, 181), II7
        DO I1=1,10
         DC1 = 7.
        END DO
        C16S1(1) = DC1
C$OMP FLUSH
        GO TO 182

  173   DO I1=1,6,5
         DC2 = C16A1(I1)
         DC2 = C16A1(I1+1)
         DC2 = C16A1(I1+2)
         DC2 = C16A1(I1+3)
         DC2 = C16A1(I1+4)
        END DO
        C16S1(2) = DC2
C$OMP FLUSH
        GO TO 182

  174   DO I1=1,6,5
         DC3 = I4A1(I1)
         DC3 = I4A1(I1+1)
         DC3 = I4A1(I1+2)
         DC3 = I4A1(I1+3)
         DC3 = I4A1(I1+4)
        END DO
        C16S1(3) = DC3
C$OMP FLUSH
        GO TO 182

  175   DO I1=1,6,5
         DC4 = R4A1(I1)
         DC4 = R4A1(I1+1)
         DC4 = R4A1(I1+2)
         DC4 = R4A1(I1+3)
         DC4 = R4A1(I1+4)
        END DO
        C16S1(4) = DC4
C$OMP FLUSH
        GO TO 182

  176   DO I1=1,6,5
         DC5 = R8A1(I1)
         DC5 = R8A1(I1+1)
         DC5 = R8A1(I1+2)
         DC5 = R8A1(I1+3)
         DC5 = R8A1(I1+4)
        END DO
        C16S1(5) = DC5
C$OMP FLUSH
        GO TO 182

  177   DO I1=1,6,5
         DC6 = R16A1(I1)
         DC6 = R16A1(I1+1)
         DC6 = R16A1(I1+2)
         DC6 = R16A1(I1+3)
         DC6 = R16A1(I1+4)
        END DO
        C16S1(6) = DC6
C$OMP FLUSH
        GO TO 182

  178   DO I1=1,6,5
         DC7 = C8A1(I1)
         DC7 = C8A1(I1+1)
         DC7 = C8A1(I1+2)
         DC7 = C8A1(I1+3)
         DC7 = C8A1(I1+4)
        END DO
        C16S1(7) = DC7
C$OMP FLUSH
        GO TO 182

  179   DO I1=1,6,5
         DC8 = C32A1(I1)
         DC8 = C32A1(I1+1)
         DC8 = C32A1(I1+2)
         DC8 = C32A1(I1+3)
         DC8 = C32A1(I1+4)
        END DO
        C16S1(8) = DC8
C$OMP FLUSH
        GO TO 182

  180   DO I1=1,6,5
         DC9 = C16A1(I1) + C16A2(I1)
         DC9 = C16A1(I1+1) + C16A2(I1+1)
         DC9 = C16A1(I1+2) + C16A2(I1+2)
         DC9 = C16A1(I1+3) + C16A2(I1+3)
         DC9 = C16A1(I1+4) + C16A2(I1+4)
        END DO
        C16S1(9) = DC9
C$OMP FLUSH
        GO TO 182

  181   DO I1=1,6,5
         DC10 = 7. + C16A1(I1)
         DC10 = 7. + C16A1(I1+1)
         DC10 = 7. + C16A1(I1+2)
         DC10 = 7. + C16A1(I1+3)
         DC10 = 7. + C16A1(I1+4)
        END DO
        C16S1(10) = DC10
C$OMP FLUSH
  182   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** COMPLEX * 16 **'
       WRITE (6, 11) (C16S1(I), I=1,10)

C$OMP PARALLEL SHARED (C32S1,C32A1,I4A1,R4A1,R8A1,R16A1,C8A1,C16A1,C32A2
C$OMP& ) PRIVATE (DC11,DC12,DC13,DC14,DC15,DC16,DC17,DC18,DC19,DC20,DC21
C$OMP& ,II8,I1)
C$OMP DO 
       DO II8=0,10
        GO TO (183, 184, 185, 186, 187, 188, 189, 190, 191, 192), II8
        DO I1=1,10
         DC11 = 8.
        END DO
        C32S1(1) = DC11
C$OMP FLUSH
        GO TO 193

  183   DO I1=1,6,5
         DC12 = C32A1(I1)
         DC12 = C32A1(I1+1)
         DC12 = C32A1(I1+2)
         DC12 = C32A1(I1+3)
         DC12 = C32A1(I1+4)
        END DO
        C32S1(2) = DC12
C$OMP FLUSH
        GO TO 193

  184   DO I1=1,6,5
         DC13 = I4A1(I1)
         DC13 = I4A1(I1+1)
         DC13 = I4A1(I1+2)
         DC13 = I4A1(I1+3)
         DC13 = I4A1(I1+4)
        END DO
        C32S1(3) = DC13
C$OMP FLUSH
        GO TO 193

  185   DO I1=1,6,5
         DC14 = R4A1(I1)
         DC14 = R4A1(I1+1)
         DC14 = R4A1(I1+2)
         DC14 = R4A1(I1+3)
         DC14 = R4A1(I1+4)
        END DO
        C32S1(4) = DC14
C$OMP FLUSH
        GO TO 193

  186   DO I1=1,6,5
         DC15 = R8A1(I1)
         DC15 = R8A1(I1+1)
         DC15 = R8A1(I1+2)
         DC15 = R8A1(I1+3)
         DC15 = R8A1(I1+4)
        END DO
        C32S1(5) = DC15
C$OMP FLUSH
        GO TO 193

  187   DO I1=1,6,5
         DC16 = R16A1(I1)
         DC16 = R16A1(I1+1)
         DC16 = R16A1(I1+2)
         DC16 = R16A1(I1+3)
         DC16 = R16A1(I1+4)
        END DO
        C32S1(6) = DC16
C$OMP FLUSH
        GO TO 193

  188   DO I1=1,6,5
         DC17 = C8A1(I1)
         DC17 = C8A1(I1+1)
         DC17 = C8A1(I1+2)
         DC17 = C8A1(I1+3)
         DC17 = C8A1(I1+4)
        END DO
        C32S1(7) = DC17
C$OMP FLUSH
        GO TO 193

  189   DO I1=1,6,5
         DC18 = C16A1(I1)
         DC18 = C16A1(I1+1)
         DC18 = C16A1(I1+2)
         DC18 = C16A1(I1+3)
         DC18 = C16A1(I1+4)
        END DO
        C32S1(8) = DC18
C$OMP FLUSH
        GO TO 193

  190   DO I1=1,6,5
         DC19 = C32A1(I1)
         DC19 = C32A1(I1+1)
         DC19 = C32A1(I1+2)
         DC19 = C32A1(I1+3)
         DC19 = C32A1(I1+4)
        END DO
        C32S1(9) = DC19
C$OMP FLUSH
        GO TO 193

  191   DO I1=1,6,5
         DC20 = C32A1(I1) + C32A2(I1)
         DC20 = C32A1(I1+1) + C32A2(I1+1)
         DC20 = C32A1(I1+2) + C32A2(I1+2)
         DC20 = C32A1(I1+3) + C32A2(I1+3)
         DC20 = C32A1(I1+4) + C32A2(I1+4)
        END DO
        C32S1(10) = DC20
C$OMP FLUSH
        GO TO 193

  192   DO I1=1,6,5
         DC21 = 8. + C32A1(I1)
         DC21 = 8. + C32A1(I1+1)
         DC21 = 8. + C32A1(I1+2)
         DC21 = 8. + C32A1(I1+3)
         DC21 = 8. + C32A1(I1+4)
        END DO
        C32S1(11) = DC21
C$OMP FLUSH
  193   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11
       WRITE (6, *) '** COMPLEX * 16 **'
       WRITE (6, 11) (C32S1(I), I=1,11)

C$OMP PARALLEL SHARED (L1S1,L1A1,L4A1,L1A2) PRIVATE (LL1,LL2,LL3,LL4,LL5
C$OMP& ,LL6,LL7,LL8,LL9,II9,I1)
C$OMP DO 
       DO II9=0,8
        GO TO (194, 195, 196, 197, 198, 199, 200, 201), II9
        DO I1=1,10
         LL1 = .TRUE.
        END DO
        L1S1(1) = LL1
C$OMP FLUSH
        GO TO 202

  194   DO I1=1,10
         LL2 = .FALSE.
        END DO
        L1S1(2) = LL2
C$OMP FLUSH
        GO TO 202

  195   DO I1=1,6,5
         LL3 = L1A1(I1)
         LL3 = L1A1(I1+1)
         LL3 = L1A1(I1+2)
         LL3 = L1A1(I1+3)
         LL3 = L1A1(I1+4)
        END DO
        L1S1(3) = LL3
C$OMP FLUSH
        GO TO 202

  196   DO I1=1,6,5
         LL4 = L4A1(I1)
         LL4 = L4A1(I1+1)
         LL4 = L4A1(I1+2)
         LL4 = L4A1(I1+3)
         LL4 = L4A1(I1+4)
        END DO
        L1S1(4) = LL4
C$OMP FLUSH
        GO TO 202

  197   DO I1=1,6,5
         LL5 = .NOT.L1A1(I1)
         LL5 = .NOT.L1A1(I1+1)
         LL5 = .NOT.L1A1(I1+2)
         LL5 = .NOT.L1A1(I1+3)
         LL5 = .NOT.L1A1(I1+4)
        END DO
        L1S1(5) = LL5
C$OMP FLUSH
        GO TO 202

  198   DO I1=1,6,5
         LL6 = .NOT.L1A2(I1)
         LL6 = .NOT.L1A2(I1+1)
         LL6 = .NOT.L1A2(I1+2)
         LL6 = .NOT.L1A2(I1+3)
         LL6 = .NOT.L1A2(I1+4)
        END DO
        L1S1(6) = LL6
C$OMP FLUSH
        GO TO 202

  199   DO I1=1,6,5
         LL7 = L1A1(I1) .AND. L1A2(I1)
         LL7 = L1A1(I1+1) .AND. L1A2(I1+1)
         LL7 = L1A1(I1+2) .AND. L1A2(I1+2)
         LL7 = L1A1(I1+3) .AND. L1A2(I1+3)
         LL7 = L1A1(I1+4) .AND. L1A2(I1+4)
        END DO
        L1S1(7) = LL7
C$OMP FLUSH
        GO TO 202

  200   DO I1=1,6,5
         LL8 = L1A1(I1) .OR. L1A2(I1)
         LL8 = L1A1(I1+1) .OR. L1A2(I1+1)
         LL8 = L1A1(I1+2) .OR. L1A2(I1+2)
         LL8 = L1A1(I1+3) .OR. L1A2(I1+3)
         LL8 = L1A1(I1+4) .OR. L1A2(I1+4)
        END DO
        L1S1(8) = LL8
C$OMP FLUSH
        GO TO 202

  201   DO I1=1,6,5
         LL9 = L1A1(I1) .AND. L4A1(I1)
         LL9 = L1A1(I1+1) .AND. L4A1(I1+1)
         LL9 = L1A1(I1+2) .AND. L4A1(I1+2)
         LL9 = L1A1(I1+3) .AND. L4A1(I1+3)
         LL9 = L1A1(I1+4) .AND. L4A1(I1+4)
        END DO
        L1S1(9) = LL9
C$OMP FLUSH
  202   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) '** LOGICAL * 1 **'
       WRITE (6, *) L1S1

C$OMP PARALLEL SHARED (L4S1,L4A1,L1A1,L4A2,I4A1,I2A1) PRIVATE (LL10,LL11
C$OMP& ,LL12,LL13,LL14,LL15,LL16,LL17,LL18,LL19,II10,I1)
C$OMP DO 
       DO II10=0,11
        GO TO (203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213), 
     X    II10
        DO I1=1,10
         LL10 = .TRUE.
        END DO
        L4S1(1) = LL10
C$OMP FLUSH
        GO TO 214

  203   DO I1=1,10
         LL11 = .FALSE.
        END DO
        L4S1(2) = LL11
C$OMP FLUSH
        GO TO 214

  204   DO I1=1,6,5
         LL12 = L4A1(I1)
         LL12 = L4A1(I1+1)
         LL12 = L4A1(I1+2)
         LL12 = L4A1(I1+3)
         LL12 = L4A1(I1+4)
        END DO
        L4S1(3) = LL12
C$OMP FLUSH
        GO TO 214

  205   DO I1=1,6,5
         LL13 = L1A1(I1)
         LL13 = L1A1(I1+1)
         LL13 = L1A1(I1+2)
         LL13 = L1A1(I1+3)
         LL13 = L1A1(I1+4)
        END DO
        L4S1(4) = LL13
C$OMP FLUSH
        GO TO 214

  206   DO I1=1,6,5
         LL14 = .NOT.L4A1(I1)
         LL14 = .NOT.L4A1(I1+1)
         LL14 = .NOT.L4A1(I1+2)
         LL14 = .NOT.L4A1(I1+3)
         LL14 = .NOT.L4A1(I1+4)
        END DO
        L4S1(5) = LL14
C$OMP FLUSH
        GO TO 214

  207   DO I1=1,6,5
         LL15 = .NOT.L4A2(I1)
         LL15 = .NOT.L4A2(I1+1)
         LL15 = .NOT.L4A2(I1+2)
         LL15 = .NOT.L4A2(I1+3)
         LL15 = .NOT.L4A2(I1+4)
        END DO
        L4S1(6) = LL15
C$OMP FLUSH
        GO TO 214

  208   DO I1=1,6,5
         LL16 = L4A1(I1) .AND. L4A2(I1)
         LL16 = L4A1(I1+1) .AND. L4A2(I1+1)
         LL16 = L4A1(I1+2) .AND. L4A2(I1+2)
         LL16 = L4A1(I1+3) .AND. L4A2(I1+3)
         LL16 = L4A1(I1+4) .AND. L4A2(I1+4)
        END DO
        L4S1(7) = LL16
C$OMP FLUSH
        GO TO 214

  209   DO I1=1,6,5
         LL17 = L4A1(I1) .OR. L4A2(I1)
         LL17 = L4A1(I1+1) .OR. L4A2(I1+1)
         LL17 = L4A1(I1+2) .OR. L4A2(I1+2)
         LL17 = L4A1(I1+3) .OR. L4A2(I1+3)
         LL17 = L4A1(I1+4) .OR. L4A2(I1+4)
        END DO
        L4S1(8) = LL17
C$OMP FLUSH
        GO TO 214

  210   DO I1=1,6,5
         LL18 = L4A1(I1) .AND. L1A1(I1)
         LL18 = L4A1(I1+1) .AND. L1A1(I1+1)
         LL18 = L4A1(I1+2) .AND. L1A1(I1+2)
         LL18 = L4A1(I1+3) .AND. L1A1(I1+3)
         LL18 = L4A1(I1+4) .AND. L1A1(I1+4)
        END DO
        L4S1(9) = LL18
C$OMP FLUSH
        GO TO 214

  211   DO I1=1,10
         IF (I4A1(I1) .EQ. 0) THEN
          L4S1(10) = .FALSE.
         ELSE
          L4S1(10) = .TRUE.
         END IF
        END DO
C$OMP FLUSH
        GO TO 214

  212   DO I1=1,10

         IF (I2A1(I1) .EQ. 0) THEN
          L4S1(11) = .FALSE.
         ELSE
          L4S1(11) = .TRUE.
         END IF
        END DO
C$OMP FLUSH
        GO TO 214

  213   DO I1=1,10

         LL19 = .TRUE.
        END DO
        L4S1(12) = LL19
C$OMP FLUSH
  214   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) '** LOGICAL * 4 **'
       WRITE (6, *) L4S1

       STOP 
      END
