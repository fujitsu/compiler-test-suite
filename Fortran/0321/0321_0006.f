      DOUBLE PRECISION RANS,RD1,RD2,RD3,RD4,RD5,RD6
      DOUBLE PRECISION RANS1,RANS2,RANS3
      RF1  =  200.
      RF2  =   -5.0
      RF3  =    2.5
      RE1  =     .2E-01
      RE2  =    5.0E-02
      RE3  =     -2E-03
      RD1  = -300.
      RD2  =    4.5
      RD3  =    3.
      RD4  =    2D+03
      RD5  =  -3.D 01
      RD6  =    .5D-02
      IPSW = 0
      ITEM = 0
      IG   = 2
 1000 ITEM = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,
     1       16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,
     2       31,32,33,34,35,2000),ITEM
  100 FORMAT(1H1/1H0,5X,23H* TEST0110 ERROR LIST *//1H0,
     *              5X,7HITEM.NO,5X,15HCONSTANT VALUE.,14X,6HVALUE.)
  101 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0110 ***)
  102 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0110)
  103 FORMAT(1H0,7X,I5,2(D20.10))
    1 RANS = 5.0E-02-(-.5D-02)
      RANS1 =  5.5D-02
      GO TO 1500
    2 RANS = RE3*.5D-02
      RANS1 = -1.D-05
      GO TO 1500
    3 RANS = (-2E-03)/RD4
      RANS1 = -1.0D-06
      GO TO 1500
    4 RANS = RF1+RD1
      RANS1 = -100.
      GO TO 1500
    5 RANS = (-RF2)-(-RD2)
      RANS1 =  9.5
      GO TO 1500
    6 RANS = -(RF3)*RD3
      RANS1 = -7.5
      GO TO 1500
    7 RANS =   RE2/.5D-02
      RANS1 =  10.
      GO TO 1500
    8 RANS =   RE2/(-(-RD6))
      RANS1 =  1.0D01
      GO TO 1500
    9 RANS = (RF1+RD4)
      RANS1 =  2.2D03
      GO TO 1500
   10 RANS = (RF2-(-RD5))
      RANS1 = -3.5D01
      GO TO 1500
   11 RANS = (-RF3*RD6)
      RANS1 =  -0.125D-01
      GO TO 1500
   12 RANS = ((-RE1)/(-RD4))
      RANS1 =  1D-05
      GO TO 1500
   13 RANS =   RE2-(RD5+RD6)
      RANS1 =  3.0045D 01
      GO TO 1500
   14 RANS = RE3+(RD2+RD4)
      RANS1 =  2.004498D 03
      GO TO 1500
   15 RANS = (RE2+RF3)*RD3
      RANS1 =  7.65D 00
      GO TO 1500
   16 RANS = (RE1+RE3)/RD4
      RANS1 =  9D-06
      GO TO 1500
   17 RANS = (RF1+RE2)+(RD5-RD1)
      RANS1 =  4.7005D 02
      GO TO 1500
   18 RANS = (RF2-RF3)/(RD2+RD3)
      RANS1 = -1.0
      GO TO 1500
   19 RANS = (RF3+RD2)**RD3
      RANS1 =  343.0
      GO TO 1500
   20 RANS = RF1-(RD6-.5D-02)
      RANS1 =  2.0D 02
      GO TO 1500
   21 RANS = RF2*(3D01+RD5)
      RANS1 =  0.0
      GO TO 1500
   22 RANS = (RF3-0.25E01)+RD4
      RANS1 =  2000.0
      GO TO 1500
   23 RANS = (+2E-03+RE3)/RD1
      RANS1 =  0.0
      GO TO 1500
   24 RANS = (RF1+(-5.))+((-RD1)/3D02)
      RANS1 =  1.96D 02
      GO TO 1500
   25 RANS = (-.5E-01+RE2)-(RD2/(-RD3))
      RANS1 =  1.5
      GO TO 1500
   26 RANS = (RE1*.2E-01)/(-(.5D-02)/RD6)
      RANS1 = -4D-04
      GO TO 1500
   27 RANS = +(RF1+RD4)
      RANS1 =  2.2D+03
      GO TO 1500
   28 RANS = +(+RF2-(-RD5))
      RANS1 = -3.5D+01
      GO TO 1500
   29 RANS = -(+(-RF3*RD6))
      RANS1 =  0.125D-01
      GO TO 1500
   30 RANS = -(-(-RE1)/(-RD4))
      RANS1 =  0.1D-04
      GO TO 1500
   31 RANS = -(RE3+(RD2+RD4))
      RANS1 = -2004.498
      GO TO 1500
   32 RANS = +(-(RE2+RF3))*RD3
      RANS1 = -7.65
      GO TO 1500
   33 RANS = -((RD2+RF3)**IG)**RD3
      RANS1 = -0.117649D+06
      GO TO 1500
   34 RANS = (2E+03+RD4)**0.2D 01**IG
      RANS1 =  2.56D+14
      GO TO 1500
   35 RANS = (RD4*.2D 02)**(RF2+RD3)
      RANS1 =  0.625D-09
 1500 RANS2 =  RANS1-DABS(RANS1*0.1D-05)
      RANS3 =  RANS1+DABS(RANS1*0.1D-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3)        GO TO 1000
      IF (IPSW.NE.0)                              GO TO 1502
      IPSW=1
      WRITE(6,100)
 1502 WRITE(6,103) ITEM,RANS1,RANS
      GO TO 1000
 2000 IF (IPSW.NE.0)           GO TO 2001
      WRITE(6,102)
      STOP
 2001 WRITE(6,101)
      STOP
      END
