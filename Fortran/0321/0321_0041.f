      REAL*8  RPT,APT,RPT1,RPT2,APT1,APT2
      COMPLEX*16 C1,C2,C3,C4,C5,C6,CANS
      C1    =  (1D0,-1D0)
      C2    =  (-1D0,1D0)
      C3    = -(2D0,0D0)
      C4    = -(0D0,2D0)
      C5    =  (4D0,2D0)
      C6    =  (-4D0,-2D0)
      IPSW1 =  0
      ITEM  =  0
      IG    =  3
 1000 ITEM = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20,
     *       21,22,23,24,25,26,27,28,29,30,
     *       31,32,33,34,35,36,37,38,39,40,
     *       41,42,43,44,45,1800),ITEM
  100 FORMAT(1H1/1H0,5X,36H* TEST OF EXPRESSION ( COMPLEX*32 = ,
     *                  38HCOMPLEX*32 , COMPLEX*32 ) ERROR LIST *//1H0,
     *             25X,15HCONSTANT VALUE.,27X,13HRESULT VALUE./1H0,
     *              5X,7HITEM.NO,2(11X,9HREAL PART,6X,
     *                  14HIMAGINARY PART))
  101 FORMAT(1H1//1H0,33HERROR IS NOT DETECTED BY TEST0560)
  102 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0560 ***)
  103 FORMAT(1H0,7X,I5,4(D20.10))
    1 CANS = (.2D 01,-.2D 01)+(-.02D 02,.02D 02)
      RPT  = 0.0
      APT  = 0.0
      GO TO 1100
    2 CANS = (8D0,.2D 01)*(0D0,-.2D 01)
      RPT  =  0.4D  01
      APT  = -0.16D 02
      GO TO 1100
    3 CANS = (.4D 01,5D0)-(-.2D 01,-0.05D 02)
      RPT  = 0.6D 01
      APT  = 0.1D 02
      GO TO 1100
    4 CANS = (0.1D 01,0.04D 02)/(-2D0,0D0)
      RPT  = -0.5D 00
      APT  = -0.2D 01
      GO TO 1100
    5 CANS = C3+C4
      RPT  = -0.2D 01
      APT  = -0.2D 01
      GO TO 1100
    6 CANS = C1-C5
      RPT  = -0.3D01
      APT  = -0.3D01
      GO TO 1100
    7 CANS = C2*C6
      RPT  = 0.6D 01
      APT  = -0.2D 01
      GO TO 1100
    8 CANS = C1/C4
      RPT  = 0.5
      APT  = 0.5
      GO TO 1100
    9 CANS = C2+(C4+C5)
      RPT  = 0.3D 01
      APT  = 0.1D 01
      GO TO 1100
   10 CANS = C3-(C5+C6)
      RPT  = -0.2D 01
      APT  =  0.0D 00
      GO TO 1100
   11 CANS = C2*(C4+C5)
      RPT  = -0.4D 01
      APT  =  0.4D 01
      GO TO 1100
   12 CANS = C1/((-C4)+C6)
      RPT  = -0.25
      APT  =  0.25
      GO TO 1100
   13 CANS = (C1+C2)-C5
      RPT  = -0.4D 01
      APT  = -0.2D 01
      GO TO 1100
   14 CANS = (C2+C6)+C3
      RPT  = -0.7D 01
      APT  = -0.1D 01
      GO TO 1100
   15 CANS = (C1+C3)*C4
      RPT  = -0.2D 01
      APT  =  0.2D 01
      GO TO 1100
   16 CANS = (C2+C3)/C5
      RPT  = -0.5D 00
      APT  =  0.5D 00
      GO TO 1100
   17 CANS = (C1+C2)*((-C5)*(-C6))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1100
   18 CANS = (C1+C2)/((-C4)+(-C5))
      RPT  =  0.0
      APT  =  0.0
      GO TO 1100
   19 CANS = (C1+C3)+(C4+C5)
      RPT  =  0.3D 01
      APT  = -0.1D 01
      GO TO 1100
   20 CANS = (C2+C3)-(C5+C6)
      RPT  = -0.3D 01
      APT  =  0.1D 01
      GO TO 1100
   21 CANS = -(C3+C4)
      RPT  =  0.2D 01
      APT  =  0.2D 01
      GO TO 1100
   22 CANS = -(C1+(-C5))
      RPT  =  0.3D 01
      APT  =  0.3D 01
      GO TO 1100
   23 CANS = -((-C2)*(-C6))
      RPT  = -0.6D 01
      APT  =  0.2D 01
      GO TO 1100
   24 CANS = -((-C1)/C4)
      RPT  =  0.5
      APT  =  0.5
      GO TO 1100
   25 CANS = -(C1+(0.1D+01,1D0))
      RPT  = -0.2D+01
      APT  =  0.0
      GO TO 1100
   26 CANS = C2-(1D0,-1D0)
      RPT  = -0.2D 01
      APT  = 0.2D 01
      GO TO 1100
   27 CANS = C3*(0.4D1,-2D0)
      RPT  = -0.8D 01
      APT  =  0.4D 01
      GO TO 1100
   28 CANS = C1/(0.5D1,0.D0)
      RPT  =  0.2
      APT  = -0.2
      GO TO 1100
   29 CANS = (1D0,-1D0)+C4
      RPT  =  0.1D 01
      APT  = -0.3D 01
      GO TO 1100
   30 CANS = (-1D0,-2D0)-(-C5)
      RPT  =  0.3D 01
      APT  =  0.0D 00
      GO TO 1100
   31 CANS = (-4D0,0.3D 01)*C6
      RPT  =  0.22D 02
      APT  = -0.40D 01
      GO TO 1100
   32 CANS = (0.1D02,0.2D01)/(-C4)
      RPT  =  0.1D 01
      APT  = -0.5D 01
      GO TO 1100
   33 CANS = C2+(C4+(0.4D 01,0.2D 01))
      RPT  =  0.3D 01
      APT  =  0.1D 01
      GO TO 1100
   34 CANS = -(C3-((0.4D 01,.2D 01)+C6))
      RPT  =  0.2D 01
      APT  =  0.0D 00
      GO TO 1100
   35 CANS = (-0.1D1,.1D 01)*(C4+C5)
      RPT  = -.4D 01
      APT  =  .4D 01
      GO TO 1100
   36 CANS = (C1+(-1D0,1D0))-C5
      RPT  = -0.4D 01
      APT  = -0.2D 01
      GO TO 1100
   37 CANS = ((-1D0,1D0)+C3)+C6
      RPT  = -0.7D 01
      APT  = -0.1D 01
      GO TO 1100
   38 CANS = (C1+C3)*(-10.0D 00,0.2D 01)
      RPT  =  0.12D 02
      APT  = 0.8D 01
      GO TO 1100
   39 CANS = -((-C2)+(-C3))/(-(0.4D 01,0.2D 01))
      RPT  =  0.5D 00
      APT  =  -0.5D 00
      GO TO 1100
   40 CANS = (C1+C2)*(-(0.4D 01,0.2D 01)*(-C6))
      RPT  =  0.0D 00
      APT  =  0.0D 00
      GO TO 1100
   41 CANS = (C1+C2)/((-C4)+(-(0.4D 01,0.2D 01)))
      RPT  = 0.D 00
      APT  = .0D 00
      GO TO 1100
   42 CANS =((C1+(-(0.2D 01,.0D 00)))+(-0.D 00,-0.2D 01)+C5)
      RPT  =  .3D 01
      APT  = -.1D 01
      GO TO 1100
   43 CANS = ((-0.1D 01,1.0D 00)+C3)-(C5+(-0.4D 01,0.D 00))
      RPT  = -.3D 01
      APT  = -.1D 01
      GO TO 1100
   44 CANS = (((C2+C3)-C5)-(4D0,0D0))
      RPT  = -0.11D 02
      APT  = -.1D 01
      GO TO 1100
   45 CANS = ((C3*C3)**(IG-2))**(-IG+6)
      RPT  =  0.64D 02
      APT  =  0.0D 00
 1100 RPT1 = RPT-ABS(RPT*0.1D-05)
      RPT2 = RPT+ABS(RPT*0.1D-05)
      APT1 = APT-ABS(APT*0.1D-05)
      APT2 = APT+ABS(APT*0.1D-05)
      IF (REAL(CANS).GE.RPT1.AND.REAL(CANS).LE.RPT2.AND.
     *    IMAG(CANS).GE.APT1.AND.IMAG(CANS).LE.APT2) GO TO 1000
      IF (IPSW1.NE.0)                                  GO TO 1500
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
