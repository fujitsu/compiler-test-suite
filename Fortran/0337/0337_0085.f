      DIMENSION IARRAY(2),X(17),B(17)
      INTEGER X,IFU1,IFU2
      IFU1(K)=2*K
      IFU2(K)=(K**2+K)/K
C
      IARRAY(1)=-50
      IARRAY(2)=1
      N=1
      ITEM=1
      J=5
      P=1.0
      ISW=1
      DIFF=1.0E-5
C
C
  100 GO TO (1,2,3,4,5,6),ISW
    1 X(1)=2
      X(2)=-2
      Y=AMAX0(2,-2)
      ISW=2
      GO TO 110
    2 X(1)=IARRAY(1)
      X(2)=IARRAY(2)
      Y=AMAX0(IARRAY(1),IARRAY(2))
      ISW=3
      GO TO 110
    3 X(1)=(5-J**2)*3+10
      X(2)=(J**2-2*J)*2/(-30)
      Y=AMAX0((5-J**2)*3+10,(J**2-2*J)*2/(-30))
      ISW=4
      GO TO 110
    4 X(1)=IABS(J**2-IFIX(P**2+74.0))
      X(2)=IFIX(P**2+FLOAT(J+4))/10
      Y=AMAX0(IABS(J**2-IFIX(P**2+74.0)),IFIX(P**2+FLOAT(J+4))/10)
      ISW=5
      GO TO 110
    5 X(1)=(IFU2(J)-IFU1(J))/4
      X(2)=IABS(IFU2(J)-IFU1(J))/4
      Y=AMAX0((IFU2(J)-IFU1(J))/4,IABS(IFU2(J)-IFU1(J))/4)
      ISW=6
  110 B(1)=FLOAT(X(1))
      B(2)=FLOAT(X(2))
      IF(Y-B(1))120,130,130
  120 Z=B(1)
      GO TO 170
  130 IF(Y-B(2))140,160,160
  140 Z=B(2)
      GO TO 170
  160 WRITE(6,13)
   13 FORMAT(1H ,8X,4H*OK*,27X,I6,4X,I6,20X,E14.7)
      GO TO 180
  170 WRITE(6,14)X(1),X(2),Y,Z
   14 FORMAT(1H ,8X,7H*ERROR*,24X,I6,4X,I6,20X,E14.7,11X,E14.7)
  180 GO TO 100
    6 ITEM=2
C
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X(1)=-32767
      X(2)=-1234
      X(3)=0
      X(4)=1234
      X(5)=32767
      Y=AMAX0(-32767,-1234,0,1234,32767)
      DO 190 I=1,5
      B(I)=FLOAT(X(I))
      IF(Y-B(I))200,190,190
  190 CONTINUE
      GO TO 240
  200 Z=B(I)
      GO TO 250
  240 WRITE(6,16)
   16 FORMAT(1H ,8X,4H*OK*,20X,3(3X,I6),16X,E14.7/36X,2(I6,3X))
      GO TO 260
  250 WRITE(6,17)(X(I),I=1,3),Y,Z,X(4),X(5)
   17 FORMAT(1H ,8X,7H*ERROR*,17X,3(3X,I6),5X,2(11X,E14.7)/36X,2(I6,3X))
  260 ITEM=3
      K=-10
  270 N=N+1
C
   18 FORMAT(1H1 / )
C
      L=0
  280 X(1)=2*K-3
      X(2)=K
      X(3)=(-1)**K*K-3*K
      X(4)=80/(K+11)+1
      X(5)=10-K
      X(6)=7+K-3*K
      X(7)=K-7+(-2)*K
      X(8)=3*K+9
      X(9)=-K-2
      Y=AMAX0(X(1),X(2),X(3),X(4),X(5),X(6),X(7),X(8),X(9))
      DO 290 I=1,9
      B(I)=FLOAT(X(I))
      IF(Y-B(I))300,290,290
  290 CONTINUE
      GO TO 340
  300 Z=B(I)
      GO TO 350
  340 WRITE(6,19)
   19 FORMAT(1H ,8X,4H*OK*,20X,3(3X,I6),16X,E14.7)
C
   20 FORMAT(1H ,35X,I6,3X,I6,3X,I6)
      GO TO 360
  350 WRITE(6,21)(X(I),I=1,3),Y,Z
   21 FORMAT(1H ,8X,7H*ERROR*,17X,3(3X,I6),16X,E14.7,11X,E14.7)
      WRITE(6,20)(X(I),I=4,9)
  360 CONTINUE
C
   23 FORMAT(1H )
      L=L+3
      K=K+1
      IF(K-10)370,370,380
  370 IF(L-39)280,270,270
  380 ITEM=4
      N=N+1
C
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
      Y=AMAX0(2*IFU1(J)+5*IFU2(J),IFIX(P-FLOAT(J)+3.0),(J**2-2*J)*2/(-30
     1),-(8*J)-IFU1(J),-32767,32767,0,-15,-1000,-1970,2345,1970,-329,-6,
     29999,-9999,87)
      DO 390 I=1,17
      B(I)=FLOAT(X(I))
      IF(Y-B(I))400,390,390
  390 CONTINUE
      GO TO 440
  400 Z=B(I)
      GO TO 450
  440 WRITE(6,19)
C
      GO TO 460
  450 WRITE(6,21)(X(I),I=1,3),Y,Z
      WRITE(6,20)(X(I),I=4,17)
  460 CONTINUE
      STOP
      END
