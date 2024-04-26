      COMPLEX  CANS,C1,C2,C3,C4,C5,C6
      C1   = (1.,-1.)
      C2   = (-1.,1.)
      C3   = (2E0,.0)
      C4   = -(0E0,2E0)
      C5   = (4E0,2E0)
      C6   = (-2E0,-4E0)
      IPSW1= 0
      IPSW2= 0
      ITEM = 0
      IG   = 3
 1000 ITEM = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20,
     *       21,22,23,24,25,26,27,28,29,30,
     *       31,32,33,34,35,36,37,38,39,40,
     *       41,42,43,44,45,46,47,48,49,50,
     *       51,52,53,54,55,56,57,58,59,60,
     *       61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,2000),ITEM
  100 FORMAT(1H1/1H0,5X,41H* TEST OF EXPRESSION (COMPLEX = COMPLEX ,,
     *                  22H COMPLEX) ERROR LIST *//1H0,5X,7HITEM.NO,
     *       14X,9HREAL PART,14X,14HIMAGINARY PART)
  101 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0140)
  102 FORMAT    (1H0,5X,37H*** ERROR IS DETECTED BY TEST0140 ***)
  103 FORMAT(1H0,7X,I5,7X,E16.8,12X,E16.8)
    1 CANS = (300.,-200.)+(-300.,200.)
      AA   = 0.
      BB   = 0.
      GO TO 1450
    2 CANS = (-2E02,-300.)-(200.,3E2)
      AA   = -0.4E 03
      BB   = -0.6E 03
      GO TO 1450
    3 CANS = (3E0,-2E0)*(2E0,0E0)
      AA   =  0.6E 01
      BB   = -0.4E 01
      GO TO 1450
    4 CANS = (1E01,4E0)/(0E0,2.0)
      AA   =  2.0
      BB   = -5.0
      GO TO 1450
    5 CANS = C1+C2
      AA   =  0.0
      BB   =  0.0
      GO TO 1450
    6 CANS = C3-C4
      AA   =  2.0
      BB   =  2.0
      GO TO 1450
    7 CANS = C2*C3
      AA   = -0.2E 01
      BB   =  0.2E 01
      GO TO 1450
    8 CANS = C5/C3
      AA   =  0.2E 01
      BB   =  0.1E 01
      GO TO 1450
    9 CANS = (C1+C2)
      AA   = 0.0
      BB   = 0.0
      GO TO 1450
   10 CANS = (C3-(-C4))
      AA   =  0.2E 01
      BB   = -0.2E 01
      GO TO 1450
   11 CANS = ((-C2)*C3)
      AA   =  0.2 E 01
      BB   = -0.2 E 01
      GO TO 1450
   12 CANS = ((-C5)/(-C3))
      AA   =  0.2E 01
      BB   =  0.1E 01
      GO TO 1450
   13 CANS = -(C3-(-C4))
      AA   = -0.2E 01
      BB   =  0.2E 01
      GO TO 1450
   14 CANS = C5+(C1+C2)
      AA   =  0.4E 01
      BB   =  0.2E 01
      GO TO 1450
   15 CANS = C6-(C3+C4)
      AA   = -0.4E 01
      BB   = -0.2E 01
      GO TO 1450
   16 CANS = C3*(C5+C6)
      AA   =  0.4E 01
      BB   = -0.4E 01
      GO TO 1450
   17 CANS = C5/(C3+C4)
      AA   =  0.50E 00
      BB   =  0.15E 01
      GO TO 1450
   18 CANS = (C1+C2)+C3
      AA   =  0.2E 01
      BB   =  0.0E 00
      GO TO 1450
   19 CANS = (C3+C4)-C5
      AA   = -0.2E 01
      BB   = -0.4E 01
      GO TO 1450
   20 CANS = (C1+C2)*C6
      AA   =  0.0
      BB   =  0.0
      GO TO 1450
   21 CANS = (C1+C2)/C5
      AA   =  0.0
      BB   =  0.0
      GO TO 1450
   22 CANS = (C3+C4)+(C5+C6)
      AA   =  0.4E 01
      BB   = -0.4E 01
      GO TO 1450
   23 CANS = (C1+C3)-(C2+C4)
      AA   =  0.4E 01
      BB   =  0.0
      GO TO 1450
   24 CANS = (C1+C2)*(C5+C6)
      AA   =  0.0
      BB   =  0.0
      GO TO 1450
   25 CANS = (C3+C6)/(C4+C5)
      AA   =  0.0
      BB   = -0.1E 01
      GO TO 1450
   26 CANS = +C1
      AA   =  1.0
      BB   = -1.0
      GO TO 1450
   27 CANS = +(C2)
      AA   = -1.0
      BB   =  1.0
      GO TO 1450
   28 CANS = (+C3)
      AA   =  0.2E 01
      BB   =  0.0
      GO TO 1450
   29 CANS = +(+C4)
      AA   =  0.0
      BB   = -0.2E 01
      GO TO 1450
   30 CANS = -C5
      AA   = -0.4E 01
      BB   = -0.2E 01
      GO TO 1450
   31 CANS = -(C6)
      AA   =  0.2E 01
      BB   =  0.4E 01
      GO TO 1450
   32 CANS = (-C1)
      AA   = -0.1E 01
      BB   =  0.1E 01
      GO TO 1450
   33 CANS = -(-C2)
      AA   = -0.1E 01
      BB   =  0.1E 01
      GO TO 1450
   34 CANS = -(-(-C3))
      AA   = -0.2E 01
      BB   =  0.0
      GO TO 1450
   35 CANS = +(-(+C4))
      AA   =  0.0
      BB   =  0.2E 01
      GO TO 1450
   36 CANS = (2.0,2.0)**1
      AA = 2.0
      BB = 2.0
      GO TO 1450
   37 CANS = (2.0,2.0)**2
      AA   = 0.0
      BB   = 0.8E 01
      GO TO 1450
   38 CANS = (3.0,2.0)**3
      AA   = -0.90E 01
      BB   =  0.46E 02
      GO TO 1450
   39 CANS = (-4.0,.2E 01)**4
      AA   = -0.112E 03
      BB   = -0.384E 03
      GO TO 1450
   40 CANS = (1.,-2.)**5
      AA   =  0.41E 02
      BB   =  0.38E 02
      GO TO 1450
   41 CANS = C1**1
      AA   =  0.1E 01
      BB   = -0.1E 01
      GO TO 1450
   42 CANS = C2**2
      AA   =  0.0
      BB   = -0.2E 01
      GO TO 1450
   43 CANS = C3**3
      AA   =  0.8E 01
      BB   =  0.0
      GO TO 1450
   44 CANS = C4**4
      AA   =  0.16E 02
      BB   =  0.0
      GO TO 1450
   45 CANS = C5**5
      AA   = -0.1216E 04
      BB   =  0.1312E 04
      GO TO 1450
   46 CANS = C1-(0.1E 01,-0.1E 01)
      AA   =  0.0
      BB   =  0.0
      GO TO 1450
   47 CANS = C2+(2.,0.)
      AA   = 1.0
      BB   = 1.0
      GO TO 1450
   48 CANS = C3*(0.0,3.0)
      AA   = 0.0
      BB   = 0.6E 01
      GO TO 1450
   49 CANS = C5/(0.,-2.)
      AA   = -0.1E 01
      BB   =  0.2E 01
      GO TO 1450
   50 CANS = (5.,3.)+C6
      AA   =  0.3E 01
      BB   = -0.1E 01
      GO TO 1450
   51 CANS = (12.,4.)*C1
      AA   =  0.16E 02
      BB   = -0.80E 01
      GO TO 1450
   52 CANS = (-0.16E 02,2.0)/C2
      AA   =  0.9E 01
      BB   =  0.7E 01
      GO TO 1450
   53 CANS = (C3+(4.,1.))
      AA   = 0.6E 01
      BB   = 0.1E 01
      GO TO 1450
   54 CANS = ((0.,2.0)+C4)
      AA   = 0.0
      BB   = 0.0
      GO TO 1450
   55 CANS = (C5-(-(-4.0,-.2E 01)))
      AA   = 0.0
      BB   = 0.0
      GO TO 1450
   56 CANS = C5+(C1+(-1.,1.))
      AA   =  0.4E 01
      BB   =  0.2E 01
      GO TO 1450
   57 CANS = C6-((2.,0.)+C4)
      AA   = -0.4E 01
      BB   = -0.2E 01
      GO TO 1450
   58 CANS = C3*(C5+(-2.,-4.))
      AA   =  4.0
      BB   = -4.0
      GO TO 1450
   59 CANS = C5/((2.,0.)+C4)
      AA   =  0.50E 00
      BB   =  0.15E 01
      GO TO 1450
   60 CANS = (C1+(-1.,1.))+C3
      AA   =  0.2E 01
      BB   =  0.0
      GO TO 1450
   61 CANS =((1.,-1.)+C2)*C6
      AA   = 0.0
      BB   = 0.0
      GO TO 1450
   62 CANS = -(C3+(-(0.,2.)))-C5
      AA   = -0.6E 01
      BB   =  0.0
      GO TO 1450
   63 CANS =-(-(C1-(-(-1.,1.)))/(-C5))
      AA   = 0.0
      BB   = 0.0
      GO TO 1450
   64 CANS = (C1+(2.0,0.0))-(C2+(-(0.0,2.0)))
      AA   = 4.0
      BB   = 0.0
      GO TO 1450
   65 CANS = (-(1.,-1.)+(-C2))*(-C5+(-(4.0,2.0)))
      AA   = 0.0
      BB   = 0.0
      GO TO 1450
   66 CANS = ((2.0,0.0)+C6)/(-(0.0,2.0)+C5)
      AA   =  0.0
      BB   = -0.1E 01
      GO TO 1450
   67 CANS = (C3+C4)**1
      AA   =  2.0
      BB   = -2.0
      GO TO 1450
   68 CANS = (C3-C4)**2
      AA   =  0.0
      BB   =  0.8E 01
      GO TO 1450
   69 CANS = (C4/C3)**3
      AA   =  0.0
      BB   =  0.1E 01
      GO TO 1450
   70 CANS = (C3*C4)**4
      AA   = 0.256E 03
      BB   = 0.0
      GO TO 1450
   71 CANS = (C4*C4)**5
      AA   = -1024.0
      BB   = 0.0
      GO TO 1450
   72 CANS = (C4/(-C3))**IG
      AA   =   0.0
      BB   = -1.0
      GO TO 1450
   73 CANS = ((C3-C4)**2)**(IG-1)
      AA   = -0.64E 02
      BB   =  0.0
      GO TO 1450
   74 CANS = ((C3-C4)**(5-IG))**(IG-1)
      AA   = -0.64E 02
      BB   =  0.0
      GO TO 1450
   75 CANS = ((C3-C4)**(-IG+5))**(IG-1)
      AA   = -0.64E 02
      BB   =  0.0
 1450 RPT1 = AA-ABS(AA*0.1E-05)
      RPT2 = AA+ABS(AA*0.1E-05)
      APT1 = BB-ABS(BB*0.1E-05)
      APT2 = BB+ABS(BB*0.1E-05)
      IF (REAL(CANS).GE.RPT1.AND.REAL(CANS).LE.RPT2.AND.
     *    AIMAG(CANS).GE.APT1.AND.AIMAG(CANS).LE.APT2)  GO TO 1000
      IF (IPSW1.NE.0)          GO TO 1551
      WRITE(6,100)
      IPSW1=1
 1551 WRITE(6,103) ITEM,CANS
      GO TO 1000
 2000 IF (IPSW1.NE.0)          GO TO 2001
      WRITE(6,101)
      STOP
 2001 WRITE(6,102)
      STOP
      END
