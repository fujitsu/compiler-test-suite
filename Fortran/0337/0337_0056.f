      LOGICAL L,T,F
      T   =.TRUE.
      F   =.FALSE.
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      A   =1.56E 03
      B   =-3.4E 05
C
      ITM =0
      L   =.TRUE.
      GO TO 900
C
    2 L   =.FALSE.
      GO TO 901
C
    3 L   =A.LT.B
      GO TO 901
C
    4 L   =B.LT.B
      GO TO 901
C
    5 L   =B.LT.A
      GO TO 900
C
    6 L   =A.LE.B
      GO TO 901
C
    7 L   =B.LE.B
      GO TO 900
C
    8 L   =B.LE.A
      GO TO 900
C
    9 L   =A.EQ.B
      GO TO 901
C
   10 L   =A.EQ.A
      GO TO 900
C
   11 L   =B.EQ.A
      GO TO 901
C
   12 L   =A.NE.B
      GO TO 900
C
   13 L   =B.NE.B
      GO TO 901
C
   14 L   =B.NE.A
      GO TO 900
C
   15 L   =A.GT.B
      GO TO 900
C
   16 L   =A.GT.A
      GO TO 901
C
   17 L   =A.GE.B
      GO TO 900
C
   18 L   =B.GE.B
      GO TO 900
C
   19 L   =B.GE.A
      GO TO 901
C
   20 L   =-1.03.LT.B
      GO TO 901
C
   21 L   =B.LT.A*4.5/3.2
      GO TO 900
C
   22 L   =-4.7**3.LT.-4.7**3
      GO TO 901
C
   23 L   =A*B.LE.A*(-3.3E 05)
      GO TO 900
C
   24 L   =B/A.LE.B/1.56E-03
      GO TO 901
C
   25 L   =B*3.5.LE.A/0.9
      GO TO 900
C
   26 L   =0.07.EQ.A*B
      GO TO 901
C
   27 L=0.8.EQ.0.7**0.4
      GO TO 901
C
   28 L   =-43.2*4.3.EQ.B
      GO TO 901
C
   29 L   =A**2-B.NE.B/3.4
      GO TO 900
C
   30 CONTINUE
C
      L   =B*3.4.NE.B*3.+1.0E-7
      GO TO 900
C
   31 L   =B*7.7.NE.2.8
      GO TO 900
C
   32 L   =A/0.2.GT.B
      GO TO 900
C
   33 L   =-3.4E 05.GT.B
      GO TO 901
C
   34 L   =B/3.7.GT.0.8
      GO TO 901
C
   35 L   =0.11111E 30.GE.B*0.8
      GO TO 900
C
   36 L   =-333333E-7.GE.-333333E-7
      GO TO 900
C
   37 L   =B*0.8.GE.A
      GO TO 901
C
   38 L   =B.GT.A
      GO TO 901
  900 ITM =ITM+1
      IF(L)GO TO 700
      GO TO 701
  901 ITM =ITM+1
      IF(L)GO TO 702
      GO TO 703
  700 WRITE(6,103)ITM
 1000 GO TO (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,
     *24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39),ITM
  701 WRITE(6,102)ITM,L,T
      GO TO 1000
  702 WRITE(6,102)ITM,L,F
      GO TO 1000
  703 WRITE(6,103)ITM
      GO TO 1000
   39 CONTINUE
      STOP
      END
