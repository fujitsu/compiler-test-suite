C
      REAL  ID1,ID2,ID3,ID4
      INTEGER ITEM
      DIFF=1.0E-6
      WRITE (6,10)
   10 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER  / )
C
C
      WRITE (6,20)
   20 FORMAT(1H0,3X,11H+ JUSTICE +,3X,8H+ ITEM +,5X,15H+ SOURCE DATA +,
     *       5X,20H+ FIELD DESCRIPTOR +,5X,20H     + ANSWER +     ,5X,
     *       17H+ COMPARE VALUE +  / )
      ID1= 0.1236E+05
      ID2=-0.89345E+19
      ID3= 0.7173E -03
      ID4=-0.20E-13
      READ (5,30) RW1,RW2,RW3,RW4
   30 FORMAT (F15.8 /  10X,F12.5  /  F9.1,11X,F9.7 )
C
      ITEM=1
      IF ( ABS(ID1-RW1)-ABS(ID1)*DIFF ) 35,40,40
   35 WRITE (6,36 ) ITEM,RW1,ID1
   36 FORMAT (1H0,5X,7H*OK*    ,7X,1H(,I2,1H),7X,15H     0.1236E+05,12X,
     *       5HF15.8,17X,E14.7,10X,E14.7 )
      GO TO 45
   40 WRITE (6,41) ITEM,RW1,ID1
   41 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H     0.1236E+05,12X,
     *       5HF15.8,17X,E14.7,10X,E14.7  )
C
   45 ITEM=ITEM+1
      IF (ABS(ID2-RW2)-ABS(ID2)*DIFF) 50,55,55
   50 WRITE (6,51) ITEM,RW2,ID2
   51 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,15H   -0.89345E 19,12X,
     *       5HF12.5,17X,E14.7,10X,E14.7  )
      GO TO 60
   55 WRITE (6,56) ITEM,RW2,ID2
   56 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H   -0.89345E 19,12X,
     *       5HF12.5,17X,E14.7,10X,E14.7 )
C
   60 ITEM=ITEM+1
      IF (ABS(ID3-RW3)-ABS(ID3)*DIFF) 63,65,65
   63 WRITE (6,62) ITEM,RW3,ID3
   62 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,15H     71.730E-5,12X,
     *       5H F9.1,17X,E14.7,10X,E14.7 )
      GO TO 70
   65 WRITE (6,66) ITEM,RW3,ID3
   66 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H      71.730E-5,12X,
     *       5H F9.1,17X,E14.7,10X,E14.7 )
C
   70 ITEM=ITEM+1
      IF (ABS(ID4-RW4)-ABS(ID4)*DIFF) 73,76,76
   73 WRITE(6,74) ITEM,RW4,ID4
   74 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,16H        -2.0E-20,12X,
     *       5H F9.7,17X,E14.7,10X,E14.7 )
      GO TO 80
   76 WRITE (6,77) ITEM,RW4,ID4
   77 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,16H        -2.0E-20,12X,
     *       5H F9.7,17X,E14.7,10X,E14.7 )
C
C
   80 RD1 =-0.7654315E+15
      RD2 =0.0
      RD3 =0.12123E-18
      RD4 =-0.3E-02
      READ (5,85) RW1,RW2,RW3,RW4
   85 FORMAT ( F14.7,6X,F8.3 / F9.5,1X,F5.1  )
C
      ITEM=ITEM+1
      IF (ABS (RD1 - RW1) -ABS(RD1)*DIFF ) 90,95,95
   90 WRITE (6,92) ITEM,RW1,RD1
   92 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,15H -0.7654315 +15,12X,
     *       5HF14.7,17X,E14.7,10X,E14.7 )
      GO TO 100
   95 WRITE (6,97) ITEM,RW1,RD1
   97 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H -0.7654315 +15,12X,
     *       5HF14.7,17X,E14.7,10X,E14.7 )
C
  100 ITEM=ITEM+1
      IF ( ABS(RD2-RW2)-DIFF) 105,110,110
  105 WRITE (6,104) ITEM,RW2,RD2
      GO TO 115
  110 WRITE (6,106) ITEM,RW2,RD2
  104 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,15H        0.0E 00,12X,
     *       5H F8.3,17X,E14.7,10X,E14.7 )
  106 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H        0.0E 00,12X,
     *       5H F8.3,17X,E14.7,10X,E14.7 )
C
  115 ITEM=ITEM+1
      IF (ABS(RD3-RW3)-ABS(RD3)*DIFF) 120,125,125
  120 WRITE (6,121) ITEM,RW3,RD3
      GO TO 130
  125 WRITE (6,124) ITEM,RW3,RD3
  121 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,15H      12.123-20,12X,
     *       5H F9.5,17X,E14.7,10X,E14.7 )
  124 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H      12.123-20,12X,
     *       5H F9.5,17X,E14.7,10X,E14.7 )
C
  130 ITEM=ITEM+1
      IF  (ABS(RD4-RW4)-ABS(RD4)*DIFF ) 135,140,140
  135 WRITE (6,136) ITEM,RW4,RD4
      GO  TO  145
  140 WRITE (6,137) ITEM,RW4,RD4
  136 FORMAT(1H0,5X,7H*OK*   ,7X,1H(,I2,1H),7X,15H          -3.-3,12X,
     *       5H F5.1,17X,E14.7,10X,E14.7 )
  137 FORMAT(1H0,5X,7H*ERROR*,7X,1H(,I2,1H),7X,15H          -3.-3,12X,
     *       5H F5.1,17X,E14.7,10X,E14.7 )
C
  145 WRITE (6,150)
  150 FORMAT(1H0 / 6X,23H*FORTRAN*          EXIT )
      STOP
      END






