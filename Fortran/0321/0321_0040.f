      REAL*8 RPT,APT,RPT1,RPT2,APT1,APT2
      COMPLEX*16  C4,C5,C6
      COMPLEX*16   CANS,C1,C2,C3
      C1    =  (1D0,-1D0)
      C2    =  (-1D0,1D0)
      C3    = -(2D0,0D0)
      C4    = -(0E0,2E0)
      C5    =  (4E0,2E0)
      C6    =  (-4E0,-2E0)
      IPSW1 =  0
      IPSW2 =  0
      ITEM  =  0
      IG    =  3
 1000 ITEM  = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20,
     *       21,22,23,24,25,26,27,28,29,30,
     *       31,32,33,34,35,36,37,38,39,40,
     *       41,42,43,44,45,1800),ITEM
  100 FORMAT(1H1/1H0,5X,36H* TEST OF EXPRESSION ( COMPLEX*16 = ,
     *                  38HCOMPLEX*16 , COMPLEX*32 ) ERROR LIST *//1H0,
     *             25X,15HCONSTANT VALUE.,27X,13HRESULT VALUE./1H0,
     *              5X,7HITEM.NO,2(11X,9HREAL PART,6X,
     *                  14HIMAGINARY PART))
  101 FORMAT(1H1//1H0,33HERROR IS NOT DETECTED BY TEST0550)
  102 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0550 ***)
  103 FORMAT(1H0,7X,I5,4(D20.10))
    1 CANS = (2D0,-2D0)+(-2E0,2E0)
      RPT  =  0.0
      APT  =  0.0
      GO TO 1100
    2 CANS = (4D0,5D0)-(-2E0,-5E0)
      RPT  =  6.0
      APT  = 10.0
      GO TO 1100
    3 CANS = (8D0,2D0)*(0.0,-2E0)
      RPT  =   4.0
      APT  = -16.0
      GO TO 1100
    4 CANS = (10D0,4D0)/(-2.0,0.0)
      RPT  = -5.0
      APT  = -2.0
      GO TO 1100
    5 CANS = (12D0,3D0)**0
      RPT  = 1.0
      APT  = 0.0
      GO TO 1100
    6 CANS = (0.123456D02,0.7890123D02)**1
      RPT  = 12.3456
      APT  = 78.90123
      GO TO 1100
    7 CANS = (1.D0,-1.D0)**2
      RPT  =  0.0
      APT  = -2.0
      GO TO 1100
    8 CANS = (0D0,-2D0)**3
      RPT  =  0.0
      APT  =  8.0
      GO TO 1100
    9 CANS = (-3D0,0D0)**4
      RPT  =  0.81D 02
      APT  =  0.00D 00
      GO TO 1100
   10 CANS = (2D0,-2D0)**5
      RPT  =-0.128D 03
      APT  = 0.128D 03
      GO TO 1100
   11 CANS = C3+C4
      RPT  = -2.0
      APT  = -2.0
      GO TO 1100
   12 CANS = C1-C5
      RPT  = -3.0
      APT  = -3.0
      GO TO 1100
   13 CANS = C2*C6
      RPT  = 6.0
      APT  = -2.0
      GO TO 1100
   14 CANS = C1/C4
      RPT  = 0.5D 00
      APT  = 0.5D 00
      GO TO 1100
   15 CANS = C2+(C4+C5)
      RPT  = 0.3D 01
      APT  = 0.1D 01
      GO TO 1100
   16 CANS = C3-(C5+C6)
      RPT  = -2.0
      APT  =  0.0
      GO TO 1100
   17 CANS = C2*(C4+C5)
      RPT  = -0.4D 01
      APT  =  0.4D 01
      GO TO 1100
   18 CANS = C1/((-C4)+C6)
      RPT  =  -0.25D 00
      APT  =   0.25D 00
      GO TO 1100
   19 CANS = (C1+C2)-C5
      RPT  = -0.4D 01
      APT  = -0.2D 01
      GO TO 1100
   20 CANS = (C2+C3)+C6
      RPT  = -0.7D 01
      APT  = -0.1D 01
      GO TO 1100
   21 CANS = (C1+C3)*C4
      RPT  = -0.2D 01
      APT  =  0.2D 01
      GO TO 1100
   22 CANS = (C2+C3)/C5
      RPT  = -0.5D 00
      APT  =  0.5D 00
      GO TO 1100
   23 CANS = (C1+C2)*((-C5)*(-C6))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1100
   24 CANS = (C1+C2)/((-C4)+(-C5))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1100
   25 CANS = (C1+C3)+(C4+C5)
      RPT  =  0.3D 01
      APT  = -0.1D 01
      GO TO 1100
   26 CANS = (C2+C3)-(C5+C6)
      RPT  = -0.3D 01
      APT  =  0.1D 01
      GO TO 1100
   27 CANS = (C3+C4)
      RPT  = -2.0
      APT  = -2.0
      GO TO 1100
   28 CANS = (C1+(-C5))
      RPT  = -3.0
      APT  = -3.0
      GO TO 1100
   29 CANS = ((-C2)*(-C6))
      RPT  = 0.6D 01
      APT  = -2.0
      GO TO 1100
   30 CANS = ((-C1)/C4)
      RPT = -0.5
      APT = -0.5
      GO TO 1100
   31 CANS = C1+(1E0,1E0)
      RPT  = 0.2D01
      APT  = 0.0
      GO TO 1100
   32 CANS = C2-(1.0,-1E0)
      RPT  = -2.0
      APT  =  2.0
      GO TO 1100
   33 CANS = C3*(4.0,-2.0)
      RPT  = -0.8D 01
      APT  =  0.4D 01
      GO TO 1100
   34 CANS = C1/(5.0,0.0)
      RPT  =  0.2
      APT  = -0.2
      GO TO 1100
   35 CANS = (1D0,-1D0)+C4
      RPT  =  0.1D 01
      APT  = -0.3D 01
      GO TO 1100
   36 CANS = (-1D0,-2D0)-(-C5)
      RPT  = 0.3D 01
      APT  = 0.0D 00
      GO TO 1100
   37 CANS = (-4D0,3D0)*C6
      RPT  =  0.22D 02
      APT  = -0.40D 01
      GO TO 1100
   38 CANS = (10D0,2D0)/(-C4)
      RPT  =  0.1D 01
      APT  = -0.5D 01
      GO TO 1100
   39 CANS = C2+(C4+(4.0,2.0))
      RPT  = 0.3D 01
      APT  = 0.1D 01
      GO TO 1100
   40 CANS = C3-((4.0,2E0)+C6)
      RPT  = -0.2D 01
      APT  =  0.0D 00
      GO TO 1100
   41 CANS = (-1D0,1D0)*(C4+C5)
      RPT  = -0.4D 01
      APT  =  0.4D 01
      GO TO 1100
   42 CANS = (C1+(-1D0,1D0))-C5
      RPT  = -0.4D 01
      APT  = -0.2D 01
      GO TO 1100
   43 CANS = ((-1D0,1D0)+C3)+C6
      RPT  = -0.7D 01
      APT  = -0.1D 01
      GO TO 1100
   44 CANS = (C1+C3)*(-(0E0,2E0))
      RPT  = -0.2D 01
      APT  =  0.2D 01
      GO TO 1100
   45 CANS = -((-C2)+(-C3))/(-(4.0,2E0))
      RPT  =  0.5D 00
      APT  =  -0.5D 00
      GO TO 1100
   46 CANS = (C1+C2)*(-(4.0,0.2E 01)*(-C6))
      RPT  =  0D0
      APT  =  0D0
      GO TO 1100
   47 CANS = (C1+C2)/((-C4)+(-(0.4E 01,2.0)))
      RPT  =  0D0
      APT  =  0D0
      GO TO 1100
   48 CANS = (C1+(-(2D0,0D0)))+(-(0.0,2.0)+C5)
      RPT  =  0.3D 01
      APT  = -0.1D 01
      GO TO 1100
   49 CANS = ((-1D0,1D0)+C3)-(C5+(-4.0,0.0))
      RPT  = -0.3D 01
      APT  = -0.1D 01
      GO TO 1100
   50 CANS = C1**1
      RPT  =  1.0
      APT  = -1.0
      GO TO 1100
   51 CANS = C2**2
      RPT  =  0.0
      APT  = -2.0
      GO TO 1100
   52 CANS = C3**3
      RPT  = -8.0
      APT  =  0.0
      GO TO 1100
   53 CANS = C4**4
      RPT  = 16.0
      APT  =  0.0
      GO TO 1100
   54 CANS = C5**5
      RPT  = -1216.0
      APT  = 1312.0
      GO TO 1100
   55 CANS = C4**IG
      RPT  =  0.0
      APT  = -8.0
      GO TO 1100
   56 CANS = C3**(IG-2)
      RPT  = -2.0
      APT  =  0.0
      GO TO 1100
   57 CANS = (C2+(1E0,-1.0))**(-IG+5)
      RPT  = 0.0
      APT  = 0.0
      GO TO 1100
   58 CANS = ((C3/C4)**(-2+IG))**3
      RPT  =  0.0
      APT  = -1.0
      GO TO 1100
   59 CANS = ((C2/(C5+C4)**1)**2)**(-IG+4)
      RPT  =  0.0
      APT  = -0.1250
      GO TO 1100
   60 CANS = (C6**(-IG+3))**(2+IG)
      RPT  = 1.0
      APT  = 0.0
 1100 RPT1 = RPT-ABS(RPT*0.1D-05)
      RPT2 = RPT+ABS(RPT*0.1D-05)
      APT1 = APT-ABS(APT*0.1D-05)
      APT2 = APT+ABS(APT*0.1D-05)
      IF (REAL(CANS).GE.RPT1.AND.REAL(CANS).LE.RPT2.AND.
     *    IMAG(CANS).GE.APT1.AND.IMAG(CANS).LE.APT2)  GO TO 1000
      IF  (IPSW1.NE.0)                                     GO TO 1500
      WRITE(6,100)
      IPSW1 = 1
 1500 WRITE(6,103) ITEM,RPT,APT,CANS
      GO TO 1000
 1800 IF (IPSW1.NE.0)                                  GO TO 1900
      WRITE(6,101)
      STOP
 1900 WRITE(6,102)
      STOP
      END
