      INTEGER*4     K1,K2,K3,K4,K5,ANS(50),CNT(50)
      R1       =   -650.0
      R2       =    400.0
      R3       =    -50.0
      R4       =     40.0
      R5       =     -5.0
      R6       =      2.0
      K1       =    500
      K2       =   -400
      K3       =     80
      K4       =     40
      K5       =     -5
      K6       =      2
      ANS (1)  =    5.5+32768
      ANS (2)  =    0.567E+02-32768
      ANS (3)  =    0.432E+00*32768
      ANS (4)  =    0.65536E+05/32768
      ANS (5)  =    R1+K1
      ANS (6)  =    R2-K2
      ANS (7)  =    R3*K3
      ANS (8)  =    R1/K6
      ANS (9)  =    (R1+K1)
      ANS (10) =    (R2-(-K2))
      ANS (11) =    ((-R3)*K3)
      ANS (12) =    -((-R1)/(-K6))
      ANS (13) =    (R1+R2)+K1
      ANS (14) =    (R3+R4)-K2
      ANS (15) =    (R4+R5)*K3
      ANS (16) =    (R3+R4)/K4
      ANS(17)  =    -(60.0+R4)+K2
      ANS(18)  =    (0.2E 02+0.3E 01)*K3
      ANS(19)  =    -(R3+0.4E 02)/8
      ANS(20)  =    (0.15E 03+R1)-K1
      ANS(21)  =    R1+(K1+K2)
      ANS(22)  =    R2-(K2+K3)
      ANS(23)  =    R6*(K4-K5)
      ANS(24)  =    -(-R1)/(-(-K4)-(-K3))
      ANS(25)  =    -2.6+(K2+(-60))
      ANS(26)  =    R6*(100-(-K3))
      ANS(27)  =   -(-(-650)/(-(-K4)-(-K3)))
      ANS(28)  =    R2-((-K2)+80)
      ANS(29)  =    (R1+R6)+(K1+K2)
      ANS(30)  =    (R2-R3)-(K3+K4)
      ANS(31)  =    (-R4+(-R5))*(K5-K6)
      ANS(32)  =    -((-R1)+(-R2))/(K3+K4)
      ANS(33)  =    ((R1-R2)-K1)**0
      ANS(34)  =    (R6+K5)**1
      ANS(35)  =    (R4-(K5*K6))**2
      ANS(36)  =    (R6+(-K5))**3
      ANS(37)  =    (R6+K6)**4
      ANS(38)  =    (R6+K6)**5
      ANS(39)  =    (R6+K6)**K6
      ANS(40)  =    (R6+K6)**R6
      CNT (1)  =    32773
      CNT(2)   =   -32711
      CNT (3)  =    14155
      CNT (4)  =        2
      CNT (5)  =     -150
      CNT (6)  =      800
      CNT (7)  =    -4000
      CNT (8)  =     -325
      CNT (9)  =     -150
      CNT (10) =        0
      CNT (11) =     4000
      CNT (12) =      325
      CNT (13) =      250
      CNT (14) =      390
      CNT (15) =     2800
      CNT (16) =        0
      CNT(17)  =   -500
      CNT (18) =     1840
      CNT (19) =        1
      CNT(20)  =   -1000
      CNT(21)  =   -550
      CNT (22) =      720
      CNT (23) =       90
      CNT (24) =       -5
      CNT (25) =     -462
      CNT (26) =      360
      CNT (27) =       -5
      CNT (28) =      -80
      CNT (29) =     -548
      CNT(30)  =   330
      CNT (31) =      245
      CNT(32)  =   -2
      CNT(33)  =   1
      CNT (34) =       -3
      CNT (35) =     2500
      CNT (36) =      343
      CNT (37) =      256
      CNT(38)  =   1024
      CNT (39) =       16
      CNT (40) =       16
      IPSW     =    0
      DO  2  I =    1,40
      IF (ANS(I).GE.CNT(I)-1.AND.ANS(I).LE.CNT(I)+1)   GO TO    2
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
  100 FORMAT(1H1/1H0,5X,43H* TEST OF EXPRESSION ( INTEGER*4 = REAL*4 ,,
     *                  14H INTEGER*4 ) *//1H0,21X,15HCONSTANT VALUE.,
     *              12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0340)
  103 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0340 ***)
      END
