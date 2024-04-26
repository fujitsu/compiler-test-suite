      INTEGER*2     K1,K2,K3,K4,K5
      INTEGER*4     ANS(50),CNT(50)
      REAL*8        R1,R2,R3,R4,R5
      K1       =    500
      K2       =   -250
      K3       =     50
      K4       =    -20
      K5       =      2
      R1       =    800.0
      R2       =   -400.0
      R3       =    200.0
      R4       =    -50.0
      R5       =      3.0
      ANS(1)   =    0.529D 02+15
      ANS(2)   =    0.455D 02-46
      ANS(3)   =    0.25D 01*15
      ANS(4)   =    0.254D 02/5
      ANS(5)   =    R5+K1
      ANS(6)   =    R4-K2
      ANS(7)   =    R3*K3
      ANS(8)   =    R2/K4
      ANS(9)   =   -(R5+K1)
      ANS(10)=     -(-R4-1-K2)+499
      ANS(11)  =   -((-R3)*K3)
      ANS(12)  =    ((-R2)/(-K4))
      ANS(13)  =    0.3D 01+K1
      ANS(14)  =    0.52D 02-K2
      ANS(15)  =    R3*45
      ANS(16)  =    R2/4
      ANS(17)  =    (R1+R2)+K1
      ANS(18)  =    (R2+R3)-K2
      ANS(19)  =    (R4+R5)*K4
      ANS(20)  =    (R1+R2)/K5
      ANS(21)  =    R1+(K1+K2)
      ANS(22)  =    R2-(K1+K2)
      ANS(23)  =    R3*(K2+K3)
      ANS(24)  =    R4/(K4+K5)
      ANS(25)  =    (R1+R2)+(K1+K5)
      ANS(26)  =    (R2+R3)-(K2+K3)
      ANS(27)  =    (R4+R5)*(K3+K4)
      ANS(28)  =    (R2+R3)/(K1+K5)
      ANS(29)  =    (R1+K1)**0
      ANS(30)  =    ((-R3)+K2)**1
      ANS(31)  =    (R5*(K3+K4))**2
      ANS(32)  =   (-(-(R4+R5)-K3))**3
      ANS(33)  =    (-R1/(K3+K4-10))**4
      ANS(34)  =    ((R4+R5+547)/K2)**5
      ANS(35)  =    (R5*(K3+K4))**K5
      ANS(36)  =    (0.2D 01**K5)**(K5*R5-4)
      ANS(37)  =    (R1+(-400))+K1
      ANS(38)  =    R2-((-400)+K3)
      ANS(39)  =    (R2+R3)-(K2+(-400))
      ANS(40)  =    (R4+0.3D 01)*(50+K4)
      CNT(1)   =   67
      CNT(2)   =        0
      CNT(3)   =       37
      CNT(4)   =        5
      CNT(5)   =      503
      CNT(6)   =      200
      CNT(7)   =    10000
      CNT(8)   =       20
      CNT(9)   =     -503
      CNT(10)  =      200
      CNT(11)  =    10000
      CNT(12)  =       20
      CNT(13)  =      503
      CNT(14)  =      302
      CNT(15)  =     9000
      CNT(16)  =     -100
      CNT(17)  =      900
      CNT(18)  =       50
      CNT(19)  =      940
      CNT(20)  =      200
      CNT(21)  =     1050
      CNT(22)  =     -650
      CNT(23)  =   -40000
      CNT(24)  =        2
      CNT(25)  =      902
      CNT(26)  =        0
      CNT(27)  =    -1410
      CNT(28)  =        0
      CNT(29)  =        1
      CNT(30)  =     -450
      CNT(31)  =     8100
      CNT(32)  =       27
      CNT(33)  =   2560000
      CNT(34)  =      -32
      CNT(35)  =     8100
      CNT(36)  =       16
      CNT(37)  =      900
      CNT(38)  =      -50
      CNT(39)  =      450
      CNT(40)  =    -1410
      IPSW     =    0
      DO  2  I =    1,40
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1) GO TO 2
      IF (IPSW.NE.0)                              GO TO    1
      WRITE(6,100)
      IPSW     =    1
    1 WRITE(6,101)  I,CNT(I),ANS(I)
    2 CONTINUE
      IF (IPSW.NE.0)     GO TO    3
      WRITE(6,102)
      STOP
    3 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF EXPRESSION ( INTEGER*4 = REAL*8 ,,
     *    14H INTEGER*2 ) *//1H0,21X,15HCONSTANT VALUE.,
     *    12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0370)
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0370 ***)
      END
