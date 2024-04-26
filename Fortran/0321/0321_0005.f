      DOUBLE PRECISION RD1,RD2,RD3,RD4,RD5,RD6
      RF1  =  200.
      RF2  =   -5.0
      RF3  =    2.5
      RE1  =     .2E-01
      RE2  =     .5E-02
      RE3  =     -2E-03
      RD1  = -300.
      RD2  =    4.5
      RD3  =    3.
      RD4  =    2D+03
      RD5  =   -3.D 01
      RD6  =    .5D-02
      IPSW = 0
      IG   = 2
      ITEM = 0
 1000 ITEM = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,
     1       16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,
     2       31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,2000),ITEM
  100 FORMAT(1H1/1H0,5X,40H* TEST OF EXPRESSION ( REAL*4 = REAL*8 ,,
     *                 23H REAL*4 )  ERROR LIST *//1H0,5X,
     *                  7HITEM.NO,5X,15HCONSTANT VALUE.,7X,
     *                 13HRESULT VALUE.)
  101 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0100 ***)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0100)
  103 FORMAT(1H0,7X,I5,2(4X,E16.8))
    1 RANS = 2D-01+0.5
      RANS1 =  0.7
      GO TO 1500
    2 RANS = RD1-2.E+02
      RANS1 =  -500.
      GO TO 1500
    3 RANS = 2.D-2*RF1
      RANS1 =  4.0
      GO TO 1500
    4 RANS = RD4+RE1
      RANS1 =  2.00002E 03
      GO TO 1500
    5 RANS =RD5-RF3
      RANS1 =  -32.5
      GO TO 1500
    6 RANS = RD6*RE2
      RANS1 =  0.25E-04
      GO TO 1500
    7 RANS = RD1/RF2
      RANS1 =  60.0
      GO TO 1500
    8 RANS = (RD2+RE3)
      RANS1 =  0.4498E 01
      GO TO 1500
    9 RANS = (RD3-(-RF1))
      RANS1 =  203.0
      GO TO 1500
   10 RANS = (-RD1*RE3)
      RANS1 = -6.0E-01
      GO TO 1500
   11 RANS = ((-RD2)/(-RE2))
      RANS1 =  0.9E 03
      GO TO 1500
   12 RANS = RD3-(RF3+RE1)
      RANS1 =  0.48
      GO TO 1500
   13 RANS = RD4+(RF2+RE2)
      RANS1 =  0.1995005E 04
      GO TO 1500
   14 RANS = (RD5+RD6)*RF1
      RANS1 =  -0.5999E 04
      GO TO 1500
   15 RANS = (RD1+RD2)/RE3
      RANS1 =  0.14775E+06
      GO TO 1500
   16 RANS = (RD1+RD4)+(RF2+RE2)
      RANS1 =  1695.005
      GO TO 1500
   17 RANS =(RD5+RD2)/(RD1+RF1)
      RANS1 =  0.255
      GO TO 1500
   18 RANS = RD1**1
      RANS1 =  -3.0E 02
      GO TO 1500
   19 RANS = (RD1+RF1)**2
      RANS1 =  1.0E 04
      GO TO 1500
   20 RANS = (RD4+2D+03)**3
      RANS1 =  0.64E 11
      GO TO 1500
   21 RANS = (.7D-02+RD6)**4
      RANS1 =  0.20736E-07
      GO TO 1500
   22 RANS = RD4**5.
      RANS1 =  32.0E+15
      GO TO 1500
   23 RANS = +2D+25
      RANS1 =  2D+25
      GO TO 1500
   24 RANS = +RD4
      RANS1 =  2.0E 03
      GO TO 1500
   25 RANS = +(RD5)
      RANS1 =  -3.0E 01
      GO TO 1500
   26 RANS = (+RD6)
      RANS1 =  0.5E-02
      GO TO 1500
   27 RANS = +(+RD1)
      RANS1 =  -300.0
      GO TO 1500
   28 RANS = -RD2
      RANS1 =  -4.5
      GO TO 1500
   29 RANS = -(RD3)
      RANS1 =  -3.0
      GO TO 1500
   30 RANS = (-RD4)
      RANS1 =  -2.0E+03
      GO TO 1500
   31 RANS = -(-RD5)
      RANS1 =  -3.0E+01
      GO TO 1500
   32 RANS = RD6-(RF3+1.5)
      RANS1 =  -0.3995E+01
      GO TO 1500
   33 RANS = RD1*(500E-02+RF2)
      RANS1 =  0.0
      GO TO 1500
   34 RANS =(RD2+0.55D01)+RE3
      RANS1 =  0.9998E+01
      GO TO 1500
   35 RANS =(0.002D+03+RD3)/RD6
      RANS1 =  1.0E+03
      GO TO 1500
   36 RANS = (RD4+5D+03)+(RF1+2E02)
      RANS1 =  7.4E 03
      GO TO 1500
   37 RANS = (-3.E01+RD5)-(RE2-.5E-02)
      RANS1 =  -6.0E 01
      GO TO 1500
   38 RANS = RD4**2**2.0
      RANS1 =  0.16E+14
      GO TO 1500
   39 RANS = RD6**RD3
      RANS1 =  0.125E-06
      GO TO 1500
   40 RANS = (RD5**IG)**3.
      RANS1 =  1.9683E+13
   41 RANS = RD4**(RF2+2.5+RF3)
      RANS1 =  1.0
      GO TO 1500
   42 RANS = (RD5**(RD5+3E 01))**RD3
      RANS1 =  0.10E 01
      GO TO 1500
   43 RANS = RD2**(RF2+0.45D01+RF3)
      RANS1 =  0.2025E+02
      GO TO 1500
   44 RANS = RD4**((RF2/RF3)**IG)
      RANS1 =  0.16E+14
      GO TO 1500
   45 RANS = 1.25D+02**(-RF2-RF3-0.15D 01)
      RANS1 =  1.25E 02
 1500 RANS2 = RANS1-ABS(RANS1*0.1E-05)
      RANS3 = RANS1+ABS(RANS1*0.1E-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3)       GO TO 1000
      IF (IPSW.NE.0)                           GO TO 1501
      IPSW=1
      WRITE(6,100)
 1501 WRITE(6,103) ITEM,RANS1,RANS
      GO TO 1000
 2000 IF (IPSW.NE.0)           GO TO 2001
      WRITE(6,102)
      STOP
 2001 WRITE(6,101)
      STOP
      END
