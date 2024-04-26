      INTEGER*4     K1,K2,K3,K4,K5,ANS(50),CNT(50)
      COMPLEX*16    C1,C2,C3,C4,C5
      DATA     CNT/32769, -32765, 196608, 2, 3, 49, -300, -2, 151,
     *         49, -400, 0, 350, 197, -300, -2, 150, 47, -200,  0,
     *      1,  1,    0, -2, -4,  -4,    0, 32769, 32768, -300, -12,
     *    33119, -32919, -800,  -9,  352,  196, -65536,   0,  552,
     *     -352,   -200,   -3,-151, -203,  200, 4*0/
      K1       =      350
      K2       =     -200
      K3       =      150
      K4       =      -50
      K5       =        2
      C1       =    (0.1D 01,-0.1D 01)
      C2       =    (-0.1D 01,0.1D 01)
      C3       =   -(0.2D 01,0.0D 00)
      C4       =    (0.0D 00,-0.2D 01)
      C5       =    (-0.4D 01,-0.2D 01)
      ANS (1)       =    (0.1D 01,-0.1D 01)+32768
      ANS (2)       =    (0.4D 01,0.2D 01)-32769
      ANS (3)       =    (0.6D 01,0.2D 01)*32768
      ANS (4)       =    (0.65532D 05,0.4D 02)/32768
      ANS (5)       =    C1+K5
      ANS (6)       =    C2-K4
      ANS (7)       =    C3*K3
      ANS (8)       =    C5/K5
      ANS (9)       =    C1+(K1+K2)
      ANS (10)      =    C2-(K2+K3)
      ANS (11)      =    C5*(K3+K4)
      ANS (12)      =    C4/(K4+K5)
      ANS (13)      =    (C1+C2)+K1
      ANS (14)      =    (C2+C3)-K2
      ANS (15)      =    (C3+C4)*K3
      ANS (16)      =    (C4+C5)/K5
      ANS (17)      =    (C1+C2)+(K1+K2)
      ANS (18)      =    (C2+C3)-(K2+K3)
      ANS (19)      =    (C3+C4)*(K3+K4)
      ANS (20)      =    (C4+C5)/(K4+K5)
      ANS(21)  =    (C2+K5)**0
      ANS(22)  =    (C2+K5)**1
      ANS(23)  =    (C2+K5)**2
      ANS(24)  =    (C2+K5)**3
      ANS(25)  =    (C2+K5)**4
      ANS(26)  =    (C2+K5)**5
      ANS(27)  =    (C2+K5)**K5
      ANS(28)  =    C1+32768
      ANS(29)  =    C2-(-32769)
      ANS(30)  =    (-0.2D 01,0.2D 01)*K3
      ANS(31)  =    (-0.24D 02,-0.24D 02)/K5
      ANS(32)  =    C1+(K1+32768)
      ANS(33)  =    C2-(32768+K3)
      ANS(34)  =    (-0.4D 01,0.2D 01)*(K3+(-K4))
      ANS(35)  =    (-0.472D 03,0.4D 01)/(-K4+(-K5))
      ANS(36)  =    (C1+(0.1D 01,-0.1D 01))+K1
      ANS(37)  =    ((-0.2D 01,0.1D 01)+C3)-K2
      ANS(38)  =    (C3+C4)*32768
      ANS(39)  =    (C4+C5)/32768
      ANS(40)  =    (C1+(-C2))+(K1+(-K2))
      ANS(41)  =    ((-C1)+C2)-((-K2)+K3)
      ANS(42)  =    ((-C3)+(-C4))*((-K3)+(-K4))
      ANS(43)  =   -(C1+K5)
      ANS(44)  =   -(C1+(K1+K2))
      ANS(45)  =   -((-C2+(-C3))-K2)
      ANS(46)  =   -(((-C3)+(-C4))*(-(K3+K4)))
      IPSW     =    0
      DO  2  I =    1,46
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1)   GO TO    2
      IF (IPSW.NE.0)     GO TO    1
      WRITE(6,100)
      IPSW    =    1
    1 WRITE(6,101)  I,CNT(I),ANS(I)
    2 CONTINUE
      IF (IPSW.NE.0)     GO TO    3
      WRITE(6,102)
      STOP
    3 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,35H* TEST OF EXPRESSION ( INTEGER*4 = ,
     *    27H COMPLEX*16 , INTEGER*4 ) *//1H0,21X,15HCONSTANT VALUE.,
     *    12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0460)
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0460 ***)
      END
