      INTEGER*4     K1,K2,K3,K4,K5,IANS,ICNT
      REAL*4        R1,R2,R3,R4,R5
      REAL*8        D1,D2,D3,D4,D5
      COMPLEX*8     C1,C2,C3,C4,C5
      COMPLEX*16    X1,X2,X3,X4,X5
      K1       =    500
      K2       =   -250
      K3       =     50
      K4       =    -20
      K5       =      2
      R1       =    0.8E 03
      R2       =   -0.4E 03
      R3       =    0.2E 03
      R4       =   -0.5E 02
      R5       =    0.3E 01
      D1       =    0.8D 03
      D2       =   -0.4D 03
      D3       =    0.2D 03
      D4       =   -0.5D 02
      D5       =    0.3D 01
      C1       =   -(0.1E 01,-0.1E 01)
      C2       =    (0.2E 01,0.0E 00)
      C3       =   -(0.0E 00,0.2E 01)
      C4       =    (-0.1E 01,0.1E 01)
      C5       =    (0.6E 01,0.3E 01)
      X1       =   -(0.1D 01,-0.1D 01)
      X2       =    (0.2D 01,0.0D 00)
      X3       =   -(0.0D 00,0.2D 01)
      X4       =    (-0.1D 01,0.1D 01)
      X5       =    (0.6D 01,0.3D 01)
      IPSW     =    0
      ITEM1    =    0
      ICNST    =    0
      ASSIGN   1000 TO J1
 1000 ITEM1    =    ITEM1+1
      GO TO  ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20,
     *        21,22,23,24,25,26,27,28,29,30,
     *        31,32,33,34,35,36,37,38,39,40,
     *        41,42,43,44,45,46,47,48,49,50),ITEM1
      IF (IPSW.NE.0)     GO TO     1001
      WRITE(6,800)
      WRITE(6,802)
      GO TO    1002
 1001 WRITE(6,801)
 1002 IPSW     =    1
      ITEM1    =    0
      ICNST    =    50
      ASSIGN   1100 TO   J1
 1100 ITEM1    =    ITEM1+1
      GO TO   (51,52,53,54,55,56,57,58,59,60,
     *         61,62,63,64,65,66,67,68,69,70,
     *         71,72,73,74,75,76,77,78,79,80,
     *         81,82,83,84,85,86,87,88,89,90,
     *         91,92,93,94,95,96,97,98,99,100),ITEM1
      IF (IPSW.NE.1)     GO TO     1101
      WRITE(6,800)
      WRITE(6,803)
      GO TO    1102
 1101 WRITE(6,801)
 1102 IPSW     =    2
      ITEM1    =    0
      ICNST    =    100
      ASSIGN   1200 TO  J1
 1200 ITEM1    =    ITEM1+1
      GO TO   (101,102,103,104,105,106,107,108,109,110,
     *         111,112,113,114,115,116,117,118,119,120,
     *         121,122,123,124,125,126,127,128,129,130,
     *         131,132,133,134,135,136,137,138,139,140,
     *         141,142,143,144,145,146,147,148,149,150),ITEM1
      IF (IPSW.NE.2)     GO   TO   1201
      WRITE(6,800)
      WRITE(6,804)
      GO TO    1202
 1201 WRITE(6,801)
 1202 IPSW     =    3
      ICNST    =    150
      ITEM1    =    0
      ASSIGN   1300 TO J1
 1300 ITEM1    =    ITEM1+1
      GO TO   (151,152,153,154,155,156,157,158,159,160,
     *         161,162,163,164,165,166,167,168,169,170,
     *         171,172,173,174,175,176,177,178,179,180,
     *         181,182,183,184,185,186,187,188,189,190,
     *         191,192,193,194,195,196,197,198,199,200),ITEM1
       IF( IPSW .NE. 3) GO TO 1301
      WRITE(6,800)
      WRITE(6,805)
      STOP
 1301 WRITE(6,801)
      STOP
 1500 IF (IANS.GE.ICNT-1.AND.IANS.LE.ICNT+1) GO TO 1503
      IF (IPSW.EQ.4)     GO TO 1502
      WRITE(6,806)
      IF (IPSW.EQ.0)     GO TO     1504
      IF (IPSW.EQ.1)     GO TO     1505
      IF (IPSW.EQ.2)     GO TO     1506
      IF (IPSW.EQ.3)     GO TO     1507
 1502 ITEM2    =    ITEM1+ICNST
      WRITE(6,807)  ITEM2,ICNT,IANS
 1503 GO TO  J1,(1000,1100,1200,1300)
 1504 WRITE(6,808)
      GO TO    1508
 1505 WRITE(6,809)
      GO TO    1508
 1506 WRITE(6,810)
      GO TO    1508
 1507 WRITE(6,811)
 1508 IPSW     = 4
      WRITE(6,812)
      GO TO     1502
  800 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0320/)
  801 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0320 ***)
  802 FORMAT(1H0,10X,38HTYPE IS INTEGER*4 = INTEGER*4 , REAL*4)
  803 FORMAT(1H0,10X,38HTYPE IS INTEGER*4 = INTEGER*4 , REAL*8)
  804 FORMAT(1H0,10X,41HTYPE IS INTEGER*4 = INTEGER*4 , COMPLEX*8)
  806 FORMAT(1H1/1H0,5X,44H* TEST OF EXPRESSION ( INTEGER*4 = INTEGER*4)
  805 FORMAT(1H0,10X,42HTYPE IS INTEGER*4 = INTEGER*4 , COMPLEX*16)
  807 FORMAT(1H0,7X,I5,8X,I12,13X,I12)
  808 FORMAT(1H+,50X,10H, REAL*4 )//)
  809 FORMAT(1H+,50X,10H, REAL*8 )//)
  810 FORMAT(1H+,50X,13H, COMPLEX*8 )//)
  811 FORMAT(1H+,50X,14H, COMPLEX*16 )//)
  812 FORMAT(1H0,5X,7HITEM.NO,5X,15HCONSTANT VALUE.,12X,
     *    13HRESULT VALUE.)
    1 IANS     =    384230+52.9
      ICNT     =    384282
      GO TO    1500
    2 IANS     =    384245-45.5
      ICNT     =    384199
      GO TO    1500
    3 IANS     =    32768*2.5
      ICNT     =    81920
      GO TO    1500
    4 IANS     =    32768/(-2.5)
      ICNT     =   -13107
      GO TO    1500
    5 IANS     =    K1+R5
      ICNT     =    503
      GO TO    1500
    6 IANS     =    K2-R4
      ICNT     =    -200
      GO TO    1500
    7 IANS     =    K3*R3
      ICNT     =    10000
      GO TO    1500
    8 IANS     =    K4/R2
      ICNT     =    0
      GO TO    1500
    9 IANS     =   (K1+R5)
      ICNT     =    503
      GO TO    1500
   10 IANS     =    -(K2-(-R4))
      ICNT     =    300
      GO TO    1500
   11 IANS     =    ((-K3)*R3)
      ICNT     =    -10000
      GO TO    1500
   12 IANS     =    -((-K4)/(-R2))
      ICNT     =    0
      GO TO    1500
   13 IANS     =    K1+0.3E 01
      ICNT     =    503
      GO TO    1500
   14 IANS     =    K2-(-0.50E+02)
      ICNT     =    -200
      GO TO    1500
   15 IANS     =    -(32768*R3)
      ICNT = -6553600
      GO TO    1500
   16 IANS     =    ((-32768)/R2)
      ICNT     =    81
      GO TO    1500
   17 IANS     =    K1+(R1+R2)
      ICNT     =    900
      GO TO    1500
   18 IANS     =    K2-(R2+R3)
      ICNT     =    -50
      GO TO    1500
   19 IANS     =    K4*(R4+R5)
      ICNT     =    940
      GO TO    1500
   20 IANS     =    K5/(R1+R2)
      ICNT     =    0
      GO TO    1500
   21 IANS     =    (K1+K2)+R1
      ICNT     =    1050
      GO TO    1500
   22 IANS     =    (K1+K2)-R2
      ICNT     =    650
      GO TO    1500
   23 IANS     =    (K2+K3)*R3
      ICNT     =    -40000
      GO TO    1500
   24 IANS     =    (K4+K5)/R4
      ICNT     =    0
      GO TO    1500
   25 IANS     =    (K1+K2)+(R1+R2)
      ICNT     =    650
      GO TO    1500
   26 IANS     =    (K2+K3)-(R2+R3)
      ICNT     =    0
      GO TO    1500
   27 IANS     =    (K3+K4)*(R4+R5)
      ICNT     =    -1410
      GO TO    1500
   28 IANS     =    (K1+K5)/(R2+R3)
      ICNT     =    -2
      GO TO    1500
   29 IANS     =    +R1
      ICNT     =    800
      GO TO    1500
   30 IANS     =    (+R2)
      ICNT     =    -400
      GO TO    1500
   31 IANS     =    +(R3)
      ICNT     =    200
      GO TO    1500
   32 IANS     =    +(+R4)
      ICNT     =    -50
      GO TO    1500
   33 IANS     =    +(-R5)
      ICNT     =    -3
      GO TO    1500
   34 IANS     =    -R1
      ICNT     =    -800
      GO TO    1500
   35 IANS     =    (-R2)
      ICNT     =    400
      GO TO    1500
   36 IANS     =    -(R3)
      ICNT     =    -200
      GO TO    1500
   37 IANS     =    -(-R4)
      ICNT     =    -50
      GO TO    1500
   38 IANS     =    -(+R5)
      ICNT     =    -3
      GO TO    1500
   39 IANS     =    (K1+R1)**0
      ICNT     =    1
      GO TO    1500
   40 IANS     =    (K2+(-R3))**1
      ICNT     =    -450
      GO TO    1500
   41 IANS     =    ((K3+K4)*R5)**2
      ICNT     =    8100
      GO TO    1500
   42 IANS = -((K3-(-R4+R5)))**3
      ICNT     =    27
      GO TO    1500
   43 IANS     =    ((K2+K4)/(-R5))**4
      ICNT     =    65610000
      GO TO    1500
   44 IANS     =    (K1/(R4+R5+547))**5
      ICNT     =    1
      GO TO    1500
   45 IANS     =    R4**K5
      ICNT     =    2500
      GO TO    1500
   46 IANS     =    (0.2E 01**K5)**(K5*R5-4)
      ICNT     =    16
      GO TO    1500
   47 IANS     =    K1+(R1+(-400))
      ICNT     =    900
      GO TO    1500
   48 IANS     =    K2-((-400)+R1)
      ICNT     =    -650
      GO TO    1500
   49 IANS     =    (K2+K3)-(R1+(-0.4E 03))
      ICNT     =    -600
      GO TO    1500
   50 IANS     =    -(-(+K1)-(-K2))-(-K2+R2)
      ICNT     =    900
      GO TO    1500
   51 IANS     =    384230+0.529D 02
      ICNT     =    384282
      GO TO    1500
   52 IANS     =    384245-0.455D 02
      ICNT     =    384199
      GO TO    1500
   53 IANS     =    32768*0.25D 01
      ICNT     =    81920
      GO TO    1500
   54 IANS     =    32768/(-0.25D 01)
      ICNT     =    -13107
      GO TO    1500
   55 IANS     =    K1+D5
      ICNT     =    503
      GO TO    1500
   56 IANS     =    K2-D4
      ICNT     =    -200
      GO TO    1500
   57 IANS     =    K3*D3
      ICNT     =    10000
      GO TO    1500
   58 IANS     =    K4/D2
      ICNT     =    0
      GO TO    1500
   59 IANS     =   -(K1+D5)
      ICNT     =    -503
      GO TO    1500
   60 IANS     =    -(K2-(-D4))
      ICNT     =    300
      GO TO    1500
   61 IANS     =   -((-K3)*D3)
      ICNT     =    +10000
      GO TO    1500
   62 IANS     =    +((-K4)/(-R2))
      ICNT     =    0
      GO TO    1500
   63 IANS     =    K1+0.3D 01
      ICNT     =    503
      GO TO    1500
   64 IANS     =    K2-(-0.52D+02)
      ICNT     =    -198
      GO TO    1500
   65 IANS     =    -(32768*D3)
      ICNT = -6553600
      GO TO    1500
   66 IANS     =   -((-32768)/D2)
      ICNT     =   -81
      GO TO    1500
   67 IANS     =    K1+(D1+D2)
      ICNT     =    900
      GO TO    1500
   68 IANS     =    K2-(D2+D3)
      ICNT     =    -50
      GO TO    1500
   69 IANS     =    K4*(D4+D5)
      ICNT     =    940
      GO TO    1500
   70 IANS     =    K5/(D1+D2)
      ICNT     =    0
      GO TO    1500
   71 IANS     =    (K1+K2)+D1
      ICNT     =    1050
      GO TO    1500
   72 IANS     =    (K1+K2)-D2
      ICNT     =    650
      GO TO    1500
   73 IANS     =    (K2+K3)*D3
      ICNT     =    -40000
      GO TO    1500
   74 IANS     =    (K4+K5)/D4
      ICNT     =    0
      GO TO    1500
   75 IANS     =    (K1+K5)+(D1+D2)
      ICNT     =    902
      GO TO    1500
   76 IANS     =    (K2+K3)-(D2+D3)
      ICNT     =    0
      GO TO    1500
   77 IANS     =    (K3+K4)*(D4+D5)
      ICNT     =    -1410
      GO TO    1500
   78 IANS     =    (K1+K5)/(D2+D3)
      ICNT     =    -2
      GO TO    1500
   79 IANS     =    +D1
      ICNT     =    800
      GO TO    1500
   80 IANS     =    (+D2)
      ICNT     =    -400
      GO TO    1500
   81 IANS     =    (K1+D1)**0
      ICNT     =    1
      GO TO    1500
   82 IANS     =    (K2+(-D3))**1
      ICNT     =    -450
      GO TO    1500
   83 IANS     =    ((K3+K4)*R5)**2
      ICNT     =    8100
      GO TO    1500
   84 IANS     =  -((K3-(-D4+D5)))**3
      ICNT     =    27
      GO TO    1500
   85 IANS     =    ((K2+K4)/(-D5))**4
      ICNT     =    65610000
      GO TO    1500
   86 IANS     =    (K1/(D4+D5+547))**5
      ICNT     =    1
      GO TO    1500
   87 IANS     =    D4**K5
      ICNT     =    2500
      GO TO    1500
   88 IANS     =    (0.2D 01**K5)**(K5*D5-4)
      ICNT     =    16
      GO TO    1500
   89 IANS     =    K1+(D1+(-400))
      ICNT     =    900
      GO TO    1500
   90 IANS     =    K2-((-400)+D1)
      ICNT     =    -650
      GO TO    1500
   91 IANS     =    (K2+K3)-(D1+(-0.4D 03))
      ICNT     =    -600
      GO TO    1500
   92 IANS     =    -(-(+K1)-(-K2))-(-K2+D2)
      ICNT     =    900
      GO TO    1500
   93 IANS     =    (K1+(-250))+(D1+D2)
      ICNT     =    650
      GO TO    1500
   94 IANS     =    (K2+K3)-(D1+(-0.4D 03))
      ICNT     =    -600
      GO TO    1500
   95 IANS     =    (50+K4)*(-0.5D 02+D5)
      ICNT     =    -1410
      GO TO    1500
   96 IANS     =    (K2+D3)/(0.2D 01)**K5
      ICNT     =    -12
      GO TO    1500
   97 IANS     =    -(-(-K2)+(-D3))/(-0.2D 01)**(-2.0D 00+K5)
      ICNT     =    450
      GO TO    1500
   98 IANS     =    0.2D 01**0
      ICNT     =    1
      GO TO    1500
   99 IANS     =    0.2D 01**1
      ICNT     =    2
      GO TO    1500
  100 IANS     =    0.2D 01**3
      ICNT     =    8
      GO TO    1500
  101 IANS     =    32768+(0.52E 01,0.82E 01)
      ICNT     =    32773
      GO TO    1500
  102 IANS     =    32768-(0.52E 01,0.82E 01)
      ICNT     =    32762
      GO TO    1500
  103 IANS     =    32768*(0.25E 01,0.25E 01)
      ICNT     =    81920
      GO TO    1500
  104 IANS     =    32768/(0.2E 01,-0.2E 01)
      ICNT     =    8192
      GO TO    1500
  105 IANS     =    K1+C5
      ICNT     =    506
      GO TO    1500
  106 IANS     =    K2-C4
      ICNT     =    -249
      GO TO    1500
  107 IANS     =    K3*C3
      ICNT     =    0
      GO TO    1500
  108 IANS     =    K4/C2
      ICNT     =    -10
      GO TO    1500
  109 IANS     =    (K1+C5)
      ICNT     =    506
      GO TO    1500
  110 IANS     =    -(K2-(-C4))
      ICNT     =    251
      GO TO    1500
  111 IANS     =    ((-K3)*C3)
      ICNT     =    0
      GO TO    1500
  112 IANS     =    -((-K4)/(-C2))
      ICNT     =    10
      GO TO    1500
  113 IANS     =    K1+(0.3E 01,0.5E 01)
      ICNT     =    503
      GO TO    1500
  114 IANS     =    K2-(-(0.52E 01,0.64E 01))
      ICNT     =    -244
      GO TO    1500
  115 IANS     =    -(32768*C3)
      ICNT     =    0
      GO TO    1500
  116 IANS     =    ((-32768)/C2)
      ICNT     =   -16384
      GO TO    1500
  117 IANS     =    K1+(C1-(+C4))
      ICNT     =    500
      GO TO    1500
  118 IANS     =    K2-(C2+C3)
      ICNT     =    -252
      GO TO    1500
  119 IANS     =    K4*(C4+C5)
      ICNT     =    -100
      GO TO    1500
  120 IANS     =    K5/(C1+C2)
      ICNT     =    1
      GO TO    1500
  121 IANS     =    (K1+K2)+C1
      ICNT     =    249
      GO TO    1500
  122 IANS     =    (K1+K2)-C2
      ICNT     =    248
      GO TO    1500
  123 IANS     =    (K2+K3)*C3
      ICNT     =    0
      GO TO    1500
  124 IANS     =    (K4+K5)/C4
      ICNT     =    9
      GO TO    1500
  125 IANS     =    (K1+K2)+(C1+C2)
      ICNT     =    251
      GO TO    1500
  126 IANS     =    (K2+K3)-(C2+C3)
      ICNT     =    -202
      GO TO    1500
  127 IANS     =    (K3+K4)*(C4+C5)
      ICNT     =    150
      GO TO    1500
  128 IANS     =    (K1+K5)/(C2+C3)
      ICNT     =    125
      GO TO    1500
  129 IANS     =    (K1+C1)**0
      ICNT     =    1
      GO TO    1500
  130 IANS     =    (K2+(-C3))**1
      ICNT     =    -250
      GO TO    1500
  131 IANS     =    ((K3+K4)*C5)**2
      ICNT     =    24300
      GO TO    1500
  132 IANS     =    (K5-(-(C4+C5)))**3
      ICNT     =     7
      GO TO    1500
  133 IANS     =    ((K4+K5)/(-C3))**4
      ICNT     =    6561
      GO TO    1500
  134 IANS     =    (K1/(K5**3*C5+(452.0,-24.0)))**5
      ICNT     =    1
      GO TO    1500
  135 IANS = C2**K5
      ICNT     =    4
      GO TO    1500
  136 IANS     =    K1+(C1+(-99))
      ICNT     =    400
      GO TO    1500
  137 IANS     =    K2-((-400)+C2)
      ICNT     =    148
      GO TO    1500
  138 IANS     =    (K2+K3)-(C1+(0.1E 01,-0.1E 01))
      ICNT     =    -200
      GO TO    1500
  139 IANS     =    -(-(+K1)-(-K2))-(-K2+C3)
      ICNT     =    500
      GO TO    1500
  140 IANS = ((0.,2.)**K5)**(K5*3-5)
      ICNT     =    -4
      GO TO    1500
  141 IANS     =  -((K1+(-250))-(C1-C4))
      ICNT     =    -250
      GO TO    1500
  142 IANS     = -(((K2+K3)-(C2+C3))*(-C3))
      ICNT     =    4
      GO TO    1500
  143 IANS     =    (50+K4)*(-(-1.0,1.0)-(-(+C1)))
      ICNT = 0
      GO TO    1500
  144 IANS     =    (K2+C3)/(0.0,2.0)**K5
      ICNT     =    62
      GO TO    1500
  145 IANS = -(-(-K2)+(-C3))/(1.,1.)**(-2+K5)
      ICNT     =    250
      GO TO    1500
  146 IANS     =    (1.0,1.0)**0
      ICNT     =    1
      GO TO    1500
  147 IANS     =    (2.0,1.0)**1
      ICNT     =    2
      GO TO    1500
  148 IANS     =    (0.0,2.0)**2
      ICNT     =    -4
      GO TO    1500
  149 IANS     =    (1.0,1.0)**3
      ICNT     =    -2
      GO TO    1500
  150 IANS     =    (1.0,1.0)**4
      ICNT     =    -4
      GO TO    1500
  151 IANS     =    32768+(0.52D 01,0.82D 01)
      ICNT     =    32773
      GO TO    1500
  152 IANS     =    32768-(0.52D 01,0.82D 01)
      ICNT     =    32762
      GO TO    1500
  153 IANS     =    32768*(0.25D 01,0.25D 01)
      ICNT     =    81920
      GO TO    1500
  154 IANS     =    32768/(0.2D 01,-0.2D 01)
      ICNT     =    8192
      GO TO    1500
  155 IANS     =    K1+X5
      ICNT     =    506
      GO TO    1500
  156 IANS     =    K2-X4
      ICNT     =    -249
      GO TO    1500
  157 IANS     =    K3*X3
      ICNT     =    0
      GO TO    1500
  158 IANS     =    K4/X2
      ICNT     =    -10
      GO TO    1500
  159 IANS     =   -(K1+X5)
      ICNT     =   -506
      GO TO    1500
  160 IANS     =    -(K2-(-X4))
      ICNT     =    251
      GO TO    1500
  161 IANS     =    (-K3*(-X3))
      ICNT     =    0
      GO TO    1500
  162 IANS     =    -((-K4)/(-X2))
      ICNT     =    10
      GO TO    1500
  163 IANS     =    K1+(0.3D 01,0.5D 01)
      ICNT     =    503
      GO TO    1500
  164 IANS     =    K2-(-(0.52D 01,0.64D 01))
      ICNT     =    -244
      GO TO    1500
  165 IANS     =    -(32768*X3)
      ICNT     =    0
      GO TO    1500
  166 IANS     =    ((-32768)/X2)
      ICNT     =    -16384
      GO TO    1500
  167 IANS     =  -(K1+(X1-(+X4)))
      ICNT     =    -500
      GO TO    1500
  168 IANS     =    K2-(X2+X3)
      ICNT     =    -252
      GO TO    1500
  169 IANS     =    K4*(X4+X5)
      ICNT     =    -100
      GO TO    1500
  170 IANS     =    K5/(X1+X2)
      ICNT     =    1
      GO TO    1500
  171 IANS     =    (K1+K2)+X1
      ICNT     =    249
      GO TO    1500
  172 IANS     =    (K1+K2)-X2
      ICNT     =    248
      GO TO    1500
  173 IANS     =    (K2+K3)*X3
      ICNT     =    0
      GO TO    1500
  174 IANS     =    (K4+K5)/X4
      ICNT     =    9
      GO TO    1500
  175 IANS     =    (K1+K2)+(X1+X2)
      ICNT     =    251
      GO TO    1500
  176 IANS     =    (K2+K3)-(X2+X3)
      ICNT     =    -202
      GO TO    1500
  177 IANS     =    (K3+K4)*(X4+X5)
      ICNT     =    150
      GO TO    1500
  178 IANS     =    (K1+K5)/(X2+X3)
      ICNT     =    125
      GO TO    1500
  179 IANS     =    (K1+X1)**0
      ICNT     =    1
      GO TO    1500
  180 IANS     =    (K2+(-X3))**1
      ICNT     =    -250
      GO TO    1500
  181 IANS     =    ((K3+K4)*X5)**2
      ICNT     =    24300
      GO TO    1500
  182 IANS     =    (K5-(-(X4+X5)))**3
      ICNT     =     7
      GO TO    1500
  183 IANS     =    ((K4+K5)/(-X3))**4
      ICNT     =    6561
      GO TO    1500
  184 IANS     =    (K1/(K5**3*X5+(452.0,-24.0)))**5
      ICNT     =    1
      GO TO    1500
  185 IANS     =    X2**K5
      ICNT     =    4
      GO TO    1500
  186 IANS     =    K1+(X1+(-99))
      ICNT     =    400
      GO TO    1500
  187 IANS     =    K2-((-400)+C2)
      ICNT     =    148
      GO TO    1500
  188 IANS     =    (K2+K3)-(X1+(0.1D 01,-0.1D 01))
      ICNT     =    -200
      GO TO    1500
  189 IANS     =    -(-(+K1)-(-K2))-(-K2+X3)
      ICNT     =    500
      GO TO    1500
  190 IANS = ((0.0D 00,0.2D 01)**K5)**(K5*3-5)
      ICNT     =    -4
      GO TO    1500
  191 IANS     =    -((K1+(-250))-(X1-X4))
      ICNT     =    -250
      GO TO    1500
  192 IANS     =    -(((K2+K3)-(X1+X3))*(-X3))
      ICNT     =   2
      GO TO    1500
  193 IANS     =    (50+K4)*(-(-0.1D 01,0.1D 01)+(-(-X1)))
      ICNT     =    0
      GO TO    1500
  194 IANS     =    (K2+X3)/(0.0D 00,0.2D 01)**K5
      ICNT     =    62
      GO TO    1500
  195 IANS = -(-(-K2)+(-X3))/(0.1D 01,0.1D 01)**(-2+K5)
      ICNT     =    250
      GO TO    1500
  196 IANS     =    (0.1D 01,0.1D 01)**0
      ICNT     =    1
      GO TO    1500
  197 IANS     =    (0.2D 01,0.1D 01)**1
      ICNT     =    2
      GO TO    1500
  198 IANS     =    (0.0D 00,0.2D 01)**2
      ICNT     =    -4
      GO TO    1500
  199 IANS     =    (0.1D 01,0.1D 01)**3
      ICNT     =    -2
      GO TO    1500
  200 IANS     =    (0.1D 01,0.1D 01)**4
      ICNT     =    -4
      GO TO    1500
      END
