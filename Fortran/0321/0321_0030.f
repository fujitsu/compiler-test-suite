      INTEGER*2     K1,K2,K3,K4,K5
      INTEGER*4     ANS(50),CNT(50)
      COMPLEX*16    C1,C2,C3,C4,C5
      DATA     CNT/534,-520,24,40,346,200,-4,-2,346,200,-4,-2,151,
     *   49,0,0,350,197,-300,-2,150,47,-200,0,1,-200,21904,-132498,
     *    28,-12,8,9,5,-600,62,366,171,192,-1,355,206,900,0,-291,10,
     *    0,4,-4,-18,8 /
      K1       =      350
      K2       =     -200
      K3       =      150
      K4       =      -50
      K5       =        2
      C1       =    (0.1D 01,-0.1D 01)
      C2       =    (-0.1D 01,0.1D 01)
      C3       =   -(0.2D 01,0.0D 00)
      C4       =    (0.0D 00,0.2D 01)
      C5       =    (-0.4D 01,-0.2D 01)
      ANS(21)  =    (C1+C2)+(K1+K2)
      ANS(22)  =    (C2+C3)-(K2+K3)
      ANS(23)  =    (C3+C4)*(K3+K4)
      ANS(24)  =    (C4+C5)/(K4+K5)
      ANS(25)  =    (C5+K1)**0
      ANS(26)  =    (C4+K2)**1
      ANS(27)  =    (C3+K3)**2
      ANS(28)  =    (C2+K4)**3
      ANS(29)  =    (C1+K5)**4
      ANS(30)  =    (C1+K5)**5
      ANS(31)  =    (C1+K5)**K5
      ANS(32)  =    C5+13
      ANS(33)  =    C4-(-5)
      ANS(34)  =   -((0.4D 01,0.2D 01)*K3)
      ANS(35)  =    (0.124D 03,0.3D 02)/K5
      ANS(36)  =    C1+(K1+15)
      ANS(37)  =  -(C2-(20+K3))
      ANS(38)  =  -((0.4D 01,0.2D 01)*(K4+K5))
      ANS(39)  =    (0.8D 01,0.4D 01)/(K4-(-45))
      ANS(40)  =    (C1+(0.4D 01,0.2D 01))+K1
      ANS(1)   =    (0.6D 01,0.4D 01)+528
      ANS(2)   =    (0.6D 01,0.4D 01)-526
      ANS(3)   =    (0.6D 01,0.4D 01)*4
      ANS(4)   =    (0.12D 03,0.4D 01)/3
      ANS(5)   =    C5+K1
      ANS(6)   =    C4-K2
      ANS(7)   =    C3*K5
      ANS(8)   =    C5/K5
      ANS(9)   =    (C5+K1)
      ANS(10)  =   -(C4-(-K2))
      ANS(11)  =   -(-C3*K5)
      ANS(12)  =    ((-C5)/(-K5))
      ANS(13)  =    C1+(K1+K2)
      ANS(14)  =    C2-(K2+K3)
      ANS(15)  =    C4*(K4+K5)
      ANS(16)  =    C5/(K4-K5)
      ANS(17)  =    (C1+C2)+K1
      ANS(18)  =    (C2+C3)-K2
      ANS(19)  =    (C3+C4)*K3
      ANS(20)  =    (C4+C5)/K5
      ANS(41)  =    ((0.8D 01,0.4D 01)+C3)-K2
      ANS(42)  =  -(((-C3)+(0.4D 01,0.2D 01))*(-K3))
      ANS(43)  =    (C4+(0.4D 01,0.2D 01))/(-5)
      ANS(44)  =    (C1+(0.1D 01,-0.1D 01))+((-K1)+57)
      ANS(45)  =    ((-0.4D 01,-0.2D 01)+C2)*(K3+(-152))
      ANS(46)  =    ((-C4)+(-(-0.4D 01,0.2D 01)))/((-K4)+(-K5))
      ANS(47)  =    (C1+(-K5))**5
      ANS(48)  =    ((-C1)+K5)**4
      ANS(49)  =    ((-C1)+(-K5))**3
      ANS(50)  =    (-(0.1D 01,-0.1D 01)+(-K5))**2
      IPSW     =    0
      DO  2  I =    1,50
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1) GO TO 2
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
  100 FORMAT(1H1/1H0,5X,35H* TEST OF EXPRESSION ( INTEGER*4 = ,
     *    28H COMPLEX*16 , INTEGER*2 ) * //1H0,21X,
     *    15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0450 ***)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0450)
      END
