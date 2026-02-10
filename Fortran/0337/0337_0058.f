      DIMENSION N(10),A(3,5)
      LOGICAL   N,T,F,L
      DIMENSION I(10),J(10)
      T   =.TRUE.
      F   =.FALSE.
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      DO 200 K=1,10
      I(K)=K+30000
  200 J(K)=K-30000
      M   =32767
C
      ITM =0
      N(1)=I(1).LT.J(1).AND.I(1).LE.J(1)-3
      GO TO 901
C
    2 N(2)=I(2).EQ.J(2).OR.I(2).NE.J(2)/4
      GO TO 900
C
    3 N(3)=I(3).GT.J(3).AND.I(3).GE.J(3)-34*18
      GO TO 900
C
    4 N(4)=.NOT.I(4).EQ.M-2763
      GO TO 901
C
    5 N(5)=I(5)*(3/M).EQ.M.AND.J(5).GT.J(5)-3.OR.M.LT.32767
      GO TO 901
C
    6 N(6)=(I(4)-30000)**4.GE.J(6)
      GO TO 900
  900 ITM =ITM+1
      IF(N(ITM))GO TO 700
      GO TO 701
  901 ITM =ITM+1
      IF(N(ITM))GO TO 702
      GO TO 703
  700 WRITE(6,103)ITM
 1000 GO TO (2,3,4,5,6,7),ITM
  701 WRITE(6,102)ITM,N(ITM),T
      GO TO 1000
  702 WRITE(6,102)ITM,N(ITM),F
      GO TO 1000
  703 WRITE(6,103)ITM
      GO TO 1000
    7 CONTINUE
      STOP 1234,quiet=.true.
      END
