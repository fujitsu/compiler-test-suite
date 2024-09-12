      DIMENSION  IARRAY(2,2),DIARAY(2,2)
      INTEGER DX,DIARAY
      INTEGER  X
      IARRAY(1,1)=-50
      IARRAY(1,2)=-1
      IARRAY(2,1)=1
      IARRAY(2,2)=50
      DIARAY(1,1)=-5000000
      DIARAY(1,2)=-100000
      DIARAY(2,1)=100000
      DIARAY(2,2)=5000000
      ISW=1
      IISW=1
      IS=1
      IIS=1
      DIFF=1.0E-5
      J=5
      JD=500
      ITEM=1
      N=1
C
      WRITE(6,100)
  100 FORMAT(1H1 / 7X,24H*FORTRAN*          ENTER)
      WRITE(6,200)ITEM,N
  200 FORMAT(1H0,8X,9H*** ITEM(,I2,5H) ***,7X,
     *       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     *       17HFLOAT(X) -  *****,20X,9H( PAGE = ,I3,2H )
     *       ///6X,11H- JUSTICE -,14X,12H- ARGUMENT -,7X,
     *       19H- COMPUTED RESULT -,9X,17H- COMPARE VALUE -,12X,
     *       14H- DIFFERENCE - / )
   14 GO TO(1,2,3,4,5,6),ISW
    1 X=-32767
      ISW=2
      GO TO 7
    2 X=-1234
      ISW=3
      GO TO 7
    3 X=0
      ISW=4
      GO TO 7
    4 X=1234
      ISW=5
      GO TO 7
    5 X=32767
      ISW=6
    7 Y=FLOAT(X)
      Z=X
      XX=ABS(Z-Y)
      IF(Y)8,9,8
    9 DF=DIFF
      GO TO 10
    8 DF=DIFF*ABS(Z)
   10 IF(XX-DF)11,12,12
   11 WRITE(6,300)X,Y,Z,XX
  300 FORMAT(1H ,8X,4H*OK*,21X,I6,3(13X,E14.7))
      GO TO 13
   12 WRITE(6,400)X,Y,Z,XX
  400 FORMAT(1H ,8X,7H*ERROR*,18X,I6,3(13X,E14.7))
   13 IF(ITEM-2)14,15,14
    6 ITEM=2
      WRITE(6,500)ITEM
  500 FORMAT(1H0 / 19X,3H- (,I3,3H) - // )
   15 GO TO(16,17,18,19,20,21,22,23,24),IISW
   16 X=IARRAY(1,1)
      IISW=2
      GO TO 7
   17 X=IARRAY(1,2)
      IISW=3
      GO TO 7
   18 X=IARRAY(2,1)
      IISW=4
      GO TO 7
   19 X=IARRAY(2,2)
      IISW=5
      GO TO 7
   20 X=(5-J**2)*3+10
      IISW=6
      GO TO 7
   21 X=(J**2-J*2)*2/(-30)
      IISW=7
      GO TO 7
   22 X=(IARRAY(2,1)*10+J*2)/20
      IISW=8
      GO TO 7
   23 X=IARRAY(2,2)**2/100+J*5
      IISW=9
      GO TO 7
   24 ITEM=3
      WRITE(6,500)ITEM
C
   38 GO TO(25,26,27,28,29,30),IS
   25 DX=-100000
      IS=2
      GO TO 31
   26 DX=-32769
      IS=3
      GO TO 31
   27 DX=2147483647
      IS=4
      GO TO 31
   28 DX=+32768
      IS=5
      GO TO 31
   29 DX=+100000
      IS=6
   31 Y=FLOAT(DX)
      Z=DX
      XX=ABS(Z-Y)
      IF(Y)32,33,32
   32 DF=DIFF*ABS(Z)
      GO TO 34
   33 DF=DIFF
   34 IF(XX-DF)35,36,36
   35 WRITE(6,600)DX,Y,Z,XX
  600 FORMAT(1H ,8X,4H*OK*,18X,I11,11X,E14.7,2(13X,E14.7))
      GO TO 37
   36 WRITE(6,700)DX,Y,Z,XX
  700 FORMAT(1H ,8X,7H*ERROR*,15X,I11,11X,E14.7,2(13X,E14.7))
   37 IF(ITEM-4)38,39,38
   30 ITEM=4
      WRITE(6,500)ITEM
C
   39 GO TO(41,42,43,44,45,46,47,48,49),IIS
   41 DX=DIARAY(1,1)
      IIS=2
      GO TO 31
   42 DX=DIARAY(1,2)
      IIS=3
      GO TO 31
   43 DX=DIARAY(2,1)
      IIS=4
      GO TO 31
   44 DX=DIARAY(2,2)
      IIS=5
      GO TO 31
   45 DX=(50000-JD**2)*30+1000000
      IIS=6
      GO TO 31
   46 DX=(JD**2-200*JD)*2/(-3)
      IIS=7
      GO TO 31
   47 DX=(DIARAY(2,1)*10+2000*JD)/20
      IIS=8
      GO TO 31
   48 DX=DIARAY(2,2)*2/10+8000*JD
      IIS=9
      GO TO 31
   49 WRITE(6,800)
  800 FORMAT(1H0 / 7X,23H*FORTRAN*          EXIT)
      STOP
      END
