      INTEGER*2     K1,K2,K3,K4,K5,K6
      REAL*4        R1,R2,R3,R4,R5,R6
      REAL*8        D1,D2,D3,D4,D5,D6
      K1    =  500
      K2    = -400
      K3    =   80
      K4    =   40
      K5    =   -5
      K6    =    2
      R1    = -0.65E 03
      R2    =  0.40E 03
      R3    = -0.5E 02
      R4    =  0.4E 02
      R5    = -0.5E 01
      R6    =  0.2E 01
      D1    = -0.65D03
      D2    =  0.40D03
      D3    = -0.5D 02
      D4    =  0.4D 02
      D5    = -0.5D 01
      D6    =  0.2D 01
      IPSW1 =  0
      ITEM1 =  0
      ICNST =  0
      ASSIGN   1000 TO   J1
 1000 ITEM1 =  ITEM1+1
      GO TO    ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *          11,12,13,14,15,16,17,18,19,20,
     *          21,22,23,24,25,26,27,28,29,30,
     *          31,32,33,34,35,36,37,38,39,40,
     *          41,42,43,44,45,46,47,48,49,50,
     *         51,52,53,54,55,56,57,58,59,60,
     *         61,62,63,64,65,66,67,68,69,70),ITEM1
      IF (IPSW1.NE.0)    GO TO     1501
      WRITE(6,153)
      WRITE(6,155)
      GO TO 1502
 1501 WRITE(6,154)
 1502 ASSIGN   1100 TO   J1
      ITEM1 =  0
      ICNST =  70
      IPSW1 =  2
 1100 ITEM1 =  ITEM1+1
      GO TO   ( 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
     *          81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
     *          91, 92, 93, 94, 95, 96, 97, 98, 99,100,
     *         101,102,103,104,105,106,107,108,109,110,
     *         111,112,113,114,115,116,117,118,119,120,
     *         121,122,123,124,125,126,127,128,129,130,
     *         131,132,133,134,135,136,137,138,139,140),ITEM1
      IF (IPSW1.NE.2)    GO TO     1602
      WRITE(6,153)
      WRITE(6,156)
      STOP
 1602 WRITE(6,154)
      STOP
  150 FORMAT(1H1/1H0,5X,44H* TEST OF EXSPRESSION ( REAL*4 = INTEGER*2 ,,
     *                  22H REAL*4 ) ERROR LIST *//1H0,5X,
     *                   7HITEM.NO,5X,15HCONSTANT VALUE.,7X,
     *                  13HRESULT VALUE.)
  151 FORMAT(1H1/1H0,5X,44H* TEST OF EXSPRESSION ( REAL*4 = INTEGER*2 ,,
     *                  22H REAL*8 ) ERROR LIST *//1H0,5X,
     *                   7HITEM.NO,5X,15HCONSTANT VALUE.,7X,
     *                  13HRESULT VALUE.)
  152 FORMAT(1H0,7X,I5,2(4X,E16.8))
  153 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0280)
  154 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0280 ***)
  155 FORMAT(1H0,10X,36HTYPE IS  REAL*4 = INTEGER*2 , REAL*4)
  156 FORMAT(1H0,10X,36HTYPE IS  REAL*4 = INTEGER*2 , REAL*8)
 1700 RANS2 = RANS1-ABS(RANS1*0.1E-05)
      RANS3 = RANS1+ABS(RANS1*0.1E-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3)   GO TO 1703
      IF (IPSW1.NE.0) GO TO 1701
      WRITE(6,150)
      IPSW1 = 1
 1701 IF (IPSW1.NE.2) GO TO 1702
      WRITE(6,151)
      IPSW1 = 1
 1702 ITEM2 =  ITEM1+ICNST
      WRITE(6,152)  ITEM2,RANS1,RANS
 1703 GO TO J1,(1000,1100)
    1 RANS  =  20+5.0
      RANS1 =  0.25E 02
      GO TO    1700
    2 RANS  =  300-30.5
      RANS1 =  0.2695E 03
      GO TO    1700
    3 RANS  =  2*0.2E-01
      RANS1 =  0.4E-01
      GO TO    1700
    4 RANS  =  250/.25E 02
      RANS1 =  0.1E 02
      GO TO    1700
    5 RANS  =  1250**0
      RANS1 =  0.1E 01
      GO TO    1700
    6 RANS  = -1425**1
      RANS1 =  -0.1425E 04
      GO TO    1700
    7 RANS  =  2**2
      RANS1 =  0.4E 01
      GO TO    1700
    8 RANS  =  2**3
      RANS1 =  0.8E 01
      GO TO    1700
    9 RANS  =  2**4
      RANS1 =  0.16E 02
      GO TO    1700
   10 RANS  = -2**5
      RANS1 =  -0.32E 02
      GO TO    1700
   11 RANS  =  K1+R1
      RANS1 =  -0.15E 03
      GO TO    1700
   12 RANS  =  K2-R2
      RANS1 =  -0.8E 03
      GO TO    1700
   13 RANS  =  K3*R3
      RANS1 =  -0.4E 04
      GO TO    1700
   14 RANS  =  K1/R6
      RANS1 =  0.250E 03
      GO TO    1700
   15 RANS  =  +K1
      RANS1 =  0.5E 03
      GO TO    1700
   16 RANS  =  (+K2)
      RANS1 =  -0.4E 03
      GO TO    1700
   17 RANS  =  +(K3)
      RANS1 =  0.8E 02
      GO TO    1700
   18 RANS  =  +(+K4)
      RANS1 =  0.4E 02
      GO TO    1700
   19 RANS  =  -K5
      RANS1 =  0.5E 01
      GO TO    1700
   20 RANS  =  (-K6)
      RANS1 =  -0.2E 01
      GO TO    1700
   21 RANS  =  -(K1)
      RANS1 =  -0.5E 03
      GO TO    1700
   22 RANS  =  -(-K2)
      RANS1 =  -0.4E 03
      GO TO    1700
   23 RANS  =  (K1+R1)
      RANS1 =  -0.15E 03
      GO TO    1700
   24 RANS  =  (K2-(-R2))
      RANS1 =  0.0
      GO TO    1700
   25 RANS  =  ((-K3)*R3)
      RANS1 = 0.4E 04
      GO TO    1700
   26 RANS  = -((-K1)/(-R6))
      RANS1 =  -0.25E 03
      GO TO    1700
   27 RANS  =  (K1+(-2.9))
      RANS1 =  0.4971E 03
      GO TO    1700
   28 RANS  =  ((-K2)-(-30.5))
      RANS1 =  0.4305E 03
      GO TO    1700
   29 RANS  = -((-2)*R4)
      RANS1 =  0.8E 02
      GO TO    1700
   30 RANS  = -(-((-5)/(-R6)))
      RANS1 =  0.25E 01
      GO TO    1700
   31 RANS  =  K1+(R1+R2)
      RANS1 =  0.25E 03
      GO TO    1700
   32 RANS  =  K2-(R3+R4)
      RANS1 =  -0.39E 03
      GO TO    1700
   33 RANS  =  K3*(R4+R5)
      RANS1 =  0.28E 04
      GO TO    1700
   34 RANS  =  K4/(R3+R4)
      RANS1 =  -0.4E 01
      GO TO    1700
   35 RANS  =  K2-(0.6E 02+R4)
      RANS1 =  -0.5E 03
      GO TO    1700
   36 RANS  =  K3*(0.2E 02+0.3E 01)
      RANS1 =  0.184E 04
      GO TO    1700
   37 RANS  =  100/(R3+0.4E 02)
      RANS1 =  -0.1E 02
      GO TO    1700
   38 RANS  =  K1+(R1+0.15E 03)
      RANS1 =  0.0
      GO TO    1700
   39 RANS  =  (K1+K2)+R1
      RANS1 =  -0.55E 03
      GO TO    1700
   40 RANS  =  (K2+K3)-R2
      RANS1 =  -0.720E 03
      GO TO    1700
   41 RANS  =  (K4-K5)*R6
      RANS1 =  0.9E 02
      GO TO    1700
   42 RANS  =  -(-K1/(-K6))/(-R5)
      RANS1 =  -0.5E 02
      GO TO    1700
   43 RANS  =  (K2+(-60))-2.6
      RANS1 =  -0.4626E 03
      GO TO    1700
   44 RANS  =  (100-(-K3))*R6
      RANS1 =  0.36E 03
      GO TO    1700
   45 RANS  =  -(-800/(-2))/R5
      RANS1 =  0.80E 02
      GO TO    1700
   46 RANS  =  ((-2)+K2)+.2E 01
      RANS1 =  -0.4E 03
      GO TO    1700
   47 RANS  =  (K1+K2)+(R1+R6)
      RANS1 =  -0.548E 03
      GO TO    1700
   48 RANS  =  (K3+K4)-(R2-R3)
      RANS1 =  -0.33E 03
      GO TO    1700
   49 RANS  =  (K5-K6)*(-R4+(-R5))
      RANS1 =   0.245E 03
      GO TO    1700
   50 RANS  =  -((-K1)+(-K2))/(R3+R4)
      RANS1 =  -0.1E 02
      GO TO    1700
   51 RANS  =  K1**0
      RANS1 =  0.1E 01
      GO TO    1700
   52 RANS  =  K2**1
      RANS1 =  -0.4E 03
      GO TO    1700
   53 RANS  =  K3**2
      RANS1 =  0.64E 04
      GO TO    1700
   54 RANS  =  K6**3
      RANS1 =  0.8E 01
      GO TO    1700
   55 RANS  =  K5**4
      RANS1 =  0.625E 03
      GO TO    1700
   56 RANS  =  K6**5
      RANS1 =  0.32E 02
      GO TO    1700
   57 RANS  =  (K1-(R1+R2))**0
      RANS1 =  0.1E 01
      GO TO    1700
   58 RANS  =  (K5+R6)**1
      RANS1 =  -0.3E 01
      GO TO    1700
   59 RANS  =  ((K4+K5)-0.30E 02)**2
      RANS1 =  0.25E 02
      GO TO    1700
   60 RANS  =  (K5+R6)**3
      RANS1 =  -0.27E 02
      GO TO    1700
   61 RANS  =  K1+(R1+K2)
      RANS1 =  -0.55E 03
      GO TO    1700
   62 RANS  =  K2-((-K3)+R4)
      RANS1 =  -0.36E 03
      GO TO    1700
   63 RANS  =  K3-(60+R5)
      RANS1 =  0.25E 02
      GO TO    1700
   64 RANS  =  K2/(R3+(-50))
      RANS1 =  0.4E 01
      GO TO    1700
   65 RANS  =  (K4-R2)-R6
      RANS1 =  -0.362E 03
      GO TO    1700
   66 RANS  =  (-2+(-R2))+.2E 01
      RANS1 =  -0.4E 03
      GO TO    1700
   67 RANS  =  (R6-K5)*(-R3+K2)
      RANS1 =  -0.245E 04
      GO TO    1700
   68 RANS  =  ((-R1+(-K5))/((-K6)+(-R6)))
      RANS1 =  -0.16375E 03
      GO TO    1700
   69 RANS  =  (K6-(R6+2))**4
      RANS1 =  0.16E 02
      GO TO    1700
   70 RANS  =  (K5+0.4E 01)**K6
      RANS1 =  0.1E 01
      GO TO    1700
   71 RANS  =  20+0.5D 01
      RANS1 =  0.25E 02
      GO TO    1700
   72 RANS  =  300-0.305D 02
      RANS1 =  0.2695E 03
      GO TO    1700
   73 RANS  =  2*0.2D-01
      RANS1 =  0.4E-01
      GO TO    1700
   74 RANS  =  250/0.25D 02
      RANS1 =  0.1E 02
      GO TO    1700
   75 RANS  =  0.1250D 04**0
      RANS1 =  0.1E 01
      GO TO    1700
   76 RANS  =  -0.1425D 04**1
      RANS1 =  -0.1425E 04
      GO TO    1700
   77 RANS  =  0.2D 01**2
      RANS1 =  0.4E 01
      GO TO    1700
   78 RANS  =  0.2D 01**3
      RANS1 =  0.8E 01
      GO TO    1700
   79 RANS  =  0.2D 01**4
      RANS1 =  0.16E 02
      GO TO    1700
   80 RANS  = -0.2D 01**5
      RANS1 =  -0.32E 02
      GO TO    1700
   81 RANS  =  K1+D1
      RANS1 =  -0.15E 03
      GO TO    1700
   82 RANS  =  K2-D2
      RANS1 = -0.8E 03
      GO TO    1700
   83 RANS  =  K3*D3
      RANS1 =  -0.4E 04
      GO TO    1700
   84 RANS  =  K1/D6
      RANS1 =  0.25E 03
      GO TO    1700
   85 RANS  =  +D1
      RANS1 =  -0.65E 03
      GO TO    1700
   86 RANS  =  (+D2)
      RANS1 =  0.40E 03
      GO TO    1700
   87 RANS  =  +(D3)
      RANS1 =  -0.5E 02
      GO TO    1700
   88 RANS  =  +(+D4)
      RANS1 =  0.4E 02
      GO TO    1700
   89 RANS  =  -D5
      RANS1 =  0.5E 01
      GO TO    1700
   90 RANS  =  (-D6)
      RANS1 =  -0.2E 01
      GO TO    1700
   91 RANS  =  -(D1)
      RANS1 =  0.65E 03
      GO TO    1700
   92 RANS  =  -(-D2)
      RANS1 =  0.40E 03
      GO TO    1700
   93 RANS  =  (K1+D1)
      RANS1 =  -0.15E 03
      GO TO    1700
   94 RANS  =  (K2-(-D2))
      RANS1 =  0.0
      GO TO    1700
   95 RANS  =  ((-K3)*D3)
      RANS1 =  0.4E 04
      GO TO    1700
   96 RANS  =  -((-K1)/(-D6))
      RANS1 =  -0.25E 03
      GO TO    1700
   97 RANS  =  (K1+(-0.29D 01))
      RANS1 =  0.4971E 03
      GO TO    1700
   98 RANS  =  ((-K2)-(-0.305D 02))
      RANS1 =  0.4305E 03
      GO TO    1700
   99 RANS  =  -((-2)*D4)
      RANS1 =  0.8E 02
      GO TO    1700
  100 RANS  =  -(-((-5)/(-D6)))
      RANS1 =  0.25E 01
      GO TO    1700
  101 RANS  =  K1+(D1+D2)
      RANS1 =  0.25E 03
      GO TO    1700
  102 RANS  =  K2-(D3+D4)
      RANS1 =  -0.39E 03
      GO TO    1700
  103 RANS  =  K3*(D4+D5)
      RANS1 =  0.28E 04
      GO TO    1700
  104 RANS  =  K4/(D3+D4)
      RANS1 =  -0.4E 01
      GO TO    1700
  105 RANS  =  K2-(0.6D 02+D4)
      RANS1 =  -0.5E 03
      GO TO    1700
  106 RANS  =  K3*(0.2D 02+0.3D 01)
      RANS1 =  0.184E 04
      GO TO    1700
  107 RANS  =  100/(D3+0.4D 02)
      RANS1 =  -0.1E 02
      GO TO    1700
  108 RANS  =  K1+(D1+0.15E 03)
      RANS1 =  0.0
      GO TO    1700
  109 RANS  =  (K1+K2)+D1
      RANS1 =  -0.55E 03
      GO TO    1700
  110 RANS  =  (K2+K3)-D2
      RANS1 =  -0.720E 03
      GO TO    1700
  111 RANS  =  (K4-K5)*D6
      RANS1 =  0.9E 02
      GO TO    1700
  112 RANS  =  -(-K1/(-K6))/(-R5)
      RANS1 =  -0.5E 02
      GO TO    1700
  113 RANS  =  (K2+(-60))-2.6
      RANS1 =  -0.4626E 03
      GO TO    1700
  114 RANS  =  (100-(-K3))*D6
      RANS1 =  0.36E 03
      GO TO    1700
  115 RANS  =  -(-800/(-2))/D5
      RANS1 =  0.8E 02
      GO TO    1700
  116 RANS  =  ((-2)+K2)+.2D 01
      RANS1 =  -0.4E 03
      GO TO    1700
  117 RANS  =  (K1+K2)+(D1+D6)
      RANS1 =  -0.548E 03
      GO TO    1700
  118 RANS  =  (K3+K4)-(D2-D3)
      RANS1 =  -0.33E 03
      GO TO    1700
  119 RANS  =  (K5-K6)*(-D4+(-D5))
      RANS1 =   0.245E 03
      GO TO    1700
  120 RANS  =  -((-K1)+(-K2))/(D3+D4)
      RANS1 =  -0.1E 02
      GO TO    1700
  121 RANS  =  (K1-(D1+D2))**0
      RANS1 =  0.1E 01
      GO TO    1700
  122 RANS  =  (K5+D6)**1
      RANS1 =  -0.3E 01
      GO TO    1700
  123 RANS  =  ((K4+K5)-0.30D 02)**2
      RANS1 =  0.25E 02
      GO TO    1700
  124 RANS  =  (K5+R6)**3
      RANS1 =  -0.27E 02
      GO TO    1700
  125 RANS  =  (K6-(D6+2))**4
      RANS1 =  0.16E 02
      GO TO    1700
  126 RANS  =  K1+(D1+K2)
      RANS1 =  -0.55E 03
      GO TO    1700
  127 RANS  =  K2-((-K3)+D4)
      RANS1 =  -0.36E 03
      GO TO    1700
  128 RANS  =  K3-(60+D5)
      RANS1 =  0.25E 02
      GO TO    1700
  129 RANS  =  K2/(D3+(-50))
      RANS1 =  0.4E 01
      GO TO    1700
  130 RANS  =  (K4-D2)-D6
      RANS1 =  -0.362E 03
      GO TO    1700
  131 RANS  =  (-2+(-D2))+.2D 01
      RANS1 =  -0.4E 03
      GO TO    1700
  132 RANS  =  (D6-K5)*(-D3+K2)
      RANS1 =  -0.245E 04
      GO TO    1700
  133 RANS = ((-D1+(-K5))/((-K6)+(-D6)))
      RANS1 =  -0.16375E 03
      GO TO    1700
  134 RANS  =  (K6-(D6+2))**K6
      RANS1 =   4.0
      GO TO    1700
  135 RANS  =  (K5+0.4D 01)**K6
      RANS1 =  0.1E 01
      GO TO    1700
  136 RANS  =  K1+R1+(-D1)
      RANS1 =  0.5E 03
      GO TO    1700
  137 RANS  =  R2-(K3-D4)
      RANS1 =  0.36E 03
      GO TO    1700
  138 RANS  =  R3*((-D5)+K5)
      RANS1 =  0.0
      GO TO    1700
  139 RANS  =  D1/(K1-R2)
      RANS1 =  -0.65E 01
      GO TO    1700
  140 RANS  =  D6+R6**K6-(-K5)
      RANS1 =  0.1E 01
      GO TO    1700
      END
