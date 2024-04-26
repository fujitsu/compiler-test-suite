      INTEGER*2     K1,K2,K3,K4,K5
      INTEGER*4     N1,N2,N3,N4,N5
      REAL*4        R1,R2,R3,R4,R5
      REAL*8        D1,D2,D3,D4,D5,RANS,RANS1,RANS2,RANS3
      COMPLEX*8     C1,C2,C3,C4,C5
      COMPLEX*16    G1,G2,G3,G4,G5
      K1    =       500
      K2    =      -250
      K3    =        50
      K4    =       -20
      K5    =         2
      N1    =       800
      N2    =      -400
      N3    =       200
      N4    =       -50
      N5    =         3
      R1    =       0.8E 03
      R2    =      -0.4E 03
      R3    =       0.2E 03
      R4    =      -0.5E 02
      R5    =       0.3E 01
      D1    =       0.8D 01
      D2    =      -0.4D 03
      D3    =       0.2D 03
      D4    =      -0.5D 02
      D5    =       0.3D 01
      C1    =       (0.1E 01,-0.1E01)
      C2    =       (-0.1E 01,0.1E01)
      C3    =      -(0.2E 01,0.0)
      C4    =       (0.0,0.2E 01)
      C5    =       (0.4E 01,0.2E 01)
      G1    =       (0.1D 01,-0.1D 01)
      G2    =       (-0.1D 01,0.1D 01)
      G3    =      -(0.2D 01,0.0D 01)
      G4    =       (0.0D 01,0.2D 01)
      G5    =       (0.4D 01,0.2D 01)
      IPSW1 =       0
      ITEM1 =       0
      ICNST =       0
      ASSIGN 1000 TO J1
 1000 ITEM1 = ITEM1+1
      GO TO   ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *         11,12,13,14,15,16,17,18,19,20,
     *         21,22,23,24,25,26,27,28,29,30,
     *         31,32,33,34,35,36,37,38,39,40,
     *         41,42,43,44,45,46,47,48,49,50,
     *         51,52,53,54,55,56,57,58,59,60,
     *         61,62,63,64,65,66,67,68,69,70,71,72,73,74,75),ITEM1
      IF (IPSW1.NE.0)    GO TO 1001
      WRITE(6,800)
      WRITE(6,808)
      GO TO    1002
 1001 WRITE(6,801)
 1002 IPSW1   =   1
      ICNST   =  75
      ITEM1   =   0
      ASSIGN 1100 TO J1
 1100 ITEM1   =  ITEM1+1
          GO TO    ( 76, 77, 78, 79, 80, 81, 82, 83, 84, 85,
     *               86, 87, 88, 89, 90, 91, 92, 93, 94, 95,
     *               96, 97, 98, 99,100,101,102,103,104,105,
     *              106,107,108,109,110,111,112,113,114,115,
     *              116,117,118,119,120,121,122,123,124,125,
     *              126,127,128,129,130,131,132,133,134,135,
     *          136,137,138,139,140,141,142,143,144,145,146,
     *              147,148,149,150),ITEM1
      IF (IPSW1.NE.1)    GO TO 1101
      WRITE(6,800)
      WRITE(6,809)
      GO TO    1102
 1101 WRITE(6,801)
 1102 IPSW1   =   2
      ICNST   = 150
      ITEM1   =   0
      ASSIGN 1200 TO J1
 1200 ITEM1   =  ITEM1+1
      GO TO   (151,152,153,154,155,156,157,158,159,160,
     *         161,162,163,164,165,166,167,168,169,170,
     *         171,172,173,174,175,176,177,178,179,180,
     *         181,182,183,184,185,186,187,188,189,190,
     *         191,192,193,194,195,196,197,198,199,200,
     *         201,202,203,204,205,206,207,208,209,210,
     *         211,212,213,214,215,216,217,218,219,220,
     *         221,222,223,224,225),ITEM1
      IF (IPSW1.NE.2)    GO TO 1201
      WRITE(6,800)
      WRITE(6,810)
      GO TO 1202
 1201 WRITE(6,801)
 1202 IPSW1   = 3
      ICNST   = 225
      ITEM1   = 0
      ASSIGN 1300 TO J1
 1300 ITEM1 =  ITEM1+1
      GO TO   (226,227,228,229,230,231,232,233,234,235,
     *         236,237,238,239,240,241,242,243,244,245,
     *         246,247,248,249,250,251,252,253,254,255,
     *         256,257,258,259,260,261,262,263,264,265,
     *         266,267,268,269,270,271,272,273,274,275,
     *         276,277,278,279,280,281,282,283,284,285,
     *         286,287,288,289,290,291,292,293,294,295,
     *         296,297,298,299,300),ITEM1
      IF (IPSW1.NE.3)    GO TO  1301
      WRITE(6,800)
      WRITE(6,811)
      GO TO 1302
 1301 WRITE(6,801)
 1302 IPSW1  = 4
      ICNST  = 300
      ITEM1  = 0
      ASSIGN 1400 TO J1
 1400 ITEM1 = ITEM1+1
      GO TO   (301,302,303,304,305,306,307,308,309,310,
     *         311,312,313,314,315,316,317,318,319,320,
     *         321,322,323,324,325,326,327,328,329,330,
     *         331,332,333,334,335,336,337,338,339,340,
     *         341,342,343,344,345,346,347,348,349,350,
     *         351,352,353,354,355,356,357,358,359,360,
     *         361,362,363,364,365,366,367,368,369,370,
     *         371,372,373,374,375),ITEM1
      IF (IPSW1.NE.4)    GO TO 1401
      WRITE(6,800)
      WRITE(6,812)
      STOP
 1401 WRITE(6,801)
      STOP
 1500 RANS2 = RANS1-DABS(RANS1*0.1D-05)
      RANS3 = RANS1+DABS(RANS1*0.1D-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3) GO TO  1507
      IF (IPSW1.EQ.5)    GO TO 1506
      WRITE(6,802)
      IF (IPSW1.EQ.0)    GO TO 1501
      IF (IPSW1.EQ.1)    GO TO 1502
      IF (IPSW1.EQ.2)    GO TO 1503
      IF (IPSW1.EQ.3)    GO TO 1504
      WRITE(6,807)
      GO TO 1505
 1501 WRITE(6,803)
      GO TO 1505
 1502 WRITE(6,804)
      GO TO 1505
 1503 WRITE(6,805)
      GO TO 1505
 1504 WRITE(6,806)
 1505 IPSW1 =  5
      WRITE(6,813)
 1506 ITEM2 = ITEM1+ICNST
      WRITE(6,814) ITEM2,RANS1,RANS
 1507 GO TO J1,(1000,1100,1200,1300,1400)
  800 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0300)
  801 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0300 ***)
  802 FORMAT(1H1/1H0,5X,43H* TEST OF EXPRESSION ( REAL*8 = INTEGER*2 ,)
  803 FORMAT(1H+,49X,24HINTEGER*4 ) ERROR LIST *//)
  804 FORMAT(1H+,49X,21HREAL*4 ) ERROR LIST *//)
  805 FORMAT(1H+,49X,21HREAL*8 ) ERROR LIST *//)
  806 FORMAT(1H+,49X,24HCOMPLEX*8 ) ERROR LIST *//)
  807 FORMAT(1H+,49X,25HCOMPLEX*16 ) ERROR LIST *//)
  808 FORMAT(1H0,10X,38HTYPE IS REAL*8 = INTEGER*2 , INTEGER*4)
  809 FORMAT(1H0,10X,35HTYPE IS REAL*8 = INTEGER*2 , REAL*4)
  810 FORMAT(1H0,10X,35HTYPE IS REAL*8 = INTEGER*2 , REAL*8)
  811 FORMAT(1H0,10X,38HTYPE IS REAL*8 = INTEGER*2 , COMPLEX*8)
  812 FORMAT(1H0,10X,39HTYPE IS REAL*8 = INTEGER*2 , COMPLEX*16)
  813 FORMAT(1H0,5X,7HITEM.NO,5X,15HCONSTANT VALUE.,12X,
     *             13HRESULT VALUE.)
  814 FORMAT(1H0,7X,I5,D20.10,5X,D20.10)
    1 RANS  =  250+32768
      RANS1 =  0.33018D 05
      GO TO    1500
    2 RANS  =  4-327675
      RANS1 =  -0.327671D 06
      GO TO    1500
    3 RANS  =  3*42527
      RANS1 =  0.127581D 06
      GO TO    1500
    4 RANS  =  20/42585
      RANS1 =  0.0D 00
      GO TO    1500
    5 RANS  =  32768**0
      RANS1 =  0.1D 01
      GO TO    1500
    6 RANS  =  -42543**1
      RANS1 =  -0.42543D 05
      GO TO    1500
    7 RANS  =  2**2
      RANS1 =  4.0
      GO TO    1500
    8 RANS  =  4**3
      RANS1 =  0.64D 02
      GO TO    1500
    9 RANS  =  4**4
      RANS1 =  0.256D 03
      GO TO    1500
   10 RANS  =  3**5
      RANS1    =    0.243D 03
      GO TO    1500
   11 RANS  =  +N1
      RANS1 =  0.8D 03
      GO TO    1500
   12 RANS  =  (+N2)
      RANS1 =  -0.4D 03
      GO TO    1500
   13 RANS  =  +(N3)
      RANS1 =  0.2D 03
      GO TO    1500
   14 RANS  =  +(+N4)
      RANS1 =  -0.5D 02
      GO TO    1500
   15 RANS  =  -N5
      RANS1 =  -0.3D 01
      GO TO    1500
   16 RANS  =  (-N1)
      RANS1 =  -0.8D 03
      GO TO    1500
   17 RANS  =  -(N2)
      RANS1 =  0.4D 03
      GO TO    1500
   18 RANS  =  -(-N3)
      RANS1 =  0.2D 03
      GO TO    1500
   19 RANS  =  K1+N5
      RANS1 =  0.503D 03
      GO TO    1500
   20 RANS  =  K2-N4
      RANS1 =  -0.2D 03
      GO TO    1500
   21 RANS  =  K3*N3
      RANS1 =  0.1D 05
      GO TO    1500
   22 RANS  =  K4/N2
      RANS1 =  0.0D 00
      GO TO    1500
   23 RANS  =  (K1+N5)
      RANS1 =  0.503D 03
      GO TO    1500
   24 RANS  =  (K2-(-N4))
      RANS1 =  -0.3D 03
      GO TO    1500
   25 RANS  =  -(-K3*N3)
      RANS1 =  0.1D 05
      GO TO    1500
   26 RANS  =  -((-K4)/(-N2))
      RANS1 =  0.0D 00
      GO TO    1500
   27 RANS  =  K1+(-1234567)
      RANS1 =  -0.1234067D 07
      GO TO    1500
   28 RANS  =  +(-250)-(-N4)
      RANS1 =  -0.3D 03
      GO TO    1500
   29 RANS  =  +((-50)*(-N3))
      RANS1 =  0.1D 05
      GO TO    1500
   30 RANS  =  -(+(-K4)/(-427625))
      RANS1 =  0.0D 00
      GO TO    1500
   31 RANS  =  K1+(N4+N5)
      RANS1 =  0.453D 03
      GO TO    1500
   32 RANS  =  K2-(N3+N2)
      RANS1 =  -0.5D 02
      GO TO    1500
   33 RANS  =  K3*(N1+N2)
      RANS1 =  0.2D 05
      GO TO    1500
   34 RANS  =  K4/(N5-(-N4))
      RANS1 =  0.0D 00
      GO TO    1500
   35 RANS  =  +(-(K1+((-N4)+N5)))
      RANS1 =  -0.553D 03
      GO TO    1500
   36 RANS  =  -(+(-(-K2-(N3+(-N2)))))
      RANS1 =  -0.35D 03
      GO TO    1500
   37 RANS  =  -(+(-(+((-K3)*((-N1)+(-N2))))))
      RANS1 =  0.2D 05
      GO TO 1500
   38 RANS = K4/((-N5)-(-N4))
      RANS1 =  0.0D 00
      GO TO    1500
   39 RANS  =  K1+(N4+32768)
      RANS1 =  0.33218D 05
      GO TO    1500
   40 RANS  =  K2-(32768+N5)
      RANS1 =  -0.33021D 05
      GO TO    1500
   41 RANS  =  50*(N1+32768)
      RANS1 =  0.16784D 07
      GO TO    1500
   42 RANS  =  (-20)/(32768+N4)
      RANS1 =  0.0D 00
      GO TO    1500
   43 RANS  =  (K1+K2)+N1
      RANS1 =  0.105D 04
      GO TO    1500
   44 RANS  =  (K2+K3)-N2
      RANS1 =  0.2D 03
      GO TO    1500
   45 RANS  =  (K4+K5)*N3
      RANS1 =  -0.36D 04
      GO TO    1500
   46 RANS  =  (K2+K4)/N4
      RANS1 =  0.5D 01
      GO TO    1500
   47 RANS  =  (K1-(-K2))+N1
      RANS1 =  0.105D 04
      GO TO    1500
   48 RANS  =  ((-(-K2)-(-K3))+(-N2))
      RANS1 =  0.2D 03
      GO TO    1500
   49 RANS  =  (-(-K4)+K5)*N3
      RANS1 =  -0.36D 04
      GO TO    1500
   50 RANS  =  -(K2+K4)/(-N4)
      RANS1 =  0.5D 01
      GO TO    1500
   51 RANS  =  (K1+(-250))+N1
      RANS1 =  0.105D 04
      GO TO    1500
   52 RANS  =  ((-250)+K3)-N2
      RANS1 =  0.2D 03
      GO TO    1500
   53 RANS  =  (K4+K5)*32768
      RANS1    =   -0.589824D 06
      GO TO    1500
   54 RANS  =  (-(-K2)+(-50))/(-32770)
      RANS1 =  0.0D 00
      GO TO    1500
   55 RANS  =  N1**0
      RANS1 =  0.1D 01
      GO TO    1500
   56 RANS  =  N2**1
      RANS1 = -0.4D 03
      GO TO    1500
   57 RANS  =  N3**3
      RANS1 =  0.8D 07
      GO TO    1500
   58 RANS  =  N4**4
      RANS1 =  0.625D 07
      GO TO    1500
   59 RANS  =  N5**5
      RANS1 =  0.243D 03
      GO TO    1500
   60 RANS  =  N5**K5
      RANS1 =  0.9D  01
      GO TO    1500
   61 RANS  =  (N1-N2)**0
      RANS1 =  0.1D 01
      GO TO    1500
   62 RANS  =  (N2+N3)**1
      RANS1 =  -0.2D 03
      GO TO    1500
   63 RANS  =  (N4+45)**2
      RANS1 =  0.25D 02
      GO TO    1500
   64 RANS  =  (-45+(-N4))**3
      RANS1 =  0.125D 03
      GO TO    1500
   65 RANS  = (N5*N5)**4
      RANS1 =  0.6561D 04
      GO TO    1500
   66 RANS  =  (N1-(795+N5))**5
      RANS1 =  0.32D 02
      GO TO    1500
   67 RANS  =  ((N1+N2)/(-N4))**(3-K5)
      RANS1 =  0.8D 01
      GO TO    1500
   68 RANS  =  (K1+K2)+(N1+N2)
      RANS1 =  0.65D 03
      GO TO    1500
   69 RANS  =  (K2+K3)-(N2+N3)
      RANS1 =  0.0D 00
      GO TO    1500
   70 RANS  =  (K3+K4)*(N4+N5)
      RANS1 =  -0.1410D 04
      GO TO    1500
   71 RANS  =  (K4+K5)/(N4+N5)
      RANS1 =  0.0D 00
      GO TO    1500
   72 RANS  =  (K1+(-250))+(N1+N2)
      RANS1 =  0.65D 03
      GO TO    1500
   73 RANS  =  ((-250)+K3)-(N2+N3)
      RANS1 =  0.0D 00
      GO TO    1500
   74 RANS  =  (K3+(-20))*(N4-(-3))
      RANS1 =  -0.141D 04
      GO TO    1500
   75 RANS  =  (K4+K5)/((-50)+N5)
      RANS1 =  0.0D 00
      GO TO    1500
   76 RANS  =  7+5.6
      RANS1 =  0.126D 02
      GO TO    1500
   77 RANS  =  8-(+6.2)
      RANS1 =  0.18D 01
      GO TO    1500
   78 RANS  =  15*(0.25E 01)
      RANS1 =  0.375D 02
      GO TO    1500
   79 RANS  =  30/.25E 00
      RANS1 =  0.12D 03
      GO TO    1500
   80 RANS  =  K1+R5
      RANS1 =  0.503D 03
      GO TO    1500
   81 RANS  =  K2-R4
      RANS1 =  -0.2D 03
      GO TO    1500
   82 RANS  =  K3*R3
      RANS1 =  0.10D 05
      GO TO    1500
   83 RANS  =  K4/R2
      RANS1 =  0.50D-01
      GO TO    1500
   84 RANS  =  (K1+R5)
      RANS1 =  0.503D 03
      GO TO    1500
   85 RANS  = -(K2-(-R4))
      RANS1 =  0.30D 03
      GO TO    1500
   86 RANS  =  ((-K3)*R3)
      RANS1 =  -0.10D 05
      GO TO     1500
   87 RANS  =  -((-K4)/(-R2))
      RANS1 =  -0.5D-01
      GO TO    1500
   88 RANS  =  K1+0.3E 01
      RANS1 =  0.503D 03
      GO TO    1500
   89 RANS  =  K2-(-0.5E 02)
      RANS1 =  -0.2D 03
      GO TO    1500
   90 RANS  =  -(50*R3)
      RANS1 =  -0.1D 05
      GO TO    1500
   91 RANS  =  ((-20)/R2)
      RANS1 =  0.5D-01
      GO TO    1500
   92 RANS  =  K1+(R1+R2)
      RANS1 =  0.9D 03
      GO TO    1500
   93 RANS  =  K2-(R2+R3)
      RANS1 =  -0.5D 02
      GO TO    1500
   94 RANS  =  K4*(R4+R5)
      RANS1 =  0.94D 03
      GO TO    1500
   95 RANS  =  K5/(R1+R2)
      RANS1 =  0.5D-02
      GO TO    1500
   96 RANS  =  (K1+K2)+R1
      RANS1 =  0.1050D 04
      GO TO    1500
   97 RANS  =  (K1+K2)-R2
      RANS1 =  0.65D 03
      GO TO    1500
   98 RANS  =  (K2+K3)*R3
      RANS1 =  -0.4D 05
      GO TO    1500
   99 RANS  =  (K4+K5)/R4
      RANS1 =  0.36D 00
      GO TO    1500
  100 RANS  =  (K1+K2)+(R1+R2)
      RANS1 =  0.65D 03
      GO TO    1500
  101 RANS  =  (K2+K3)-(R2+R3)
      RANS1 =  0.0D 00
      GO TO    1500
  102 RANS  =  (K3+K4)*(R4+R5)
      RANS1 =  -0.1410D 04
      GO TO    1500
  103 RANS  =  (K1+K5)/(R2+R3)
      RANS1 = -0.251D 01
      GO TO    1500
  104 RANS  =  +R1
      RANS1 =  0.8D  03
      GO TO    1500
  105 RANS  =  (+R2)
      RANS1 =  -0.4D 03
      GO TO    1500
  106 RANS  =  +(R3)
      RANS1 =  0.2D 03
      GO TO    1500
  107 RANS  =  +(+R4)
      RANS1 =  -0.5D 02
      GO TO    1500
  108 RANS  =  +(-R5)
      RANS1 =  -0.3D 01
      GO TO    1500
  109 RANS  =  -R1
      RANS1 =  -0.8D 03
      GO TO    1500
  110 RANS  =  (-R2)
      RANS1 =  0.4D  03
      GO TO    1500
  111 RANS  =  -(R3)
      RANS1 =  -0.2D 03
      GO TO    1500
  112 RANS  =  -(-R4)
      RANS1 =  -0.5D 02
      GO TO    1500
  113 RANS  =  -(+R5)
      RANS1 =  -0.3D 01
      GO TO    1500
  114 RANS  =  R1**0
      RANS1 =  0.1D 01
      GO TO    1500
  115 RANS  =  R2**1
      RANS1 =  -0.4D 03
      GO TO    1500
  116 RANS  =  R3**2
      RANS1 =  0.4D 05
      GO TO    1500
  117 RANS  =  R4**3
      RANS1 =  -0.125D 06
      GO TO    1500
  118 RANS  =  R5**5
      RANS1 =  0.243D 03
      GO TO    1500
  119 RANS  =  (K1+R1)**0
      RANS1 =  0.1D  01
      GO TO    1500
  120 RANS  =  (K2+(-R3))**1
      RANS1 =  -0.45D 03
      GO TO    1500
  121 RANS  =  ((K3+K4)*R5)**2
      RANS1 =  0.81D  04
      GO TO    1500
  122 RANS  =  (K3-(-(R4+R5)))**3
      RANS1 =  0.27D 02
      GO TO    1500
  123 RANS  =  ((K2+K4)/(-R5))**4
      RANS1 =  0.6561D 08
      GO TO    1500
  124 RANS  =  (K1/(R4+R5+547))**5
      RANS1 =  0.1D 01
      GO TO    1500
  125 RANS  =  R4**K5
      RANS1 =  0.25D 04
      GO TO    1500
  126 RANS  =  0.2E 02**0
      RANS1 =  0.1D  01
      GO TO    1500
  127 RANS  =  0.2E 02**1
      RANS1 =  0.2D 02
      GO TO    1500
  128 RANS  =  0.2E 01**2
      RANS1 =  0.4D 01
      GO TO    1500
  129 RANS  =  0.2E 01**3
      RANS1 =  0.8D 01
      GO TO    1500
  130 RANS  =  0.2E 01**4
      RANS1 =  0.16D 02
      GO TO    1500
  131 RANS  =  0.2E 01**5
      RANS1 =  0.32D 02
      GO TO    1500
  132 RANS  =  (0.2E 01**K5)**(N5*R5-7)
      RANS1 =  0.16D 02
      GO TO    1500
  133 RANS  =  K1+(R1+(-400))
      RANS1 =  0.9D 03
      GO TO    1500
  134 RANS  =  K2-((-400)+R1)
      RANS1 =  -0.65D 03
      GO TO    1500
  135 RANS  =  -20*(R4+R5)
      RANS1 =  0.94D  03
      GO TO    1500
  136 RANS  =  2/(0.8E 03+R2)
      RANS1 =  0.5D-02
      GO TO    1500
  137 RANS  =  (K1+(-250))+R1
      RANS1 =  0.1050D 04
      GO TO    1500
  138 RANS  =  ((-250)+K3)*R3
      RANS1 =  -0.4D 05
      GO TO    1500
  139 RANS  =  (K1+(-250))-.2E 03
      RANS1 =  0.5D 02
      GO TO    1500
  140 RANS  =  -(-20+2)/(-R4)
      RANS1 =  0.36D 00
      GO TO    1500
  141 RANS  =  (K1+(-250))+(R1+R2)
      RANS1 =  0.65D 03
      GO TO    1500
  142 RANS  =  (K2+K3)-(R1+(-0.4E 03))
      RANS1 =  -0.6D 03
      GO TO    1500
  143 RANS  =  (50+K4)*(-0.5E 02+R5)
      RANS1 = -0.1410D 04
      GO TO    1500
  144 RANS  =  (K1+2)/(R2+.2E 03)
      RANS1 = -0.251D 01
      GO TO    1500
  145 RANS  =  (+(-K1+(-R1))+(-(-R2)+(-K2)))
      RANS1 =  -0.1450D 04
      GO TO    1500
  146 RANS  =  -(-(+K1)-(-K2))-(-K2+R2)
      RANS1 = 0.9D 03
      GO TO    1500
  147 RANS  =  +(-(+K2)*(-K3))*(K2+(-R3))
      RANS1 =  0.5625D 07
      GO TO    1500
  148 RANS  =  (K1*(-R2))/2.0
      RANS1    =  0.1D 06
      GO TO    1500
  149 RANS  =  (K2+R3)/(2.0)**K5
      RANS1    =   -0.125D 02
      GO TO    1500
  150 RANS  =  -(-(-K2)+(-R3))/(-2.0)**(-2.0+K5)
      RANS1 =  0.45D 03
      GO TO    1500
  151 RANS  =  7+0.56D 01
      RANS1 =  0.126D 02
      GO TO    1500
  152 RANS  =  8-(+0.62D 01)
      RANS1 =  0.18D 01
      GO TO    1500
  153 RANS  =  15*(0.25D 01)
      RANS1 =  0.375D 02
      GO TO    1500
  154 RANS  =  30/0.25D 00
      RANS1 =  0.12D 03
      GO TO    1500
  155 RANS  =  K1+D5
      RANS1 =  0.503D 03
      GO TO    1500
  156 RANS  =  K2-D4
      RANS1 =  -0.2D 03
      GO TO    1500
  157 RANS  =  K3*D3
      RANS1 =  0.10D 05
      GO TO 1500
  158 RANS  =  K4/D2
      RANS1 = 0.5D-01
      GO TO    1500
  159 RANS  =  (K1+D5)
      RANS1 =  0.503D 03
      GO TO    1500
  160 RANS  =  -(K2-(-D4))
      RANS1 =  0.30D 03
      GO TO    1500
  161 RANS  =  ((-K3)*D3)
      RANS1 =  -0.10D 05
      GO TO    1500
  162 RANS  =  -((-K4)/(-D2))
      RANS1    =   -0.5D-01
      GO TO    1500
  163 RANS  =  K1+0.3D 01
      RANS1 =  0.503D 03
      GO TO    1500
  164 RANS  =  K2-(-0.5D 02)
      RANS1 =  -0.2D 03
      GO TO    1500
  165 RANS  =  -(50*D3)
      RANS1 =  -0.1D 05
      GO TO    1500
  166 RANS  =  ((-20)/D2)
      RANS1    =   0.5D-01
      GO TO    1500
  167 RANS  =  K1+(D1+D2)
      RANS1    =   0.108D 03
      GO TO    1500
  168 RANS  =  K2-(D2+D3)
      RANS1 =  -0.5D 02
      GO TO    1500
  169 RANS  =  K4*(D4+D5)
      RANS1 =  0.94D 03
      GO TO    1500
  170 RANS  =  K5/(D1+D2)
      RANS1 = -0.5102040816D-02
      GO TO    1500
  171 RANS  =  (K1+K2)+D1
      RANS1    =   0.258D 03
      GO TO    1500
  172 RANS  =  (K1+K2)-D2
      RANS1 =  0.65D 03
      GO TO    1500
  173 RANS  =  (K2+K3)*D3
      RANS1 =  -0.4D 05
      GO TO    1500
  174 RANS  =  (K4+K5)/D4
      RANS1 =  0.36D 00
      GO TO    1500
  175 RANS  =  (K1+K2)+(D1+D2)
      RANS1    =   -0.142D 03
      GO TO    1500
  176 RANS  =  (K2+K3)-(D2+D3)
      RANS1 =  0.0D 00
      GO TO    1500
  177 RANS  =  (K3+K4)*(D4+D5)
      RANS1 =  -0.1410D 04
      GO TO    1500
  178 RANS  =  (K1+K5)/(D2+D3)
      RANS1    =   -0.251D 01
      GO TO    1500
  179 RANS  =  +D1
      RANS1    =   0.8D 01
      GO TO    1500
  180 RANS  =  (+D2)
      RANS1 =  -0.4D 03
      GO TO    1500
  181 RANS  =  +(D3)
      RANS1 =  0.2D 03
      GO TO    1500
  182 RANS  =  +(+D4)
      RANS1 =  -0.5D 02
      GO TO    1500
  183 RANS  =  +(-D5)
      RANS1 =  -0.3D 01
      GO TO    1500
  184 RANS  =  -D1
      RANS1    =   -0.8D 01
      GO TO    1500
  185 RANS  =  (-D2)
      RANS1 =  0.4D 03
      GO TO    1500
  186 RANS  =  -(D3)
      RANS1 =  -0.2D 03
      GO TO    1500
  187 RANS  =  -(-D4)
      RANS1 =  -0.5D 02
      GO TO    1500
  188 RANS  =  -(+D5)
      RANS1 =  -0.3D 01
      GO TO    1500
  189 RANS  =  D1**0
      RANS1 =  0.1D 01
      GO TO    1500
  190 RANS  =  D2**1
      RANS1 =  -0.4D 03
      GO TO    1500
  191 RANS  =  D3**2
      RANS1 =  0.4D  05
      GO TO    1500
  192 RANS  =  D4**3
      RANS1 =  -0.125D 06
      GO TO    1500
  193 RANS  =  D5**5
      RANS1 =  0.243D 03
      GO TO    1500
  194 RANS  =  (K1+D1)**0
      RANS1 =  0.1D 01
      GO TO    1500
  195 RANS  =  (K2+(-D3))**1
      RANS1 =  -0.45D 03
      GO TO    1500
  196 RANS  =  ((K3+K4)*D5)**2
      RANS1 =  0.81D 04
      GO TO    1500
  197 RANS  =  (K3-(-(D4+D5)))**3
      RANS1 =  0.27D 02
      GO TO    1500
  198 RANS  =  ((K2+K4)/(-D5))**4
      RANS1 =  0.6561D 08
      GO TO    1500
  199 RANS     =   (K1/(D4+D5+547))**5
      RANS1 =  0.1D 01
      GO TO    1500
  200 RANS  = D4**K5
      RANS1 =  0.25D 04
      GO TO    1500
  201 RANS  =  0.2D 02**0
      RANS1 =  0.1D 01
      GO TO    1500
  202 RANS  =  0.2D 02**1
      RANS1 =  0.2D 02
      GO TO    1500
  203 RANS  =  0.2D 01**2
      RANS1    =   0.4D 01
      GO TO    1500
  204 RANS  =  0.2D 01**3
      RANS1    =   0.8D 01
      GO TO    1500
  205 RANS  =  0.2D 01**4
      RANS1 =  0.16D 02
      GO TO    1500
  206 RANS  =  0.2D 01**5
      RANS1 =  0.32D 02
      GO TO    1500
  207 RANS  =  (0.2D 01**K5)**(N5*D5-7)
      RANS1 =  0.16D 02
      GO TO    1500
  208 RANS  =  K1+(D1+(-400))
      RANS1    =   0.108D 03
      GO TO    1500
  209 RANS  =  K2-((-400)+D1)
      RANS1    =   0.142D 03
      GO TO    1500
  210 RANS  =  -20*(D4+D5)
      RANS1 =  0.94D 03
      GO TO    1500
  211 RANS  =  2/(0.8D 03+D2)
      RANS1 =  0.5D-02
      GO TO    1500
  212 RANS  =  (K1+(-250))+D1
      RANS1    =   0.258D 03
      GO TO    1500
  213 RANS  =  ((-250)+K3)*D3
      RANS1 =  -0.4D 05
      GO TO    1500
  214 RANS  =  (K1+(-250))-0.2D 03
      RANS1 =  0.5D 02
      GO TO    1500
  215 RANS  =  -(-20+2)/(-D4)
      RANS1 =  0.36D 00
      GO TO    1500
  216 RANS  =  (K1+(-250))+(D1+D2)
      RANS1    =   -0.142D 03
      GO TO    1500
  217 RANS  =  (K2+K3)-(D1+(-0.4D 03))
      RANS1    =   0.192D 03
      GO TO    1500
  218 RANS  =  (50+K4)*(-0.5D 02+D5)
      RANS1    =   -0.1410D 04
      GO TO    1500
  219 RANS  =  (K1+2)/(D2+0.2D 03)
      RANS1    =   -0.251D 01
      GO TO    1500
  220 RANS  =  (+(-K1+(-D1))+(-(-D2)+(-K2)))
      RANS1    =   -0.658D 03
      GO TO    1500
  221 RANS  =  -(-(+K1)-(-K2))-(-K2+D2)
      RANS1    =   0.9D 03
      GO TO    1500
  222 RANS  =  +(-(+K2)*(-K3))*(K2+(-D3))
      RANS1 =  0.5625D 07
      GO TO    1500
  223 RANS  =  (K1*(-D2))/0.2D 01
      RANS1    =   0.1D 06
      GO TO    1500
  224 RANS  =  (K2+D3)/0.2D 01**K5
      RANS1    =   -0.125D 02
      GO TO    1500
  225 RANS  =  -(-(-K2)+(-R3))/(-0.2D 01)**(-0.2D 01+K5)
      RANS1 =  0.45D 03
      GO TO    1500
  226 RANS  =  8+(2.0,0.0)
      RANS1    =   0.1D 02
      GO TO    1500
  227 RANS  =  10-(0.25E 01,0.3E 00)
      RANS1 =  0.75D 01
      GO TO    1500
  228 RANS  =  15*(0.12E 01,0.4E 02)
      RANS1 =  0.18D 02
      GO TO    1500
  229 RANS  =  150/(0.4E 01,0.2E 01)
      RANS1    =   0.30D 02
      GO TO    1500
  230 RANS  =  (0.2E 01,0.4E 01)**0
      RANS1 =  0.1D 01
      GO TO    1500
  231 RANS  =  (0.4E 01,0.2E 01)**1
      RANS1 =  0.4D 01
      GO TO    1500
  232 RANS  =  (0.1E 01,-0.1E 01)**2
      RANS1 =  0.0D 00
      GO TO    1500
  233 RANS  =  (0.1E 01,-0.1E 01)**3
      RANS1 =  -0.2D 01
      GO TO    1500
  234 RANS  =  (0.1E 01,-0.1E 01)**4
      RANS1 =  -0.4D 01
      GO TO    1500
  235 RANS  =  (0.1E 01,-0.1E 01)**5
      RANS1 =  -0.4D 01
      GO TO    1500
  236 RANS  =  +C1
      RANS1 =  0.1D 01
      GO TO    1500
  237 RANS  =  (+C2)
      RANS1 = -0.1D 01
      GO TO    1500
  238 RANS  =  +(C3)
      RANS1 =  -0.2D 01
      GO TO    1500
  239 RANS  =  +(+C4)
      RANS1 =  0.0D 00
      GO TO    1500
  240 RANS  =  -C5
      RANS1 =  -0.4D 01
      GO TO    1500
  241 RANS  =  (-C1)
      RANS1 =  -0.1D 01
      GO TO    1500
  242 RANS  =  -(C2)
      RANS1 =  0.1D 01
      GO TO    1500
  243 RANS  =  -(-C3)
      RANS1 =  -0.2D 01
      GO TO    1500
  244 RANS  =  K1+C5
      RANS1 =  0.504D 03
      GO TO    1500
  245 RANS  =  K2-C4
      RANS1 =  -0.25D 03
      GO TO    1500
  246 RANS  =  K3*C3
      RANS1 =  -0.1D 03
      GO TO    1500
  247 RANS  =  K4/C2
      RANS1 =  0.1D 02
      GO TO    1500
  248 RANS  =  (K1+C5)
      RANS1 =  0.504D 03
      GO TO    1500
  249 RANS  =  (K2-(-C4))
      RANS1 =  -0.25D 03
      GO TO    1500
  250 RANS  =  -(-K3*C3)
      RANS1 =  -0.1D 03
      GO TO    1500
  251 RANS  =  -((-K4)/(-C2))
      RANS1 =  -0.1D 02
      GO TO    1500
  252 RANS  =  K1+(-0.1E 01,-0.1E 01)
      RANS1 =  0.499D 03
      GO TO    1500
  253 RANS  =  +(-250)-(-C4)
      RANS1 =  -0.25D 03
      GO TO    1500
  254 RANS  =  +((-50)*(-C3))
      RANS1 = -0.1D 03
      GO TO    1500
  255 RANS  =  -(+(-K4)/(-(0.2E 01,0.0E 00)))
      RANS1    =   0.1D 02
      GO TO    1500
  256 RANS  =  K1+(C4+C5)
      RANS1 =  0.504D 03
      GO TO    1500
  257 RANS  =  K2-(C3+C2)
      RANS1 =  -0.247D 03
      GO TO    1500
  258 RANS  =  K3*(C1+C2)
      RANS1 =  0.0D 00
      GO TO    1500
  259 RANS  =  K4/(C5-(-C4))
      RANS1    =   -0.25D 01
      GO TO    1500
  260 RANS  =  +(-(K1+((-C4)+C5)))
      RANS1 =  -0.504D 03
      GO TO    1500
  261 RANS  =  -(+(-(-K2-(C3+(-C2)))))
      RANS1    =   0.251D 03
      GO TO    1500
  262 RANS  =  -(+(-(+((-K3)*((-C1)+(-C2))))))
      RANS1 =  0.0D 00
      GO TO    1500
  263 RANS  =  K4/((-C5)-(-C4))
      RANS1 =  0.5D 01
      GO TO    1500
  264 RANS  =  K1+(C4+(0.1E 01,0.1E 01))
      RANS1    =   0.501D 03
      GO TO    1500
  265 RANS  =  K2-((0.4E 01,0.2E 01)+C5)
      RANS1 =  -0.258D 03
      GO TO    1500
  266 RANS  =  50*(C1+(0.1E 02,-0.5E 01))
      RANS1 =  0.550D 03
      GO TO    1500
  267 RANS  =  (-20)/((0.2E 01,0.4E 01)+C4)
      RANS1 =  -0.1D 01
      GO TO    1500
  268 RANS  =  (K1+K2)+C1
      RANS1 =  0.251D 03
      GO TO    1500
  269 RANS  =  (K2+K3)-C2
      RANS1 =  -0.199D 03
      GO TO    1500
  270 RANS  =  (K4+K5)*C3
      RANS1 =  0.36D 02
      GO TO    1500
  271 RANS  =  (K2+K4)/C4
      RANS1 =  0.0D 00
      GO TO    1500
  272 RANS  =  (K1-(-K2))+C1
      RANS1 =  0.251D 03
      GO TO    1500
  273 RANS  =  ((-(-K2)-(-K3))+(-C2))
      RANS1 =  -0.199D 03
      GO TO    1500
  274 RANS  =  (-(-K4)+K5)*C3
      RANS1 =  0.36D 02
      GO TO    1500
  275 RANS  =  -(K2+K4)/(-C4)
      RANS1 =  0.0D 00
      GO TO    1500
  276 RANS  =  (K1+(-250))+C1
      RANS1 =  0.251D 03
      GO TO    1500
  277 RANS  =  ((-250)+K3)-C2
      RANS1 =  -0.199D 03
      GO TO    1500
  278 RANS  =  (K4+K5)*(0.1E 01,0.4E 01)
      RANS1 =  -0.18D 02
      GO TO    1500
  279 RANS  =  (-(-K2)+(-50))/(0.0E 00,-0.2E 01)
      RANS1 =  0.0D 00
      GO TO    1500
  280 RANS  =  C1**0
      RANS1 =  0.1D 01
      GO TO    1500
  281 RANS  =  C2**1
      RANS1 =  -0.1D 01
      GO TO    1500
  282 RANS  =  C3**2
      RANS1 =  0.4D 01
      GO TO    1500
  283 RANS  =  C4**3
      RANS1 =  0.0D 00
      GO TO    1500
  284 RANS  =  C5**4
      RANS1    =   -0.112D 03
      GO TO    1500
  285 RANS  =  C1**5
      RANS1    =   -0.4D 01
      GO TO    1500
  286 RANS  =  C2**K5
      RANS1 =  0.0D 00
      GO TO    1500
  287 RANS  =  (C1-C2)**0
      RANS1 =  0.1D 01
      GO TO    1500
  288 RANS  =  (C2+C3)**1
      RANS1 =  -0.3D 01
      GO TO    1500
  289 RANS  =  (C4+(-0.2E 01,0.4E 01))**2
      RANS1 =  -0.32D 02
      GO TO    1500
  290 RANS  =  ((-0.2E 01,0.4E 01)+C4)**3
      RANS1 =  0.208D 03
      GO TO    1500
  291 RANS  =  (C5*C5)**4
      RANS1 =  -0.134912D 06
      GO TO    1500
  292 RANS  =  (C1-((0.2E 01,-0.2E 01)+C5))**5
      RANS1    =   -0.19D 04
      GO TO    1500
  293 RANS  =  ((C1+C2)/(-C4))**(3-K5)
      RANS1 =  0.0D  00
      GO TO    1500
  294 RANS  =  (K1+K2)+(C1+C2)
      RANS1    =   0.25D 03
      GO TO    1500
  295 RANS  =  (K2+K3)-(C2+C3)
      RANS1 =  -0.197D 03
      GO TO    1500
  296 RANS  =  (K3+K4)*(C4+C5)
      RANS1 =  0.12D 03
      GO TO    1500
  297 RANS  =  (K4+K5)/(C4+C5)
      RANS1    =   -0.225D 01
      GO TO    1500
  298 RANS  =  (K1+(-250))+(C1+C2)
      RANS1 =  0.25D 03
      GO TO    1500
  299 RANS  =  ((-250)+K3)-(C2+C3)
      RANS1 =  -0.197D 03
      GO TO    1500
  300 RANS  =  (K3-(-20))*(C4-(-3))
      RANS1 =  0.21D 03
      GO TO    1500
  301 RANS  =  8+(0.2D 01,0.0D 00)
      RANS1    =   0.1D 02
      GO TO    1500
  302 RANS  =  10-(0.25D 01,0.3D 01)
      RANS1 =  0.75D 01
      GO TO    1500
  303 RANS  =  15*(0.12D 01,0.4D 02)
      RANS1 =  0.18D 02
      GO TO    1500
  304 RANS  =  150/(0.4D 01,0.2D 01)
      RANS1    =   0.3D 02
      GO TO    1500
  305 RANS  =  (0.2D 01,0.4D 01)**0
      RANS1 =  0.1D 01
      GO TO    1500
  306 RANS  =  (0.4D 01,0.2D 01)**1
      RANS1 =  0.4D 01
      GO TO    1500
  307 RANS  =  (0.1D 01,-0.1D 01)**2
      RANS1 =  0.0D 00
      GO TO    1500
  308 RANS  =  (0.1D 01,-0.1D 01)**3
      RANS1 =  -0.2D 01
      GO TO    1500
  309 RANS  =  (0.1D 01,-0.1D 01)**4
      RANS1 =  -0.4D 01
      GO TO    1500
  310 RANS  =  (0.1D 01,-0.1D 01)**5
      RANS1 =  -0.4D 01
      GO TO    1500
  311 RANS  =  +G1
      RANS1 =  0.1D 01
      GO TO    1500
  312 RANS  =  (+G2)
      RANS1 =  -0.1D 01
      GO TO    1500
  313 RANS  =  +(G3)
      RANS1 =  -0.2D 01
      GO TO    1500
  314 RANS  =  +(+G4)
      RANS1 =  0.0D 00
      GO TO    1500
  315 RANS  =  -G5
      RANS1 =  -0.4D 01
      GO TO    1500
  316 RANS  =  (-G1)
      RANS1 =  -0.1D 01
      GO TO    1500
  317 RANS  =  -(G2)
      RANS1 =  0.1D 01
      GO TO    1500
  318 RANS  =  -(-G3)
      RANS1 =  -0.2D 01
      GO TO    1500
  319 RANS  =  K1+G5
      RANS1 =  0.504D 03
      GO TO    1500
  320 RANS  =  K2-G4
      RANS1 =  -0.25D 03
      GO TO    1500
  321 RANS  =  K3*G3
      RANS1 =  -0.1D 03
      GO TO    1500
  322 RANS  =  K4/G2
      RANS1 =  0.1D 02
      GO TO    1500
  323 RANS  =  (K1+G5)
      RANS1 =  0.504D 03
      GO TO    1500
  324 RANS  =  (K2-(-G4))
      RANS1 =  -0.25D 03
      GO TO    1500
  325 RANS  =  -(-K3*G3)
      RANS1 =  -0.1D 03
      GO TO    1500
  326 RANS  =  -((-K4)/(-G2))
      RANS1 =  -0.1D 02
      GO TO    1500
  327 RANS  =  K1+(-0.1D 01,-0.1D 01)
      RANS1 =  0.499D 03
      GO TO    1500
  328 RANS  =  +(-250)-(-G4)
      RANS1 =  -0.25D 03
      GO TO    1500
  329 RANS  =  +((-50)*(-G3))
      RANS1 =  -0.1D 03
      GO TO    1500
  330 RANS  =  -(+(-K4)/(-(0.2D 01,0.0D 00)))
      RANS1    =   0.1D 02
      GO TO    1500
  331 RANS  =  K1+(G4+G5)
      RANS1 =  0.504D 03
      GO TO    1500
  332 RANS  =  K2-(G3+G2)
      RANS1 =  -0.247D 03
      GO TO    1500
  333 RANS  =  K3*(G1+G2)
      RANS1 =  0.0D 00
      GO TO    1500
  334 RANS  =  K4/(G5-(-G4))
      RANS1    =   -0.25D 01
      GO TO    1500
  335 RANS  =  +(-(K1+((-G4)+G5)))
      RANS1 =  -0.504D 03
      GO TO    1500
  336 RANS  =  -(+(-(-K2-(G3+(-G2)))))
      RANS1    =   0.251D 03
      GO TO    1500
  337 RANS  =  -(+(-(+((-K3)*((-G1)+(-G2))))))
      RANS1 =  0.0D 00
      GO TO    1500
  338 RANS  =  K4/((-G5)-(-G4))
      RANS1 =  0.5D 01
      GO TO    1500
  339 RANS  =  K1+(G4+(0.1D 01,0.1D 01))
      RANS1    =   0.501D 03
      GO TO    1500
  340 RANS  =  K2-((0.4D 01,0.2D 01)+G5)
      RANS1 =  -0.258D 03
      GO TO    1500
  341 RANS  =  50*(G1+(0.1D 02,-0.5D 01))
      RANS1 =  0.550D 03
      GO TO    1500
  342 RANS  =  (-20)/((0.2D 01,0.4D 01)+G4)
      RANS1 =  -0.1D 01
      GO TO    1500
  343 RANS  =  (K1+K2)+G1
      RANS1 =  0.251D 03
      GO TO    1500
  344 RANS  =  (K2+K3)-G2
      RANS1 =  -0.199D 03
      GO TO    1500
  345 RANS  =  (K4+K5)*G3
      RANS1 =  0.36D 02
      GO TO    1500
  346 RANS  =  (K2+K4)/G4
      RANS1 =  0.0D 00
      GO TO    1500
  347 RANS  =  (K1-(-K2))+G1
      RANS1 =  0.251D 03
      GO TO    1500
  348 RANS  =  ((-(-K2)-(-K3))+(-G2))
      RANS1 =  -0.199D 03
      GO TO    1500
  349 RANS  =  (-(-K4)+K5)*G3
      RANS1 =  0.36D 02
      GO TO    1500
  350 RANS  =  -(K2+K4)/(-G4)
      RANS1 =  0.0D 00
      GO TO    1500
  351 RANS  =  (K1+(-250))+G1
      RANS1 =  0.251D 03
      GO TO    1500
  352 RANS  =  ((-250)+K3)-G2
      RANS1 =  -0.199D 03
      GO TO    1500
  353 RANS  =  (K4+K5)*(0.1D 01,0.4D 01)
      RANS1 =  -0.18D 02
      GO TO    1500
  354 RANS  =  (-(-K2)+(-50))/(0.0D 00,-0.2D 01)
      RANS1 =  0.0D 00
      GO TO    1500
  355 RANS  =  G1**0
      RANS1 =  0.1D 01
      GO TO    1500
  356 RANS  =  G2**1
      RANS1 =  -0.1D 01
      GO TO    1500
  357 RANS  =  G3**2
      RANS1 =  0.4D 01
      GO TO    1500
  358 RANS  =  G4**3
      RANS1 =  0.0D 00
      GO TO    1500
  359 RANS  =  G5**4
      RANS1    =   -0.112D 03
      GO TO    1500
  360 RANS  =  G1**5
      RANS1    =   -0.4D 01
      GO TO    1500
  361 RANS  =  G2**K5
      RANS1 =  0.0D 00
      GO TO    1500
  362 RANS  =  (G1-G2)**0
      RANS1 =  0.1D 01
      GO TO    1500
  363 RANS  =  (G2+G3)**1
      RANS1 =  -0.3D 01
      GO TO    1500
  364 RANS  =  (G4+(-0.2D 01,0.4D 01))**2
      RANS1 =  -0.32D 02
      GO TO    1500
  365 RANS  =  ((-0.2D 01,0.4D 01)+G4)**3
      RANS1 =  0.208D 03
      GO TO    1500
  366 RANS  =  (G5*G5)**4
      RANS1 =  -0.134912D 06
      GO TO    1500
  367 RANS  =  (G1-((0.2D 01,-0.2D 01)+G5))**5
      RANS1    =   -0.19D 04
      GO TO    1500
  368 RANS  =  ((G1+G2)/(-G4))**(3-K5)
      RANS1 =  0.0D 00
      GO TO    1500
  369 RANS  =  (K1+K2)+(G1+G2)
      RANS1    =   0.25D 03
      GO TO    1500
  370 RANS  =  (K2+K3)-(G2+G3)
      RANS1 =  -0.197D 03
      GO TO    1500
  371 RANS  =  (K3+K4)*(G4+G5)
      RANS1 =  0.12D 03
      GO TO    1500
  372 RANS  =  (K4+K5)/(G4+G5)
      RANS1    =   -0.225D 01
      GO TO    1500
  373 RANS  =  (K1+(-250))+(G1+G2)
      RANS1 =  0.25D 03
      GO TO    1500
  374 RANS  =  ((-250)+K3)-(G2+G3)
      RANS1 =  -0.197D 03
      GO TO    1500
  375 RANS  =  (K3-(-20))*(G4-(-3))
      RANS1 =  0.21D 03
      GO TO    1500
      END
