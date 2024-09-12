C
      WRITE (6,1)
      WRITE (6,2)
C
      DO 100 K1=1,5
      DO 100 K2=1,5
      DO 100 K3=1,5
      DO 100 K4=1,5
      DO 100 K5=1,5
      I=1
      I=2
      I=3
  100 CONTINUE
      IANS=3
      IERR=IABS(I-IANS)
      ITEM=1
      IF (IERR.NE.0) GO TO 101
      WRITE (6,3) ITEM,I,IANS,IERR
      GO TO 110
  101 WRITE (6,4) ITEM,I,IANS,IERR
C
C
  110 ITEM=2
      J=0
      I=-10000
      II=1
      DO 111 K1=1,2
      DO 111 K2=1,2
      DO 111 K3=1,2
      DO 111 K4=1,2
      DO 111 K5=1,2
      DO 111 K6=1,2
      DO 111 K7=1,2
      DO 111 K8=1,2
      DO 111 K9=1,2
      DO 111 K10=1,2
      DO 111 K11=1,2
      DO 111 K12=1,2
      DO 111 K13=1,2
      DO 111 K14=1,2
      I=I+II
  111 J=J+1
      IANS=6384
      IERR=IABS(I-IANS)
      IF (IERR.NE.0) GO TO 112
      WRITE (6,3) ITEM,I,IANS,IERR
      GO TO 120
  112 WRITE (6,4) ITEM,I,IANS,IERR
C
C
  120 ITEM=3
      J=0
      DO 121 K1=1,2
      DO 121 K2=1,2
      DO 121 K3=1,2
      DO 121 K4=1,2
      DO 121 K5=1,2
      DO 121 K6=1,2
      DO 121 K7=1,2
      DO 121 K8=1,2
      DO 121 K9=1,2
      DO 121 K10=1,2
      DO 121 K11=1,2
      DO 121 K12=1,2
      DO 121 K13=1,2
      DO 121 K14=1,2
      GO TO 122
  123 J=J+1
  121 CONTINUE
      GO TO 124
  122 I=1
      I=2
      I=3
      GO TO 123
  124 IANS=3
      IERR=IABS(I-IANS)
      IF (IERR.NE.0) GO TO 125
      WRITE (6,3) ITEM,I,IANS,IERR
      GO TO 130
  125 WRITE (6,4) ITEM,I,IANS,IERR
C
C
  130 ITEM=4
      J=0
      I=-10000
      II=1
      DO 131 K1=1,2
      DO 131 K2=1,2
      DO 131 K3=1,2
      DO 131 K4=1,2
      DO 131 K5=1,2
      DO 131 K6=1,2
      DO 131 K7=1,2
      DO 131 K8=1,2
      DO 131 K9=1,2
      DO 131 K10=1,2
      DO 131 K11=1,2
      DO 131 K12=1,2
      DO 131 K13=1,2
      DO 131 K14=1,2
      GO TO 132
  133 J=J+1
  131 CONTINUE
      GO TO 134
  132 I=I+II
      GO TO 133
  134 IANS=6384
      IERR=IABS(I-IANS)
      IF (IERR.NE.0) GO TO 135
      WRITE (6,3) ITEM,I,IANS,IERR
      GO TO 140
  135 WRITE (6,4) ITEM,I,IANS,IERR
C
C
  140 WRITE (6,5)
C
      STOP
C
C
    1 FORMAT (1H1,6X,9H*FORTRAN*,5X,5X,5HENTER///)
    2 FORMAT (1H0,17X,8H- ITEM -,9X,11H- JUSTICE -,7X,18H- COMPUTED VALU
     *E -,8X,17H- COMPARE VALUE -,12X,13H- DIFERENCE -//)
    3 FORMAT(1H0,21X,1H(,I2,1H),16X,4H*OK*,3(20X,I5))
    4 FORMAT(1H0,21X,1H(,I2,1H),13X,7H*ERROR*,3(20X,I5))
    5 FORMAT (1H0/6X,24H*FORTRAN*          EXIT  /)
C
      END
