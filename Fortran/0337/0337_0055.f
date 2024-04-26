      LOGICAL L,T,F
      T   =.TRUE.
      F   =.FALSE.
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      I   =108
      J   =109
C
      ITM =1
      L   =.TRUE.
      GO TO 900
C
    2 ITM =ITM+1
      L   =.FALSE.
      GO TO 901
C
    3 ITM =ITM+1
      L   =I.LT.J
      GO TO 900
C
    4 ITM =ITM+1
      L   =I.LT.I
      GO TO 901
C
    5 ITM =ITM+1
      L   =J.LT.I
      GO TO 901
C
    6 ITM =ITM +1
      L   =I.LE.J
      GO TO 900
C
    7 ITM =ITM+1
      L   =I.LE.I
      GO TO 900
C
    8 ITM =ITM+1
      L   =J.LE.I
      GO TO 901
C
    9 ITM =ITM+1
      L   =I.EQ.J
      GO TO 901
C
   10 ITM =ITM+1
      L   =I.EQ.I
      GO TO 900
C
   11 ITM =ITM+1
      L   =J.EQ.I
      GO TO 901
C
   12 ITM =ITM+1
      L   =I.NE.J
      GO TO 900
C
   13 ITM =ITM+1
      L   =I.NE.I
      GO TO 901
C
   14 ITM =ITM+1
      L   =J.NE.I
      GO TO 900
C
   15 ITM =ITM+1
      L   =I.GT.J
      GO TO 901
C
   16 ITM =ITM+1
      L   =I.GT.I
      GO TO 901
C
   17 ITM =ITM+1
      L   =J.GT.I
      GO TO 900
C
   18 ITM =ITM+1
      L   =I.GE.J
      GO TO 901
C
   19 ITM =ITM+1
      L   =J.GE.J
      GO TO 900
C
   20 ITM =ITM+1
      L   =J.GE.I
      GO TO 900
C
   21 ITM =ITM+1
      L   =3*8.LT.I
      GO TO 900
C
   22 ITM =ITM+1
      L   =23**2/4.LE.45**2+I
      GO TO 900
C
   23 ITM =ITM+1
      L   =-20001.EQ.-30000+9999
      GO TO 900
C
   24 ITM =ITM+1
      L   =I+2.NE.J
      GO TO 900
C
   25 ITM =ITM+1
      L   =J*20.GT.I
      GO TO 900
C
   26 ITM =ITM+1
      L   =J.GE.I/3
      GO TO 900
  900 IF(L)GO TO 700
      GO TO 701
  901 IF(L)GO TO 702
      GO TO 703
  700 WRITE(6,103)ITM
 1000 GO TO (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,
     *24,25,27),ITM
  701 WRITE(6,102)ITM,L,T
      GO TO 1000
  702 WRITE(6,102)ITM,L,F
      GO TO 1000
  703 WRITE(6,103)ITM
      GO TO 1000
   27 CONTINUE
      STOP 7777
      END
