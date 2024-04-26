      DIMENSION IARAY(2,2)
      ITEM=1
      N=1
      ISW=1
      IISW=1
      IARAY(1,1)=-50
      IARAY(1,2)=-1
      IARAY(2,1)=1
      IARAY(2,2)=50
      DIFF=1.0E-5
      J=5
C
   12 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       12HFLOAT(I) -  ,5H*****,20X,9H( PAGE = ,I3,2H )
     3       ///6X,11H- JUSTICE -,14X,12H- ARGUMENT -,7X,
     4       19H- COMPUTED RESULT -,9X,17H- COMPARE VALUE -,12X,
     5       14H- DIFFERENCE - / )
  100 GO TO (1,2,3,4,5,6),ISW
    1 IX=-32767
      ISW=2
      GO TO 110
    2 IX=-1234
      ISW=3
      GO TO 110
    3 IX=0
      ISW=4
      GO TO 110
    4 IX=1234
      ISW=5
      GO TO 110
    5 IX=32767
      ISW=6
  110 Y=FLOAT(IX)
      Z=IX
      XX=ABS(Z-Y)
      IF(Y)130,120,130
  120 DF=DIFF
      GO TO 140
  130 DF=DIFF*ABS(Z)
  140 IF(XX-DF)150,160,160
  150 WRITE(6,13)IX
   13 FORMAT(1H ,8X,4H*OK*,21X,I6,3(13X,E14.7))
      GO TO 170
  160 WRITE(6,14)IX,Y,Z,XX
   14 FORMAT(1H ,8X,7H*ERROR*,18X,I6,3(13X,E14.7))
  170 IF(ITEM-2)100,180,100
    6 ITEM=2

   15 FORMAT(1H0/19X,3H- (,I3,3H) -//)
  180 GO TO (21,22,23,24,25,26,27,28,29),IISW
   21 IX=IARAY(1,1)
      IISW=2
      GO TO 110
   22 IX=IARAY(1,2)
      IISW=3
      GO TO 110
   23 IX=IARAY(2,1)
      IISW=4
      GO TO 110
   24 IX=IARAY(2,2)
      IISW=5
      GO TO 110
   25 IX=(5-J**2)*3+10
      IISW=6
      GO TO 110
   26 IX=(J**2-J*2)*2/(-30)
      IISW=7
      GO TO 110
   27 IX=(IARAY(2,1)*10+J*2)/20
      IISW=8
      GO TO 110
   28 IX=IARAY(2,2)**2/100+J*5
      IISW=9
      GO TO 110
   29 CONTINUE
      STOP
      END
