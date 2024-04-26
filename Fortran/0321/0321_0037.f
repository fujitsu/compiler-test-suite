      COMPLEX        C1,C2,C3,CANS
      COMPLEX*16 C4,C5,C6
      C1   =  (1E0,-1E0)
      C2   =  (-1E0,1E0)
      C3   = -(2.0,0.0)
      C4   = -(0D0,0.2D 01)
      C5   =  (0.4D 01,0.2D 01)
      C6   =  (-2D0,-4D0)
      IPSW1 = 0
      IPSW2 = 0
      ITEM =  0
      IG   =  3
 1000 ITEM = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20,
     *       21,22,23,24,25,26,27,28,29,30,
     *       31,32,33,34,35,36,37,38,39,40,
     *       41,42,43,44,45,46,47,48,49,50,
     *       51,52,53,54,55,56,57,58,59,60,
     *       61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,2000),ITEM
  100 FORMAT(1H1/1H0,5X,41H* TEST OF EXPRESSION (COMPLEX = COMPLEX ,,
     *                  29H  C*32  COMPLEX) ERROR LIST *//1H0,5X,
     *                   7HITEM.NO,
     *              14X,9HREAL PART,14X,14HIMAGINARY PART)
  101 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0520)
  102 FORMAT    (1H0,5X,37H*** ERROR IS DETECTED BY TEST0520 ***)
  103 FORMAT(1H0,7X,I5,7X,E16.8,12X,E16.8)
    1 CANS = (300.0,-200.0)+(-3D02,2D02)
      RPT  = 0.0
      APT  = 0.0
      GO TO 1400
    2 CANS = (-2E02,-300.0)-(2D2,3D2)
      RPT  = -0.4E 03
      APT  = -0.6E 03
      GO TO 1400
    3 CANS = (3E0,-2E0)*(2D0,0D0)
      RPT  =  0.6E 01
      APT  = -0.4E 01
      GO TO 1400
    4 CANS = (1E01,4E0)/(0D0,2D0)
      RPT  =  2.0
      APT  = -5.0
      GO TO 1400
    5 CANS = C1+C4
      RPT  =  1.0
      APT  = -3.0
      GO TO 1400
    6 CANS = C3-C4
      RPT  = -2.0
      APT  =  2.0
      GO TO 1400
    7 CANS = C2*C4
      RPT  =  2.0
      APT  =  2.0
      GO TO 1400
    8 CANS = C5/C3
      RPT  = -2.0
      APT  = -1.0
      GO TO 1400
    9 CANS = (C1+C4)
      RPT  =  1.0
      APT  = -3.0
      GO TO 1400
   10 CANS = (C3-(-C4))
      RPT  = -2.0
      APT  = -2.0
      GO TO 1400
   11 CANS = ((-C2)*C4)
      RPT  = -2.0
      APT  = -2.0
      GO TO 1400
   12 CANS = ((-C5)/(-C3))
      RPT  = -2.0
      APT  = -1.0
      GO TO 1400
   13 CANS = -(C3-(-C4))
      RPT  =  2.0
      APT  =  2.0
      GO TO 1400
   14 CANS = C1+(C4+C6)
      RPT  = -1.0
      APT  = -7.0
      GO TO 1400
   15 CANS = C3-(C6+C4)
      RPT  = 0.0
      APT  = 6.0
      GO TO 1400
   16 CANS = C3*(C5+C6)
      RPT  = -4.0
      APT  =  4.0
      GO TO 1400
   17 CANS = C2/(C4+C5)
      RPT  = -0.25
      APT  =  0.25
      GO TO 1400
   18 CANS = (C1+C2)+C4
      RPT  =  0.0
      APT  = -2.0
      GO TO 1400
   19 CANS = (C2+C3)-C5
      RPT  = -7.0
      APT  = -1.0
      GO TO 1400
   20 CANS = (C1+C2)*C6
      RPT  = 0.0
      APT  = 0.0
      GO TO 1400
   21 CANS = (C1+C2)/C5
      RPT  = 0.0
      APT  = 0.0
      GO TO 1400
   22 CANS = (C1+C3)+(C5+C6)
      RPT  =  1.0
      APT  = -3.0
      GO TO 1400
   23 CANS = (C1+C2)-(C4+C5)
      RPT  = -4.0
      APT  =  0.0
      GO TO 1400
   24 CANS = (C1+C2)*(C5+C6)
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   25 CANS = (C3+C1)/(C4+C5)
      RPT  = -0.25
      APT  = -0.25
      GO TO 1400
   26 CANS = +C4
      RPT  =  0.0
      APT  = -2.0
      GO TO 1400
   27 CANS = +(C5)
      RPT  =  4.0
      APT  =  2.0
      GO TO 1400
   28 CANS = (+C6)
      RPT  = -2.0
      APT  = -4.0
      GO TO 1400
   29 CANS = +(+C4)
      RPT  =  0.0
      APT  = -2.0
      GO TO 1400
   30 CANS = -C5
      RPT  = -4.0
      APT  = -2.0
      GO TO 1400
   31 CANS = -(C6)
      RPT  =  2.0
      APT  =  4.0
      GO TO 1400
   32 CANS = (-C4)
      RPT  =  0.0
      APT  =  2.0
      GO TO 1400
   33 CANS = -(-C5)
      RPT  =  4.0
      APT  =  2.0
      GO TO 1400
   34 CANS = -(-(-C6))
      RPT  =  2.0
      APT  =  4.0
      GO TO 1400
   35 CANS = +(-(+C4))
      RPT  =  0.0
      APT  =  2.0
      GO TO 1400
   36 CANS = (2D0,2D0)**1
      RPT  =  2.0
      APT  =  2.0
      GO TO 1400
   37 CANS = (2D0,2D0)**2
      RPT  =  0.0
      APT  =  8.0
      GO TO 1400
   38 CANS = (3D0,2D0)**3
      RPT  = -9.0
      APT  = 46.0
      GO TO 1400
   39 CANS = (-4D0,2D0)**4
      RPT  = -112.0
      APT  = -384.0
      GO TO 1400
   40 CANS = (1D0,-2D0)**5
      RPT  =  41.0
      APT  =  38.0
      GO TO 1400
   41 CANS = C4**1
      RPT  =  0.0
      APT  = -2.0
      GO TO 1400
   42 CANS = C5**2
      RPT  =  12.0
      APT  =  16.0
      GO TO 1400
   43 CANS = C6**3
      RPT  =  88.0
      APT  =  16.0
      GO TO 1400
   44 CANS = C4**4
      RPT  =  16.0
      APT  =   0.0
      GO TO 1400
   45 CANS = C5**5
      RPT      =   -1216.
      APT  =  1312.0
      GO TO 1400
   46 CANS = C1-(1D0,-1D0)
      RPT  = 0.0
      APT  = 0.0
      GO TO 1400
   47 CANS = C2+(2D0,0D0)
      RPT  = 1.0
      APT  = 1.0
      GO TO 1400
   48 CANS = C3*(0D0,3D0)
      RPT  = 0.0
      APT  = -6.0
      GO TO 1400
   49 CANS = C1/(0D0,-2D0)
      RPT  =  0.5
      APT  =  0.5
      GO TO 1400
   50 CANS = (5E0,3E0)+C6
      RPT  =  3.0
      APT  = -1.0
      GO TO 1400
   51 CANS = (4E0,2E0)*C4
      RPT  =  4.0
      APT  = -8.0
      GO TO 1400
   52 CANS = (4E0,2E0)/C5
      RPT  =  1.0
      APT  =  0.0
      GO TO 1400
   53 CANS = (-C3+(4D0,1D0))
      RPT  =  6.0
      APT  =  1.0
      GO TO 1400
   54 CANS = ((0.,2.0)+C4)
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   55 CANS = (C1-(-(-1D0,1D0)))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   56 CANS = C2+(C4+(0D0,2D0))
      RPT  = -1.0
      APT  =  1.0
      GO TO 1400
   57 CANS = C3-(-(4D0,2D0)+C5)
      RPT  = -2.0
      APT  =  0.0
      GO TO 1400
   58 CANS = C1/((3D0,4D0)+C6)
      RPT  =  1.0
      APT  = -1.0
      GO TO 1400
   59 CANS = C3*(C5-(4D0,2D0))
      RPT  = 0.0
      APT  = 0.0
      GO TO 1400
   60 CANS = (C1+(-1E0,1E0))+C4
      RPT  =  0.0
      APT  = -2.0
      GO TO 1400
   61 CANS = ((1.,-1.)+C2)*C6
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   62 CANS = -(C3+(2.0,0.0))-C5
      RPT  = -4.0
      APT  = -2.0
      GO TO 1400
   63 CANS = -(-(C1-(-(-1.,1.)))/(-C5))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   64 CANS =  (C2+(1E0,-1E0))-(C4+(0D0,2D0))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   65 CANS = (-(1.,-1.)+(-C2))*(-C5+(-(-4D0,-2D0)))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   66 CANS = ((2.0,0.0)+C3)/(-(0.0,2.0)+C5)
      RPT  =  0.0
      APT  =  0.0
      GO TO 1400
   67 CANS = (C4+C5)**1
      RPT  =  4.0
      APT  =  0.0
      GO TO 1400
   68 CANS = (C5-C4)**2
      RPT  =   0.0
      APT  =  32.0
      GO TO 1400
   69 CANS = (C5/C4)**3
      RPT      =   11.
      APT  =  -2.0
      GO TO 1400
   70 CANS = (C5*C4)**4
      RPT  =  -1792.0
      APT      =   6144.
      GO TO 1400
   71 CANS = (C4*C4)**5
      RPT  = -1024.0
      APT  =     0.0
      GO TO 1400
   72 CANS = (C5/(-C4))**IG
      RPT      =   -11.
      APT  =   2.0
      GO TO 1400
   73 CANS = ((C4+C5)**2)**(IG-2)
      RPT  =  16.0
      APT  =   0.0
      GO TO 1400
   74 CANS = ((-C4+(-C5))**(5-IG))**(-1+IG)
      RPT  =  256.0
      APT  =    0.0
      GO TO 1400
   75 CANS = (((-4D0,0D0)+C5)**(-IG+6))**(-2+IG)
      RPT  =  0.0
      APT  = -8.0
 1400 RPT1 =   RPT-ABS(RPT*0.1E-05)
      RPT2 =   RPT+ABS(RPT*0.1E-05)
      APT1 =   APT-ABS(APT*0.1E-05)
      APT2 =   APT+ABS(APT*0.1E-05)
      IF (REAL(CANS).GE.RPT1.AND.REAL(CANS).LE.RPT2.AND.
     *    AIMAG(CANS).GE.APT1.AND.AIMAG(CANS).LE.APT2)  GO TO 1000
      IF (IPSW1.NE.0)                                  GO TO 1520
      WRITE(6,100)
      IPSW1 = 1
 1520 WRITE(6,103) ITEM,CANS
      GO TO 1000
 2000 IF (IPSW1.NE.0)                                  GO TO 2500
      WRITE(6,101)
      STOP
 2500 WRITE(6,102)
      STOP
      END
