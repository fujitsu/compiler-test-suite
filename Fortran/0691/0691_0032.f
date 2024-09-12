C
      INTEGER Y, Z, LDBLE
      INTEGER   X
      IFU1(K)=2*K
      IFU2(K)=(K**2+K)/K
      N=1
      ITEM=1
      ISW=1
      IISW=1
      J=5
      P=1.0
C
      WRITE(6,100)
  100 FORMAT(1H1 / 7X,24H*FORTRAN*          ENTER)
      WRITE(6,200)ITEM,N
  200 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     *       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     *       18HLDBLE(I) -  ***** ,19X,9H( PAGE = ,I3,2H)
     *       ///6X,11H- JUSTICE -,20X,12H- ARGUMENT -,16X,
     *       19H- COMPUTED RESULT -,9X,17H- COMPARE VALUE -  / )
C
   11 GO TO(1,2,3,4,5,6),ISW
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
    7 Y=LDBLE(X)
      Z=X
      IF(Y-Z)8,9,8
    8 WRITE(6,300)X,Y,Z
  300 FORMAT(1H ,8X,7H*ERROR*,23X,I6,24X,I11,15X,I11)
      GO TO 10
    9 WRITE(6,400)X,Y,Z
  400 FORMAT(1H ,8X,4H*OK*,26X,I6,24X,I11,15X,I11)
   10 IF(ITEM-2)11,12,11
    6 ITEM=2
      WRITE(6,500)ITEM
  500 FORMAT(1H0 / 19X,3H- (,I3,3H) - // )
C
   12 GO TO(13,14,15,16,17,18,19,20,21),IISW
   13 X=IABS(J-10)*(-10)
      IISW=2
      GO TO 7
   14 X=IFIX(P-FLOAT(J)+3.0)
      IISW=3
      GO TO 7
   15 X=IFIX(P**2+FLOAT(J+4))/4
      IISW=4
      GO TO 7
   16 X=IABS(J**2-IFIX(P**2+74.0))
      IISW=5
      GO TO 7
   17 X=-(8*J)-IFU1(J)
      IISW=6
      GO TO 7
   18 X=(IFU2(J)-IFU1(J))/4
      IISW=7
      GO TO 7
   19 X=IABS(IFU2(J)-IFU1(J))/4
      IISW=8
      GO TO 7
   20 X=2*IFU1(J)+5*IFU2(J)
      IISW=9
      GO TO 7
   21 WRITE(6,600)
  600 FORMAT(1H0 / 7X,23H*FORTRAN*          EXIT)
      STOP
      END
      INTEGER  FUNCTION  LDBLE(II)
      LDBLE = II
      RETURN
      END
