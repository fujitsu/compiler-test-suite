      DIMENSION IARAY(2,2)
      IARAY(1,1)=-50
      IARAY(1,2)=-1
      IARAY(2,1)=1
      IARAY(2,2)=50
      ISW=1
      IISW=1
      N=0
      ITEM=1
      J=10
C
      N=N+1
      IF(N-1)100,110,100
  100 WRITE(6,12)
   12 FORMAT(1H1 / )
  110 WRITE(6,13)ITEM,N
   13 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       11HIABS(I) -  ,5H*****,21X,9H( PAGE = ,I3,2H ),
     3       ///6X,11H- JUSTICE -,20X,12H- ARGUMENT -,16X,
     4       19H- COMPUTED RESULT -,9X,17H- COMPARE VALUE -)
      L=0
  120 GO TO (1,2,3,4,5,6),ISW
    1 IX=-32767
      ISW=2
      GO TO 130
    2 IX=-1234
      ISW=3
      GO TO 130
    3 IX=0
      ISW=4
      GO TO 130
    4 IX=1234
      ISW=5
      GO TO 130
    5 IX=32767
      ISW=6
  130 IY=IABS(IX)
      IF(IX)140,150,150
  140 IZ=(-1)*IX
      GO TO 160
  150 IZ=IX
  160 IF(L)     170,180,161
  161 IF(L-10) 170,180,162
  162 IF(L-20) 170,180,163
  163 IF(L-30) 170,180,164
  164 IF(L-40) 170,180,170
  180 WRITE(6,14)
   14 FORMAT(1H )
  170 IF(IY-IZ)190,200,190
  190 WRITE(6,15)IX,IY,IZ
   15 FORMAT(1H ,8X,7H*ERROR*,24X,I6,27X,I6,21X,I6)
      GO TO 210
  200 WRITE(6,16)IX,IY,IZ
   16 FORMAT(1H ,8X,4H*OK*,27X,I6,27X,I6,21X,I6)
  210 L=L+1
      IF(ITEM-1)220,120,220
    6 ITEM=2
      WRITE(6,17)ITEM
   17 FORMAT(1H0/19X,3H- (,I3,3H) -/)
      L=0
  220 GO TO (21,22,23,24,25,26,27,28,29),IISW
   21 IX=IARAY(1,1)
      IISW=2
      GO TO 130
   22 IX=IARAY(1,2)
      IISW=3
      GO TO 130
   23 IX=IARAY(2,1)
      IISW=4
      GO TO 130
   24 IX=IARAY(2,2)
      IISW=5
      GO TO 130
   25 IX=((J**2-200)*6+100)/10
      IISW=6
      GO TO 130
   26 IX=(J**2+J*1-10*J/10)/(-100)
      IISW=7
      GO TO 130
   27 IX=(IARAY(1,1)*(-10)+50*10)/100
      IISW=8
      GO TO 130
   28 IX=(IARAY(1,1)**2+J/10*2000+100*IARAY(2,2)/10)/100
      IISW=9
      GO TO 130
   29 CONTINUE
      STOP
      END