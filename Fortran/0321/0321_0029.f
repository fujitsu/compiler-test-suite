      INTEGER*4     ANS(50),CNT(50)
      REAL*8        R1,R2,R3,R4,R5
      COMPLEX*8     C1,C2,C3,C4,C5
      K1       =    2
      R1       =    520.0
      R2       =   -350.0
      R3       =     40.0
      R4       =     20.0
      R5       =     -5.0
      R6       =      2.0
      C1       =    (1.0,-1.0)
      C2       =    (-1.0,1.0)
      C3       =   -(2.0,0.0)
      C4       =    (0.0,2.0)
      C5       =    (4.0,2.5)
      ANS(1)   =    (2.0,3.0)+0.25D 01
      ANS(2)   =    (5.0,3.0)-0.35D 01
      ANS(3)   =    (4.0,2.0)*0.46D 01
      ANS(4)   =    (-25.0,4.0)/(-0.5D 01)
      ANS(5)   =    C1+R6
      ANS(6)   =    C2-R5
      ANS(7)   =    C3*R4
      ANS(8)   =    C4/R3
      ANS(9)   =    (C1+R6)
      ANS(10)  =    -(C2-(-R5))
      ANS(11)  =    (-C3*R4)
      ANS(12)  =    -((-C4)/(-R3))
      ANS(13)  =    C5+2.5
      ANS(14)  =    C4-4.0
      ANS(15)  =    (4.0,2.0)*R2
      ANS(16)  =    (5.0,2.0)/R6
      ANS(17)  =    (C1+(-0.2D 01))
      ANS(18)  =    -((2.0,1.0)-(-R5))
      ANS(19)  =    -(-C3*(-0.4D 01))
      ANS(20)  =    -((10.0,2.0)/R5)
      ANS(21)  =    C1+(R4+R5)
      ANS(22)  =    C2-(R3+R4)
      ANS(23)  =    C3*(R2+R1)
      ANS(24)  =    C4/(R5+R6)
      ANS(25)  =    (C1+C2)+R1
      ANS(26)  =    (C2+C3)-R2
      ANS(27)  =    (C3+C4)*R3
      ANS(28)  =    (C4+C5)/R6
      ANS(29)  =    (C1+C2)+(R5+R6)
      ANS(30)  =    (C2+C3)-(R4+R5)
      ANS(31)  =    (C3+C4)*(R3+R4)
      ANS(32)  =    (C1+C2)/(R4+R5)
      ANS(33)  =    ((C3+C4)-(R4+R6))**0
      ANS(34)  =    ((C3+C4)*R3)**1
      ANS(35)  =    (C3-(R3+R4))**2
      ANS(36)  =    ((-C1)+R6)**3
      ANS(37)  =    (C1+R6)**4
      ANS(38)  =    (C2+(-C3)+(-R5))**5
      ANS(39)  =    (C2+R5)**K1
      ANS(40)  =    (C1-(R5+R6))**(3-K1)
      ANS(41)  =    C1+(R4+(-0.5D 01))
      ANS(42)  =    C2-(-0.5D 01-(-R4))
      ANS(43)  =    -((3.0,4.0)*(R2+0.25D 03))
      ANS(44)  =    (C1+(4.0,3.0))+R1
      ANS(45)  =    ((5.0,4.0)+C3)-R2
      ANS(46)  =    -(C3+C5)*0.5D 01
      ANS(47)  =    (C4+(5.0,-2.0))/0.4D 01
      ANS(48)  =    (C1+(2.0,-2.0))-(R5+0.6D 01)
      ANS(49)  =    -(-(-5.0,-4.0)+C4)*((-0.2D 01)+R5)
      ANS(50)  =    (C1+(-6.0,5.0))/(-R6)
      CNT(1)   =        4
      CNT(2)   =        1
      CNT(3)   =       18
      CNT(4)   =        5
      CNT(5)   =        3
      CNT(6)   =        4
      CNT(7)   =      -40
      CNT(8)   =        0
      CNT(9)   =        3
      CNT(10)  =        6
      CNT(11)  =       40
      CNT(12)  =        0
      CNT(13)  =        6
      CNT(14)  =       -4
      CNT(15)  =    -1400
      CNT(16)  =        2
      CNT(17)  =       -1
      CNT(18)  =        3
      CNT(19)  =        8
      CNT(20)  =        2
      CNT(21)  =       16
      CNT(22)  =      -61
      CNT(23)  =    -340
      CNT(24)  =        0
      CNT(25)  =      520
      CNT(26)  =      347
      CNT(27)  =      -80
      CNT(28)  =        2
      CNT(29)  =       -3
      CNT(30)  =      -18
      CNT(31)  =   -120
      CNT(32)  =        0
      CNT(33)  =        1
      CNT(34)  =      -80
      CNT(35)  =   3844
      CNT(36)  =       -2
      CNT(37)  =       28
      CNT(38)  =    5646
      CNT(39)  =       35
      CNT(40)  =        4
      CNT(41)  =       16
      CNT(42)  =      -16
      CNT(43)  =   300
      CNT(44)  =      525
      CNT(45)  =      353
      CNT(46)  =      -10
      CNT(47)  =        1
      CNT(48)  =        2
      CNT(49)  =       35
      CNT(50)  =        2
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
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0440 ***)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0440)
      END
