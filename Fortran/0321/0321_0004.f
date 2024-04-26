      IG1  =   2
      IG2  =  -2
      RF1  = 500.0
      RF2  =  50.0
      RF3  =   2.
      RF4  =    .5
      RF5  =  -3.
      RE1  =     5E02
      RE2  =   0.5E+02
      RE3  =    .2E 01
      RE4  =    5.E-01
      RE5  =    -3E 00
      IPSW =   0
      ITEM =   0
 1000 ITEM = ITEM+1
      GO TO ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,
     *       16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,
     *       31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,
     *       46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,
     *       61,62,63,64,65,66,67,68,69,70,2000),ITEM
  100 FORMAT(1H1/1H0,5X,23H* TEST0090 ERROR LIST *//1H0,
     *    5X,7HITEM.NO,1X,15HCONSTANT VALUE.,3X,13HRESULT VALUE.)
  101 FORMAT(1H0,7X,I5,2(E16.8))
  103 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0090)
  104 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0090 ***)
    1 RANS = 500.0+50.
      RANS1 = 550.
      GO TO 1500
    2 RANS = 500.-.5E 02
      RANS1 = .45E+03
      GO TO 1500
    3 RANS = 0.5E02*.25
      RANS1 = 12.5E00
      GO TO 1500
    4 RANS = 5E02/.5E03
      RANS1 = 0.1E01
      GO TO 1500
    5 RANS = 500E-02*.5E-03
      RANS1 = 2.5E-03
      GO TO 1500
    6 RANS = RF1+1234.123
      RANS1 = 1734.123
      GO TO 1500
    7 RANS = RF1-.1234123E 04
      RANS1 =-.0734123E04
      GO TO 1500
    8 RANS = RE1*10.0
      RANS1 = .5E04
      GO TO 1500
    9 RANS = RE1/.5E-02
      RANS1 = .1E06
      GO TO 1500
   10 RANS = RF1+(5.*RF2)
      RANS1 = 750.
      GO TO 1500
   11 RANS = 0.5*RF1
      RANS1 = 250.
      GO TO 1500
   12 RANS = -2.123E03+RE1
      RANS1 = -16.23E02
      GO TO 1500
   13 RANS = -5E-02-RF1
      RANS1 = -500.05
      GO TO 1500
   14 RANS = -500./RF1
      RANS1 = -1.
      GO TO 1500
   15 RANS = RF1+RF2
      RANS1 = 5.5E 02
      GO TO 1500
   16 RANS = RF1-RE1
      RANS1 = 0.0
      GO TO 1500
   17 RANS = RE1*RF3
      RANS1 = 1.E03
      GO TO 1500
   18 RANS = RE2/RE3
      RANS1 = 0.25E+02
      GO TO 1500
   19 RANS = RF1-(RF2+RF3)
      RANS1 = 448.
      GO TO 1500
   20 RANS = RF2/(RF2+RE2)
      RANS1 = 0.5
      GO TO 1500
   21 RANS = RE1*(RE3+RF2)
      RANS1 = 2.6E+04
      GO TO 1500
   22 RANS = RE1+(RE2/RE3)
      RANS1 = 5.25E 02
      GO TO 1500
   23 RANS = (RE1-RE2)+RE3
      RANS1 = 4.52E 02
      GO TO 1500
   24 RANS = (RE1-RF1)-RE2
      RANS1 = -.50E 02
      GO TO 1500
   25 RANS = (RF1-RE1)*RE1
      RANS1 = 0.0
      GO TO 1500
   26 RANS = (RE1+RF1)/RF2
      RANS1 = 2E01
      GO TO 1500
   27 RANS = (RF1+RF2)+(RE1-RE2)
      RANS1 = 1.E+03
      GO TO 1500
   28 RANS = (RF1-RE2)*(RE1-RF2)
      RANS1 = 2.025E05
      GO TO 1500
   29 RANS = (RF3+RE3)-(RF5+RE5)
      RANS1 = 10.0
      GO TO 1500
   30 RANS =  (RE4/(-RF4))/(RF3+RF4)
      RANS1 = -4E-01
      GO TO 1500
   31 RANS = RF1**0
      RANS1 = 1.
      GO TO 1500
   32 RANS = RF2**2
      RANS1 = 2500.0
      GO TO 1500
   33 RANS = RE3**3
      RANS1 = 0.8E01
      GO TO 1500
   34 RANS = RF4**4
      RANS1 = 0.0625
      GO TO 1500
   35 RANS = RE5**5
      RANS1 = -.243E 03
      GO TO 1500
   36 RANS = (RF3+RF4)**1
      RANS1 = 2.5
      GO TO 1500
   37 RANS = (RF3-RE4)**2
      RANS1 = 2.25
      GO TO 1500
   38 RANS = (RE4*RF3)**3
      RANS1 = 1.
      GO TO 1500
   39 RANS = (RE1/RE2)**4
      RANS1 = 1E04
      GO TO 1500
   40 RANS = (RE4*RE4)**5
      RANS1 = 0.9765625E-03
      GO TO 1500
   41 RANS = +RF1
      RANS1 = 500.
      GO TO 1500
   42 RANS = (+RE1)
      RANS1 = .5E03
      GO TO 1500
   43 RANS = +(RF2)
      RANS1 = 0.5E 02
      GO TO 1500
   44 RANS = +(+RE5)
      RANS1 = -0.3E+01
      GO TO 1500
   45 RANS = -RE1
      RANS1 = -5E 02
      GO TO 1500
   46 RANS = (-RF1)
      RANS1 = -500.
      GO TO 1500
   47 RANS = -(RE4)
      RANS1 = -5.0E-01
      GO TO 1500
   48 RANS = -(-RF5)
      RANS1 = -3.0
      GO TO 1500
   49 RANS = 2.0+RF1
      RANS1 = 502.
      GO TO 1500
   50 RANS = 0.2E 01+RF2
      RANS1 = 0.52E 02
      GO TO 1500
   51 RANS = .00025*RE4
      RANS1 = 1.25E-04
      GO TO 1500
   52 RANS = .00005/RE3
      RANS1 = 0.25E-04
      GO TO 1500
   53 RANS = RE1+5E02
      RANS1 = 10E 02
      GO TO 1500
   54 RANS =RE5-3.
      RANS1 = -.6E 01
      GO TO 1500
   55 RANS =RF5*.5E-01
      RANS1 = -0.15
      GO TO 1500
   56 RANS = RF1/50.
      RANS1 = 10.
      GO TO 1500
   57 RANS = RF1*(RF3-2.)
      RANS1 = 0.
      GO TO 1500
   58 RANS = RE2/(4.+RE5)
      RANS1 = 500E-01
      GO TO 1500
   59 RANS = (RF3+.2E 01)+RF2
      RANS1 = 54.
      GO TO 1500
   60 RANS = (.2E01+RE3)*RF3
      RANS1 = .8E+01
      GO TO 1500
   61 RANS = (RF3+2.)*(RE3-.2E+01)
      RANS1 = 0.
      GO TO 1500
   62 RANS = (.2E+01-RF3)/(2.+RE3)
      RANS1 = 0.
      GO TO 1500
   63 RANS = (RF3+.2E+01)**2.0
      RANS1 = 0.16E02
      GO TO 1500
   64 RANS = ((RE3**2)**RE3)
      RANS1 = 16.
      GO TO 1500
   65 RANS = RE3**(-RF3)
      RANS1 = 0.25
      GO TO 1500
   66 RANS = RF3**(-RE3)
      RANS1 = 0.25
      GO TO 1500
   67 RANS = RF3**(-IG1)
      RANS1 = 0.25
      GO TO 1500
   68 RANS = RE3**IG2
      RANS1 = 0.25
      GO TO 1500
   69 RANS = RF2**(RE3-RF3)
      RANS1 =  1.0
      GO TO 1500
   70 RANS = 0.2E-20**((RE1-RF1)/(-RF2))
      RANS1 = 1.
 1500 RANS2 =  RANS1-ABS(RANS1*0.1E-05)
      RANS3 =  RANS1+ABS(RANS1*0.1E-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3)    GO TO 1000
      IF (IPSW.NE.0)                              GO TO 1501
      WRITE(6,100)
      IPSW=1
 1501 WRITE(6,101) ITEM,RANS1,RANS
      GO TO 1000
 2000 IF (IPSW.NE.0)           GO TO 2001
      WRITE(6,103)
      STOP
 2001 WRITE(6,104)
      STOP
      END
