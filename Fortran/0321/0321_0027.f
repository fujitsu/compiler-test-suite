      INTEGER*4     K1,K2,K3,K4,K5,CNT(50),ANS(50)
      COMPLEX*8     C1,C2,C3,C4,C5
      K1       =    520
      K2       =   -350
      K3       =     40
      K4       =     20
      K5       =     -5
      K6       =      2
      C1       =    (1.0,-1.0)
      C2       =    (-1.0,1.0)
      C3       =   -(2.0,0.0)
      C4       =    (0.0,2.0)
      C5       =    (4.0,2.5)
      ANS(1)   =    (2.0,3.0)+32768
      ANS(2)   =    (5.0,3.0)-32768
      ANS(3)   =    (4.0,2.0)*32768
      ANS(4)   =    (65536.0,32768.0)/32768
      ANS(5)   =    C1+K6
      ANS(6)   =    C2-K5
      ANS(7)   =    C3*K4
      ANS(8)   =    C4/K3
      ANS(9)   =    (C1+K6)
      ANS(10)  =    (C2-(-K5))
      ANS(11)  =    (-C3*K4)
      ANS(12)  =    -((-C4)/(-K3))
      ANS(13)  =    C5+32768
      ANS(14)  =    C4-32768
      ANS(15)  =    (4.0,2.0)*K2
      ANS(16)  =    (5.0,2.0)/K6
      ANS(17)  =    (C1+(-32769))
      ANS(18)  =   -((2.0,1.0)-(-K5))
      ANS(19)  =    -(-C3*(-32768))
      ANS(20)  =    -((10.0,2.0)/K5)
      ANS(21)  =    C1+(K4+K5)
      ANS(22)  =    C2-(K4+K3)
      ANS(23)  =    C4*(K2+K1)
      ANS(24)  =    C5/(K5+K6)
      ANS(25)  =    (C1+C2)+K1
      ANS(26)  =    (C2+C3)-K2
      ANS(27)  =    (C3+C4)*K3
      ANS(28)  =    (C4+C5)/K6
      ANS(29)  =    C1+(K4+32768)
      ANS(30)  =    C2-(32768+K4)
      ANS(31)  =    C4*(32768+(-K1))
      ANS(32)  =    -(20.0,5.0)/((-K5)+K6)
      ANS(33)  =    C1+(-(31.0,-20.0))+K1
      ANS(34)  =    (-C2+C3)-32769
      ANS(35)  =    ((-10.0,5.0)+C4)*K3
      ANS(36)  =   -((-C4)+(-C5))/(-K6)
      ANS(37)  =    (C1+C2)+(K4+K5)
      ANS(38)  =    (C2+C3)-(K4+K3)
      ANS(39)  =    (C3+C4)*(K2+K1)
      ANS(40)  =    (C5+C4)/(K5+K6)
      ANS(41)  =    (C1+(21.0,5.0))+(K4+32768)
      ANS(42)  =    ((2.0,1.0)+C3)-((-K4)+(-K3))
      ANS(43)  =    (C3+(5.0,4.0))*(32769+(-K1))
      ANS(44)  =    (C4+K6)**K6
      ANS(45)  =    (C4+K6)**0
      ANS(46)  =    (C4+K6)**1
      ANS(47)  =    (C4+K6)**2
      ANS(48)  =    (C4+K6)**3
      ANS(49)  =    (C4+K6)**4
      ANS(50)  =    (C4+K6)**5
      CNT(1)   =    32770
      CNT(2)   =   -32763
      CNT(3)   =   131072
      CNT(4)   =        2
      CNT(5)   =        3
      CNT(6)   =        4
      CNT(7)   =      -40
      CNT(8)   =        0
      CNT(9)   =        3
      CNT(10)  =       -6
      CNT(11)  =       40
      CNT(12)  =        0
      CNT(13)  =    32772
      CNT(14)  =   -32768
      CNT(15)  =    -1400
      CNT(16)  =        2
      CNT(17)  =   -32768
      CNT(18)  =        3
      CNT(19)  =    65536
      CNT(20)  =        2
      CNT(21)  =       16
      CNT(22)  =      -61
      CNT(23)  =        0
      CNT(24)  =       -1
      CNT(25)  =      520
      CNT(26)  =      347
      CNT(27)  =      -80
      CNT(28)  =        2
      CNT(29)  =    32789
      CNT(30)  =    -32789
      CNT(31)  =        0
      CNT(32)  =      -2
      CNT(33)  =      490
      CNT(34)  =   -32770
      CNT(35)  =     -400
      CNT(36)  =       -2
      CNT(37)  =       15
      CNT(38)  =      -63
      CNT(39)  =     -340
      CNT(40)  =       -1
      CNT(41)  =    32810
      CNT(42)  =       60
      CNT(43)  =    96747
      CNT(44)  =        0
      CNT(45)  =        1
      CNT(46)  =       2
      CNT(47)  =        0
      CNT(48)  =      -16
      CNT(49)  =      -64
      CNT(50)  =     -128
      IPSW     =    0
      DO  2  I =    1,50
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1)   GO TO 2
      IF (IPSW.NE.0)     GO TO    1
      WRITE(6,100)
      IPSW     =    1
    1 WRITE(6,101)  I,CNT(I),ANS(I)
    2 CONTINUE
      IF (IPSW.NE.0)     GO TO    3
      WRITE(6,102)
      STOP
    3 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,47H* TEST OF EXSPRESSION ( INTEGER*4 = COMPLEX*8 ,,
     *    14H INTEGER*4 ) *//1H0,21X,15HCONSTANT VALUE.,
     *    12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0420)
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0420 ***)
      END
