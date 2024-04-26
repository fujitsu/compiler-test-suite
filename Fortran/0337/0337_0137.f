      REAL                     DP(2),ANS(2),PAI,WK,EPS
      INTEGER                  IPAGE,RETI,RETI2
      COMPLEX                  DCX,DCXC,DCXS,DIFF
      EQUIVALENCE              (DCX,DP(1)),(DCXS,ANS(1))
      PAI=3.1415926
      IPAGE=0
      ITEM=0
C
      DP(1)=-1.0*PAI/4.0
      RETI=1
      RETI2=1
      EPS=2.7182818
   15 IX=-500
      ITEM=ITEM+1
   20 IPAGE=IPAGE+1
      IPC1=0
      IPC2=0
C
   30 WK=IX
      DP(2)=WK/100.0
      GO TO 300
   40 DCXC= CSIN(DCX)
      GO TO 400
C
   50 IX=IX+5
      IF ( IX.GT.500 ) GO TO 80
      IPC1=IPC1+1
      IF ( IPC1.LT.10) GO TO 30
      IPC2=IPC2+1
      IPC1=0
      WRITE(6,60)
   60 FORMAT(1H  )
      IF (IPC2.LT.5 ) GO TO 30
      WRITE(6,70)
   70 FORMAT(1H1 / )
      GO TO 20
C
   80 WRITE(6,70)
      GO TO (90,100,110) ,RETI2
   90 DP(1)=0.0
      RETI2=2
      GO TO 15
  100 DP(1)=PAI/3.0
      RETI2=3
      GO TO 15
C
  110 DP(2)=-1.0
      RETI=2
      RETI2=2
  115 IX=-314
      ITEM=ITEM+1
  120 IPAGE=IPAGE+1
      IPC1=0
      IPC2=0
C
  130 WK=IX
      DP(1)=WK/100.0
      GO TO 300
  140 DCXC=CSIN(DCX)
      GO TO 400
C
  150 IX=IX+5
      IF ( IX.GT.314) GO TO 180
      IPC1=IPC1+1
      IF (IPC1.LT.10 ) GO TO 130
      IPC2=IPC2+1
      IPC1=0
      WRITE(6,60)
      IF (IPC2.LT.5) GO TO 130
      WRITE(6,70)
      GO TO 120
C
  180 IF (RETI2.EQ.1 ) GO TO 500
      WRITE(6,70)
      GO TO (500,190,200),RETI2
  190 DP(2)=0.0
      RETI2=3
      GO TO 115
  200 DP(2)=2.0
      RETI2=1
      GO TO 115
C
  300 ANS(1)=(EPS**DP(2)+EPS**(-DP(2)))* SIN(DP(1))/2.0
      ANS(2)=(EPS**DP(2)-EPS**(-DP(2)))* COS(DP(1))/2.0
      GO TO (40,140),RETI
C
  700 FORMAT(1H0,7X,9H*** ITEM( ,I2,5H) ***,7X,
     *       45H*****  TEST  OF  STANDARD  EXTERNAL  FUNCTION ,
     *       23H  -  CSIN(DCX) -  *****,19X,9H( PAGE = ,I3,3H  ), ///1X,
     *       11H- JUSTICE -,10X,12H- ARGUMENT -,19X,
     *       19H- COMPUTED RESULT -,17X,17H- COMPARE VALUE -,10X,
     *       14H- DIFFERENCE - // )
  460 FORMAT(1H ,2X,4H*OK*)
  470 FORMAT(1H ,2X,7H*ERROR*,4X,E14.7,1X,E14.7,4X,E14.7,1X,E14.7,
     *       4X,E14.7,1X,E14.7,3X,E10.3,E10.3 )
C
  400 DIFF=DCXS-DCXC
      IF ( CABS(DIFF).NE.0.0) GO TO 410
      IF ( CABS(DIFF).LT.1.0E-05) GO TO 420
  415 WRITE(6,470)DCX,DCXC,DCXS,DIFF
      GO TO 430
  410 IF ( CABS(DIFF).LT. CABS(DCXS)*1.0E-05) GO TO 420
      GO TO 415
  420 WRITE(6,460)
  430 GO TO (50,150),RETI
C
  500 CONTINUE
      STOP
      END
