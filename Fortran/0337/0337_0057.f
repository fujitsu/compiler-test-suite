      LOGICAL T,F,S,G,L
      T   =.TRUE.
      F   =.FALSE.
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      S   =.TRUE.
      G   =.FALSE.
C
      ITM =0
      L   =T.AND.S
      GO TO 900
C
    2 L   =T.AND.F
      GO TO 901
C
    3 L   =G.AND.S
      GO TO 901
C
    4 L   =F.AND.G
      GO TO 901
C
    5 L   =T.OR.S
      GO TO 900
C
    6 L   =T.OR.F
      GO TO 900
C
    7 L   =G.OR.S
      GO TO 900
C
    8 L   =F.OR.G
      GO TO 901
C
    9 L   =.NOT.T
      GO TO 901
C
   10 L   =.NOT.F
      GO TO 900
C
   11 L   =.TRUE..AND..TRUE.
      GO TO 900
C
   12 L   =.TRUE..AND..FALSE.
      GO TO 901
C
   13 L   =.FALSE..AND..TRUE.
      GO TO 901
C
   14 L   =.FALSE..AND..FALSE.
      GO TO 901
C
   15 L   =.TRUE..OR..TRUE.
      GO TO 900
C
   16 L   =.TRUE..OR..FALSE.
      GO TO 900
C
   17 L   =.FALSE..OR..TRUE.
      GO TO 900
C
   18 L   =.FALSE..OR..FALSE.
      GO TO 901
C
   19 L   =.NOT..TRUE.
      GO TO 901
C
   20 L   =.NOT..FALSE.
      GO TO 900
C
   21 L   =T.AND..TRUE.
      GO TO 900
C
   22 L   =T.AND..FALSE.
      GO TO 901
C
   23 L   =.FALSE..AND.T
      GO TO 901
C
   24 L   =.FALSE..AND.F
      GO TO 901
C
   25 L   =T.OR..TRUE.
      GO TO 900
C
   26 L   =T.OR..FALSE.
      GO TO 900
C
   27 L   =.FALSE..OR.T
      GO TO 900
C
   28 L   =.FALSE.
      GO TO 901
  900 ITM =ITM+1
      IF(L)GO TO 700
      GO TO 701
  901 ITM =ITM+1
      IF(L)GO TO 702
      GO TO 703
  700 WRITE(6,103)ITM
 1000 GO TO (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,
     *24,25,26,27,28,29),ITM
  701 WRITE(6,102)ITM,L,T
      GO TO 1000
  702 WRITE(6,102)ITM,L,F
      GO TO 1000
  703 WRITE(6,103)ITM
      GO TO 1000
   29 CONTINUE
      STOP
      END
