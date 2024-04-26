      INTEGER*2     K1,K2,K3,K4,K5
      INTEGER*4     ANS(50),CNT(50)
      COMPLEX*8     C1,C2,C3,C4,C5
      DATA  CNT/4,2,16,1,3,4,-40,0,3,6,40,0,6,-4,-1400,2,-1,3,
     *    8,2,16,-61,-340,0,520,347,-80,2,-3,-18,-120,0,1,-80,3844
     *   ,-2,28,5646,35,4,16,-16,300,525,353,-10,1,2,35,2/
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
      C5       =    (4.0,2.0)
      ANS(1)   =    (2.0,3.0)+2
      ANS(2)   =    (5.0,3.0)-3
      ANS(3)   =    (4.0,2.0)*4
      ANS(4)   =    (5.0,4.0)/5
      ANS(5)   =    C1+K6
      ANS(6)   =    C2-K5
      ANS(7)   =    C3*K4
      ANS(8)   =    C4/K3
      ANS(9)   =    (C1+K6)
      ANS(10)  =   -(C2-(-K5))
      ANS(11)  =    (-C3*K4)
      ANS(12)  =   -((-C4)/(-K3))
      ANS(13)  =    C5+2
      ANS(14)  =    C4-4
      ANS(15)  =    (4.0,2.0)*K2
      ANS(16)  =    (5.0,2.0)/K6
      ANS(17)  =    (C1+(-2))
      ANS(18)  =   -((2.0,1.0)-(-K5))
      ANS(19)  =   -(-C3*(-4))
      ANS(20)  =   -((10.0,2.0)/K5)
      ANS(21)  =    C1+(K4+K5)
      ANS(22)  =    C2-(K3+K4)
      ANS(23)  =    C3*(K2+K1)
      ANS(24)  =    C4/(K5+K6)
      ANS(25)  =    (C1+C2)+K1
      ANS(26)  =    (C2+C3)-K2
      ANS(27)  =    (C3+C4)*K3
      ANS(28)  =    (C4+C5)/K6
      ANS(29)  =    (C1+C2)+(K5+K6)
      ANS(30)  =    (C2+C3)-(K4+K5)
      ANS(31)  =    (C3+C4)*(K3+K4)
      ANS(32)  =    (C1+C2)/(K4+K5)
      ANS(33)  =    ((C3+C4)-(K4+K6))**0
      ANS(34)  =    ((C3+C4)*K3)**1
      ANS(35)  =    (C3-(K3+K4))**2
      ANS(36)  =    (-C1+K6)**3
      ANS(37)  =    (C1+K6)**4
      ANS(38)  =    (C2+(-C3)+(-K5))**5
      ANS(39)  =    (C2+K5)**K6
      ANS(40)  =    (C1-(K5+K6))**(K5+K6+4)
      ANS(41)  =    C1+(K4+(-5))
      ANS(42)  =    C2-(-5+K4)
      ANS(43)  =    -((3.0,4.0)*(K2+250))
      ANS(44)  =    (C1+(4.0,3.0))+K1
      ANS(45)  =    ((5.0,4.0)+C3)-K2
      ANS(46)  =   -(C3+C5)*5
      ANS(47)  =    (C4+(5.0,-2.0))/4
      ANS(48)  =    (C1+(2.0,-2.0))-(K5+6)
      ANS(49)  =   -(-(-5.0,-4.0)+C4)*((-2)+K5)
      ANS(50)  =    (C1+(-6.0,5.0))/(-K6)
      IPSW     =    0
      DO  2  I =    1,50
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1) GO TO 2
      IF (IPSW.NE.0)     GO TO    1
      WRITE(6,100)
      IPSW     =    1
    1 WRITE(6,101)  I,CNT(I),ANS(I)
    2 CONTINUE
      IF(IPSW.NE.0)     GO TO    3
      WRITE(6,102)
      STOP
    3 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,37H* TEST OF EXPRESSION ( INTEGER * 4 = ,
     *    25HCOMPLEX*8 , INTEGER*2 ) *//1H0,21X,15HCONSTANT VALUE.,
     *    12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0410)
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0410 ***)
      END
