      DIMENSION IARRAY(2),X(17)
      INTEGER X,Y,Z,IFU1,IFU2
      IFU1(K)=2*K
      IFU2(K)=(K**2+K)/K
      ISW=1
      N=0
      J=5
      P=1.0
      IARRAY(1)=-50
      IARRAY(2)=1
      ITEM=1
C
      N=N+1
      WRITE(6,12)ITEM,N
   12 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       20HMAX0(I1,I2...IN) -  ,5H*****,12X,9H( PAGE = ,I3,2H )
     3       ///6X,11H- JUSTICE -,24X,13H- ARGUMENTS -,19X,
     4       19H- COMPUTED RESULT -,7X,17H- COMPARE VALUE - / )
C
  100 GO TO (1,2,3,4,5,6),ISW
    1 X(1)=2
      X(2)=-2
      Y=MAX0(2,-2)
      ISW=2
      GO TO 110
    2 X(1)=IARRAY(1)
      X(2)=IARRAY(2)
      Y=MAX0(IARRAY(1),IARRAY(2))
      ISW=3
      GO TO 110
    3 X(1)=(5-J**2)*3+10
      X(2)=(J**2-2*J)*2/(-30)
      Y=MAX0((5-J**2)*3+10,(J**2-2*J)*2/(-30))
      ISW=4
      GO TO 110
    4 X(1)=IABS(J**2-IFIX(P**2+74.0))
      X(2)=IFIX(P**2+FLOAT(J+4))/10
      Y=MAX0(IABS(J**2-IFIX(P**2+74.0)),IFIX(P**2+FLOAT(J+4))/10)
      ISW=5
      GO TO 110
    5 X(1)=(IFU2(J)-IFU1(J))/4
      X(2)=IABS(IFU2(J)-IFU1(J))/4
      Y=MAX0((IFU2(J)-IFU1(J))/4,IABS(IFU2(J)-IFU1(J))/4)
      ISW=6
  110 IF(Y-X(1))120,130,130
  130 IF(Y-X(2))135,150,150
  120 Z=X(1)
      GO TO 140
  135 Z=X(2)
  140 WRITE(6,13)X(1),X(2),Y,Z
   13 FORMAT(1H ,8X,7H*ERROR*,24X,I6,4X,I6,24X,I6,18X,I6)
      GO TO 100
  150 WRITE(6,14)X(1),X(2),Y
   14 FORMAT(1H ,8X,4H*OK*,27X,I6,4X,I6,24X,I6)
      GO TO 100
    6 ITEM=2
      WRITE(6,15)ITEM
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X(1)=-32767
      X(2)=-1234
      X(3)=0
      X(4)=1234
      X(5)=32767
      Y=MAX0(-32767,-1234,0,1234,32767)
      Z=32767
      IF (Y-Z) 170,190,170
  170 CONTINUE
C
      WRITE(6,16)X(1),X(2),X(3),Y,Z,X(4),X(5)
   16 FORMAT(1H ,8X,7H*ERROR*,20X,3(I6,3X),17X,I6,18X,I6/36X,2(I6,3X))
      GO TO 200
  190 WRITE(6,17)X(1),X(2),X(3),Y,X(4),X(5)
   17 FORMAT(1H ,8X,4H*OK*,23X,3(I6,3X),17X,I6,18X/36X,2(I6,3X))
  200 ITEM=3
      K=-10
  210 N=N+1
      WRITE(6,18)
   18 FORMAT(1H1 / )
      WRITE(6,12)ITEM,N
      L=0
  220 X(1)=2*K-3
      X(2)=K
      X(3)=(-1)**K*K-3*K
      X(4)=80/(K+11)+1
      X(5)=10-K
      X(6)=7+K-3*K
      X(7)=K-7+(-2)*K
      X(8)=3*K+9
      X(9)=-K-2
      Y=MAX0(X(1),X(2),X(3),X(4),X(5),X(6),X(7),X(8),X(9))
      DO 230 I=1,9
      IF(Y-X(I))240,230,230
  230 CONTINUE
      GO TO 260
  240 Z=X(I)
C
      WRITE(6,19)X(1),X(2),X(3),Y,Z
   19 FORMAT(1H ,8X,7H*ERROR*,20X,3(I6,3X),17X,I6,18X,I6)
      WRITE(6,20)(X(I),I=4,9)
   20 FORMAT(1H ,35X,I6,3X,I6,3X,I6)
      GO TO 270
  260 WRITE(6,21)(X(I),I=1,3),Y
   21 FORMAT(1H ,8X,4H*OK*,23X,3(I6,3X),17X,I6)
      WRITE(6,20)(X(I),I=4,9)
  270 WRITE(6,23)
   23 FORMAT(1H )
      L=L+3
      K=K+1
      IF(K-10)280,280,290
  280 IF(L-39)220,210,210
  290 ITEM=4
      N=N+1
      WRITE(6,18)
      WRITE(6,12)ITEM,N
      X(1)=2*IFU1(J)+5*IFU2(J)
      X(2)=IFIX(P-FLOAT(J)+3.0)
      X(3)=(J**2-2*J)*2/(-30)
      X(4)=-(8*J)-IFU1(J)
      X(5)=-32767
      X(6)=32767
      X(7)=0
      X(8)=-15
      X(9)=-1000
      X(10)=-1970
      X(11)=2345
      X(12)=1970
      X(13)=-329
      X(14)=-6
      X(15)=9999
      X(16)=-9999
      X(17)=87
      Y=MAX0(2*IFU1(J)+5*IFU2(J),IFIX(P-FLOAT(J)+3.0),(J**2-2*J)*2/(-30)
     1,-(8*J)-IFU1(J),-32767,32767,0,-15,-1000,-1970,2345,1970,-329,-6,
     29999,-9999,87)
      Z=32767
      IF (Y-Z) 320,330,320
C
  320 WRITE(6,19)(X(I),I=1,3),Y,Z
      WRITE(6,20)(X(I),I=4,17)
      GO TO 340
  330 WRITE(6,21)(X(I),I=1,3),Y
      WRITE(6,20)(X(I),I=4,17)
  340 CONTINUE
      STOP
      END
