      INTEGER*4     ANS(50),CNT(50)
      REAL*8        R1,R2,R3,R4,R5
      COMPLEX*8     C1,C2,C3,C4,C5
      K1       =    2
      R1       =    500.0
      R2       =   -250.0
      R3       =     50.0
      R4       =    -20.0
      R5       =      2.0
      C1       =   -(0.1E 01,-0.1E 01)
      C2       =    (0.2E 01,0.0E 00)
      C3       =   -(0.0E 00,0.2E 01)
      C4       =    (-0.1E 01,0.1E 01)
      C5       =    (0.6E 01,0.3E 01)
      ANS(1)   =    0.32768D 05+(0.52E 01,0.82E 01)
      ANS(2)   =    0.32768D 05-(0.52E 01,0.82E 01)
      ANS(3)   =    0.32768D 05*(0.25E 01,0.25E 01)
      ANS(4)   =    0.32768D 05/(0.2E 01,-0.2E 01)
      ANS(5)   =    R1+C5
      ANS(6)   =    R2-C4
      ANS(7)   =    R3*C3
      ANS(8)   =    R4/C2
      ANS(9)   =    (R1+C5)
      ANS(10)  =   -(R2-(-C4))
      ANS(11)  =    ((-R3)*C3)
      ANS(12)  =   -((-R4)/(-C2))
      ANS(13)  =    R1+(0.3E 01,0.5E 01)
      ANS(14)  =    R2-(-(0.52E 01,0.64E 01))
      ANS(15)  =   -(0.32768E 05*C3)
      ANS(16)  =    ((-0.32768E 05)/C2)
      ANS(17)  =    R1+(C1-(+C4))
      ANS(18)  =    R2-(C2+C3)
      ANS(19)  =    R4*(C4+C5)
      ANS(20)  =    R5/(C1+C2)
      ANS(21)  =    (R1+R2)+C1
      ANS(22)  =    (R1+R2)-C2
      ANS(23)  =    (R2+R3)*C3
      ANS(24)  =    (R4+R5)/C4
      ANS(25)  =    (R1+R2)+(C1+C2)
      ANS(26)  =    (R2+R3)-(C2+C3)
      ANS(27)  =    (R3+R4)*(C4+C5)
      ANS(28)  =    (R1+R5)/(C2+C3)
      ANS(29)  =    (R1+C1)**0
      ANS(30)  =    (R2+(-C3))**1
      ANS(31)  =    ((R3+R4)*C5)**2
      ANS(32)  =    (R5-(-(C4+C5)))**3
      ANS(33)  =    ((R4+R5)/(-C3))**4
      ANS(34)  =    (R1/(R5**3*C5+(452.0,-24.0)))**5
      ANS(35)  =    R1+(C1+(-99.0))
      ANS(36)  =    R2-((-400.0)+C2)
      ANS(37)  =    (R2+R3)-(C1+(0.1E 01,-0.1E 01))
      ANS(38)  =    -(-(+R1)-(-R2))-(-R2+C3)
      ANS(39)  =    ((0.0,2.0)**K1)**(K1*3-5)
      ANS(40)  =    -((R1+(-250.0))-(C1-C4))
      CNT(1)   =    32773
      CNT(2)   =    32762
      CNT(3)   =    81920
      CNT(4)   =     8192
      CNT(5)   =      506
      CNT(6)   =     -249
      CNT(7)   =        0
      CNT(8)   =      -10
      CNT(9)   =      506
      CNT(10)  =      251
      CNT(11)  =        0
      CNT(12)  =       10
      CNT(13)  =      503
      CNT(14)  =     -244
      CNT(15)  =        0
      CNT(16)  =   -16384
      CNT(17)  =      500
      CNT(18)  =     -252
      CNT(19)  =     -100
      CNT(20)  =        1
      CNT(21)  =      249
      CNT(22)  =      248
      CNT(23)  =        0
      CNT(24)  =        9
      CNT(25)  =      251
      CNT(26)  =     -202
      CNT(27)  =      150
      CNT(28)  =      125
      CNT(29)  =        1
      CNT(30)  =     -250
      CNT(31)  =    24300
      CNT(32)  =        7
      CNT(33)  =     6561
      CNT(34)  =        1
      CNT(35)  =      400
      CNT(36)  =      148
      CNT(37)  =     -200
      CNT(38)  =      500
      CNT(39)  =       -4
      CNT(40)  =     -250
      IPSW     =    0
      DO  2  I =    1,40
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1)   GO TO    2
      IF (IPSW.NE.0)                                   GO TO    1
      WRITE(6,100)
      IPSW     =    1
    1 WRITE(6,101)  I,CNT(I),ANS(I)
    2 CONTINUE
      IF (IPSW.NE.0)     GO TO     3
      WRITE(6,102)
      STOP
    3 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF EXPRESSION ( INTEGER*4 = REAL*8 ,,
     *    14H COMPLEX*8 ) *//1H0,21X,15HCONSTANT VALUE.,
     *    12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0390)
  103 FORMAT(1H1/1H0,5X,37H*** ERROR IS DETECTED BY TEST0390 ***)
      END
