      INTEGER*4     K1,K2,K3,K4,K5,K6
      COMPLEX*8     C1,C2,C3,C4,C5
      COMPLEX*16    G1,G2,G3,G4,G5
      K1    =  -2
      K2    =  30
      K3    =  60
      K4    =  100
      K5    =  200
      K6    =  800
      C1    =  -(0.1E 01,-0.1E 01)
      C2    =  (-0.1E 01,0.1E 01)
      C3    =  (0.2E 01,0.0E 00)
      C4    = -(0.0E 00,0.2E 01)
      C5    =  (0.6E 01,0.3E 01)
      G1    = -(0.1D 01,-0.1D 01)
      G2    =  (-0.1D 01,0.1D 01)
      G3    =  (0.2D 01,0.0D 00)
      G4    = -(0.0D 00,0.2D 01)
      G5    =  (0.6D 01,0.3D 01)
      IPSW1 =  0
      ITEM1 =  0
      ICNST =  0
      ASSIGN 1000 TO J1
 1000 ITEM1 = ITEM1+1
      GO TO   ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *         11,12,13,14,15,16,17,18,19,20,
     *         21,22,23,24,25,26,27,28,29,30,
     *         31,32,33,34,35,36,37,38,39,40,
     *         41,42,43,44,45,46,47,48,49,50,
     *         51,52,53,54,55,56,57,58,59,60,
     *         61,62,63,64,65,66,67,68,69,70),ITEM1
      IF (IPSW1.NE.0) GO TO 1001
      WRITE(6,200)
      WRITE(6,202)
      GO TO 1002
 1001 WRITE(6,201)
 1002 IPSW1 =  2
      ICNST =  70
      ITEM1 =  0
      ASSIGN 1100 TO J1
 1100 ITEM1 = ITEM1+1
      GO TO   ( 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
     *          81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
     *          91, 92, 93, 94, 95, 96, 97, 98, 99,100,
     *         101,102,103,104,105,106,107,108,109,110,
     *         111,112,113,114,115,116,117,118,119,120,
     *         121,122,123,124,125,126,127,128,129,130,
     *         131,132,133,134,135,136,137,138,139,140),ITEM1
      IF (IPSW1.NE.2) GO TO 1101
      WRITE(6,200)
      WRITE(6,204)
      STOP
 1101 WRITE (6,201)
      STOP
  200 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0290/)
  201 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0290 ***)
  202 FORMAT(1H0,10X,39HTYPE IS  REAL*4 = INTEGER*2 , COMPLEX*8)
  204 FORMAT(1H0,10X,40HTYPE IS  REAL*4 = INTEGER*2 , COMPLEX*16)
  205 FORMAT(1H1/1H0,43H* TEST OF EXPRESSION ( REAL*4 = INTEGER*2 ,,
     *               25H COMPLEX*8 ) ERROR LIST *//)
  206 FORMAT(1H1/1H0,43H* TEST OF EXPRESSION ( REAL*4 = INTEGER*2 ,,
     *               26H COMPLEX*16 ) ERROR LIST *//)
  207 FORMAT(1H0,5X,7HITEM.NO,5X,15HCONSTANT VALUE.,7X,13HRESULT VALUE.)
  208 FORMAT(1H0,7X,I5,2(4X,E16.8))
 1300 RANS2 =  RANS1-ABS(RANS1*0.1E-05)
      RANS3 =  RANS1+ABS(RANS1*0.1E-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3) GO TO 1303
      IF (IPSW1.EQ.0)    GO TO 1304
      IF (IPSW1.EQ.2)    GO TO 1306
 1301 ITEM2 = ITEM1+ICNST
 1302 WRITE(6,208) ITEM2,RANS1,RANS
 1303 GO TO J1,(1000,1100)
 1304 WRITE(6,205)
      WRITE(6,207)
 1305 IPSW1 =  1
      GO TO 1301
 1306 WRITE(6,206)
      WRITE(6,207)
      GO TO 1305
    1 RANS  =  32765+(0.35E 01,0.2E 01)
      RANS1 =  0.327685E 05
      GO TO    1300
    2 RANS  =  40-(0.1254E 01,0.252E 01)
      RANS1 =  0.38746E 02
      GO TO    1300
    3 RANS  =  2*(0.15E 01,0.3E 01)
      RANS1 =  0.30E 01
      GO TO    1300
    4 RANS  =  40/(0.2E 01,0.2E 01)
      RANS1 =  0.1E 02
      GO TO    1300
    5 RANS  =  (1.0E 02,-0.2E 01)**0
      RANS1 =  0.1E 01
      GO TO    1300
    6 RANS  =  (0.2E 01,0.3E 01)**1
      RANS1 =  0.2E 01
      GO TO    1300
    7 RANS  =  (0.4E 01,0.2E 01)**2
      RANS1 =  0.12E 02
      GO TO    1300
    8 RANS  =  (.4E 01,.2E 01)**3
      RANS1 =  0.16E 02
      GO TO    1300
    9 RANS  =  (.1E 01,-.2E 01)**4
      RANS1 =  -0.7E 01
      GO TO    1300
   10 RANS  =  (0.1E 01,-0.2E 01)**5
      RANS1 =  0.41E 02
      GO TO    1300
   11 RANS  =  K1+C1
      RANS1 =  -0.3E 01
      GO TO    1300
   12 RANS  =  K2-C2
      RANS1 =  0.31E 02
      GO TO    1300
   13 RANS  =  K3*(-C3)
      RANS1 = -0.120E 03
      GO TO    1300
   14 RANS  =  (-K4)/C4
      RANS1 =  0.0E 00
      GO TO    1300
   15 RANS  =  +C1
      RANS1 =  -0.1E 01
      GO TO    1300
   16 RANS  =  (+C2)
      RANS1 =  -0.1E 01
      GO TO    1300
   17 RANS  =  +(C3)
      RANS1 =  0.2E 01
      GO TO    1300
   18 RANS  =  +(+C4)
      RANS1 =  0.0E 00
      GO TO    1300
   19 RANS  =  -C5
      RANS1 =  -0.6E 01
      GO TO    1300
   20 RANS  =  (-C1)
      RANS1 =  0.1E 01
      GO TO    1300
   21 RANS  =  -(-C2)
      RANS1 =  -0.1E 01
      GO TO    1300
   22 RANS  =  -(K1+C1)
      RANS1 =  0.3E 01
      GO TO    1300
   23 RANS  =  (K2-(-C2))
      RANS1 =  0.29E 02
      GO TO    1300
   24 RANS  =  (-K3*(-C3))
      RANS1 =  0.120E 03
      GO TO    1300
   25 RANS  =  -((K4)/(-C4))
      RANS1 =  0.0E 00
      GO TO    1300
   26 RANS  =  K1+(-0.29E 01,0.05E 02)
      RANS1 =  -0.49E 01
      GO TO    1300
   27 RANS  =  -(K2-(-0.305E 02,-0.305E 02))
      RANS1 =  -0.605E 02
      GO TO    1300
   28 RANS  =  ((-K3)*(-0.54E 01,0.54E 01))
      RANS1 =  0.324E 03
      GO TO    1300
   29 RANS  =  -(-((-K4)/(0.0,-0.2E01)))
      RANS1 =  0.0E 00
      GO TO    1300
   30 RANS  =  K1+(C1+C2)
      RANS1 =  -0.4E 01
      GO TO    1300
   31 RANS  =  K2-(C1+C4)
      RANS1 =  0.31E 02
      GO TO    1300
   32 RANS  =  -K3*(C4+C5)
      RANS1 =  -0.36E 03
      GO TO    1300
   33 RANS  =  -K4/(-(C3+C4))
      RANS1 =   0.25E 02
      GO TO    1300
   34 RANS  =  K1+(C1+(-(0.1E 01,-0.1E 01)))
      RANS1 =  -0.4E 01
      GO TO    1300
   35 RANS  =  K2-((0.0,0.2E 01)+C4)
      RANS1 =  0.30E 02
      GO TO    1300
   36 RANS  =  K3*((-0.1E 02,0.1E 01)+(0.1E 02,0.1E 01))
      RANS1 =  0.0E 00
      GO TO    1300
   37 RANS  =  100/(C3+(-(0.2E 01,0.5E 02)))
      RANS1 =  0.0E 00
      GO TO    1300
   38 RANS  =  (K1+K2)+C1
      RANS1 =  0.27E 02
      GO TO    1300
   39 RANS  =  (K2+K3)-C2
      RANS1 =  0.91E 02
      GO TO    1300
   40 RANS  =  (K4-K3)*C3
      RANS1 =  0.80E 02
      GO TO    1300
   41 RANS  =  -((-K5)/K1)/C4
      RANS1 =  0.0E 00
      GO TO    1300
   42 RANS  =  (K2+(-60))-(0.25E 01,0.0)
      RANS1 =  -0.325E 02
      GO TO    1300
   43 RANS  =  (100-K3)*C5
      RANS1 =  0.24E 03
      GO TO    1300
   44 RANS  =  -(-800/K1)/C4
      RANS1 =  0.0E 00
      GO TO    1300
   45 RANS  =  (-2+K2)+(0.2E 01,0.5E 01)
      RANS1 =  0.30E 02
      GO TO    1300
   46 RANS  =  (K1+K2)+(C1+C2)
      RANS1 =  0.26E 02
      GO TO    1300
   47 RANS  =  (K3+K4)-(C2-C3)
      RANS1 =  0.163E 03
      GO TO    1300
   48 RANS  =  (K6-K5)*(-C3+(-C2))
      RANS1 =  -0.6E 03
      GO TO    1300
   49 RANS  =  ((-K6)+(-K5))/(C3+C4)
      RANS1 =  -0.25E 03
      GO TO    1300
   50 RANS  =  C3**0
      RANS1 =  0.1E 01
      GO TO    1300
   51 RANS  =  C3**1
      RANS1 =  0.2E 01
      GO TO    1300
   52 RANS  =  C4**2
      RANS1 =  -0.4E 01
      GO TO    1300
   53 RANS  =  C1**3
      RANS1 =  0.2E 01
      GO TO    1300
   54 RANS  =  C2**4
      RANS1 =  -0.4E 01
      GO TO    1300
   55 RANS  =  (C4+(0.0,0.2E 01))**5
      RANS1 =  0.0E 00
      GO TO    1300
   56 RANS  =  (K6-(K5*(0.2E 01,0.2E 01)-C5))
      RANS1 =  0.406E 03
      GO TO    1300
   57 RANS  =  K1+(C1+C2)
      RANS1 =  -0.4E 01
      GO TO    1300
   58 RANS  =  K2-((-K3)+C2)
      RANS1 =  0.91E 02
      GO TO    1300
   59 RANS  =  K2-(60+C3)
      RANS1 =  -0.32E 02
      GO TO    1300
   60 RANS  =  K4/(C3+(-10))
      RANS1 =  -0.125E 02
      GO TO    1300
   61 RANS  =  (K2-C5)-C4
      RANS1 =  0.24E 02
      GO TO    1300
   62 RANS  =  (-C4-K1)*C2
      RANS1 =  -0.4E 01
      GO TO    1300
   63 RANS  =  (-2+(-C4))+(0.2E 01,0.2E 01)
      RANS1 =  0.0E 00
      GO TO    1300
   64 RANS  =  -(-800/(-C4))/C3
      RANS1 =  0.0E 00
      GO TO    1300
   65 RANS  =  (K1+C2)+(C1+K2)
      RANS1 =  0.26E 02
      GO TO    1300
   66 RANS  =  (K3-C4)-(-K2-C3)
      RANS1 =  0.92E 02
      GO TO    1300
   67 RANS  =  (C5-K5)*(-C3+K2)
      RANS1 = -0.5432E 04
      GO TO    1300
   68 RANS  =  ((-C5)+(-K5))/(-(K2+C3))
      RANS1 = 0.64375E 01
      GO TO    1300
   69 RANS  =  ((-0.2E 01,0.1E 01)-K1)**3
      RANS1 =  0.0E 00
      GO TO    1300
   70 RANS  =  ((-K1+(0.5E00,0.0)-C1)**(4+K1))
      RANS1 =  0.1125E 02
      GO  TO   1300
   71 RANS  =  32765+(0.35D 01,0.2D 01)
      RANS1 =  0.327685E 05
      GO TO    1300
   72 RANS  =  40-(0.1254D 01,0.252D 01)
      RANS1 =  0.38746E 02
      GO TO    1300
   73 RANS  =  2*(0.15D 01,0.3D 01)
      RANS1 =  0.30E 01
      GO TO    1300
   74 RANS  =  40/(0.2D 01,0.2D 01)
      RANS1 =  0.1E 02
      GO TO    1300
   75 RANS  =  (1.0D 02,-0.2D 01)**0
      RANS1 =  0.1E 01
      GO TO    1300
   76 RANS  =  (0.2D 01,0.3D 01)**1
      RANS1 =  0.2E 01
      GO TO    1300
   77 RANS  =  (0.4D 01,0.2D 01)**2
      RANS1 =  0.12E 02
      GO TO    1300
   78 RANS  =  (0.4D 01,0.2D 01)**3
      RANS1 =  0.16E 02
      GO TO    1300
   79 RANS  =  (0.1D 01,-0.2D 01)**4
      RANS1 =  -0.7E 01
      GO TO    1300
   80 RANS  =  (0.1D 01,-0.2D 01)**5
      RANS1 =  0.41E 02
      GO TO    1300
   81 RANS  =  K1+G1
      RANS1 =  -0.3E 01
      GO TO    1300
   82 RANS  =  K2-G2
      RANS1 =  0.31E 02
      GO TO    1300
   83 RANS  =  K3*(-G3)
      RANS1 =  -0.12E 03
      GO TO    1300
   84 RANS  =  (-K4)/G4
      RANS1 =  0.0E 00
      GO TO    1300
   85 RANS  =  +G1
      RANS1 =  -0.1E 01
      GO TO    1300
   86 RANS  =  (+G2)
      RANS1 =  -0.1E 01
      GO TO    1300
   87 RANS  =  +(G3)
      RANS1 =  0.2E 01
      GO TO    1300
   88 RANS  =  +(+G4)
      RANS1 =  0.0E 00
      GO TO    1300
   89 RANS  =  -G5
      RANS1 =  -0.6E 01
      GO TO    1300
   90 RANS  =  (-G1)
      RANS1 =  0.1E 01
      GO TO    1300
   91 RANS  =  -(-G2)
      RANS1 =  -0.1E 01
      GO TO    1300
   92 RANS  =  -(K1+G1)
      RANS1 =  0.3E 01
      GO TO    1300
   93 RANS  =  (K2-(-G2))
      RANS1 =  0.29E 02
      GO TO    1300
   94 RANS  =  (-K3*(-G3))
      RANS1 =  0.120E 03
      GO TO    1300
   95 RANS  =  -((K4)/(-G4))
      RANS1 =  0.0E 00
      GO TO    1300
   96 RANS  =  K1+(-0.29D 01,0.05D 02)
      RANS1 =  -0.49E 01
      GO TO    1300
   97 RANS  =  -(K2-(-0.305D 02,-0.305D 02))
      RANS1 =  -0.605E 02
      GO TO    1300
   98 RANS  =  ((-K3)*(-0.54D 01,0.54D 01))
      RANS1 =  0.324E 03
      GO TO    1300
   99 RANS  =  -(-((-K4)/(0.0D 00,-0.2D 01)))
      RANS1 =  0.0E 00
      GO TO    1300
  100 RANS  =  K1+(G1+G2)
      RANS1 =  -0.4E 01
      GO TO    1300
  101 RANS  =  K2-(G1+G4)
      RANS1 =  0.31E 02
      GO TO    1300
  102 RANS  =  -K3*(G4+G5)
      RANS1 =  -0.36E 03
      GO TO    1300
  103 RANS  =  -K4/(-(G3+G4))
      RANS1 =   0.25E 02
      GO TO    1300
  104 RANS  =  K1+(G1+(-(0.1D 01,-0.1D 01)))
      RANS1 =  -0.4E 01
      GO TO    1300
  105 RANS  =  K2-((0.0D 00,0.2D 01)+G4)
      RANS1 =  0.30E 02
      GO TO    1300
  106 RANS  =  K3*((-0.1D 02,0.1D 01)+(0.1D 02,0.1D 01))
      RANS1 =  0.0E 00
      GO TO    1300
  107 RANS  =  100/(G3+(-(0.2D 01,0.5D 02)))
      RANS1 =  0.0E 00
      GO TO    1300
  108 RANS  =  (K1+K2)+G1
      RANS1 =  0.27E 02
      GO TO    1300
  109 RANS  =  (K2+K3)-G2
      RANS1 =  0.91E 02
      GO TO    1300
  110 RANS  =  (K4-K3)*G3
      RANS1 =  0.80E 02
      GO TO    1300
  111 RANS  =  -((-K5)/K1)/G4
      RANS1 =  0.0E 00
      GO TO    1300
  112 RANS  =  (K2+(-60))-(0.25D 01,0.0D 00)
      RANS1 =  -0.325E 02
      GO TO    1300
  113 RANS  =  (100-K3)*G5
      RANS1 =  0.24E 03
      GO TO    1300
  114 RANS  =  -(-800/K1)/G4
      RANS1 =  0.0E 00
      GO TO    1300
  115 RANS  =  (-2+K2)+(0.2D 01,0.5D 01)
      RANS1 =  0.30E 02
      GO TO    1300
  116 RANS  =  (K1+K2)+(G1+G2)
      RANS1 =  0.26E 02
      GO TO    1300
  117 RANS  =  (K3+K4)-(G2-G3)
      RANS1 =  0.163E 03
      GO TO    1300
  118 RANS  =  (K6-K5)*(-G3+(-G2))
      RANS1 =  -0.6E 03
      GO TO    1300
  119 RANS  =  ((-K6)+(-K5))/(G3+G4)
      RANS1 =  -0.25E 03
      GO TO    1300
  120 RANS  =  G3**0
      RANS1 =  0.1E 01
      GO TO    1300
  121 RANS  =  G3**1
      RANS1 =  0.2E 01
      GO TO    1300
  122 RANS  =  G4**2
      RANS1 =  -0.4E 01
      GO TO    1300
  123 RANS  =  G1**3
      RANS1 =  0.2E 01
      GO TO    1300
  124 RANS  =  G2**4
      RANS1 =  -0.4E 01
      GO TO    1300
  125 RANS  =  (G4+(0.0D 00,0.2D 01))**5
      RANS1 =  0.0E 00
      GO TO    1300
  126 RANS  =  (K6-(K5*(0.2D 01,0.2D 01)-G5))
      RANS1 =  0.406E 03
      GO TO    1300
  127 RANS  =  K1+(G1+G2)
      RANS1 =  -0.4E 01
      GO TO    1300
  128 RANS  =  K2-((-K3)+G2)
      RANS1 =  0.91E 02
      GO TO    1300
  129 RANS  =  K2-(60+G3)
      RANS1 =  -0.32E 02
      GO TO    1300
  130 RANS  =  K4/(G3+(-10))
      RANS1 =  -0.125E 02
      GO TO    1300
  131 RANS  =  (K2-G5)-G4
      RANS1 =  0.24E 02
      GO TO    1300
  132 RANS  =  (-G4-K1)*G2
      RANS1 =  -0.4E 01
      GO TO    1300
  133 RANS  =  (-2+(-G4))+(0.2D 01,0.2D 01)
      RANS1 =  0.0E 00
      GO TO    1300
  134 RANS  =  -(-800/(-C4))/C3
      RANS1 =  0.0E 00
      GO TO    1300
  135 RANS  =  (K1+G2)+(G1+K2)
      RANS1 =  0.26E 02
      GO TO    1300
  136 RANS     =   (K3-G4)-(-K2+(-G3))
      RANS1 =  0.92E 02
      GO TO    1300
  137 RANS  =  (G5-K5)*(-G3+K2)
      RANS1 = -0.5432E 04
      GO TO    1300
  138 RANS  =  ((-G5)+(-K5))/(-(K2+G3))
      RANS1 =  0.64375E 01
      GO TO    1300
  139 RANS  =  ((-0.2D 01,0.1D 01)-K1)**3
      RANS1 =  0.0E 00
      GO TO    1300
  140 RANS  =  ((-K1+(0.5D 00,0.0D 00)-G1)**(-K1))
      RANS1 =  0.1125E 02
      GO TO    1300
      END
