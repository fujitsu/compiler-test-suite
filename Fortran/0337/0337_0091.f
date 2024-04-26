      DIMENSION  IARRAY(2),X(17)
      INTEGER X,Y,Z
      IFU1(K)=2*K
      IFU2(K)=(K**2+K)/K
      IARRAY(1)=-50
      IARRAY(2)=+1
      N=0
      J=5
      P=1.0
      ISW=1
C
      ITEM=1
      N=N+1
      WRITE(6,200)ITEM,N
  200 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     *       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     *       22HMIN0(I1,I2,...,IN) -  ,5H*****,10X,9H( PAGE = ,I3,2H )
     *       ///6X,11H- JUSTICE -,24X,13H- ARGUMENTS -,19X,
     *       19H- COMPUTED RESULT -,7X,17H- COMPARE VALUE -  / )
C
   13 GO TO(1,2,3,4,5,6),ISW
    1 X(1)=2
      X(2)=-2
      Y=MIN0(2,-2)
      ISW=2
      GO TO 7
    2 X(1)=IARRAY(1)
      X(2)=IARRAY(2)
      Y=MIN0(IARRAY(1),IARRAY(2))
      ISW=3
      GO TO 7
    3 X(1)=(5-J**2)*3+10
      X(2)=(J**2-2*J)*2/(-30)
      Y=MIN0((5-J**2)*3+10,(J**2-2*J)*2/(-30))
      ISW=4
      GO TO 7
    4 X(1)=IABS(J**2-IFIX(P**2+74.0))
      X(2)=IFIX(P**2+FLOAT(J+4))/10
      Y=MIN0(IABS(J**2-IFIX(P**2+74.0)),IFIX(P**2+FLOAT(J+4))/10)
      ISW=5
      GO TO 7
    5 X(1)=(IFU2(J)-IFU1(J))/4
      X(2)=IABS(IFU2(J)-IFU1(J))/4
      Y=MIN0((IFU2(J)-IFU1(J))/4,IABS(IFU2(J)-IFU1(J))/4)
      ISW=6
    7 IF(Y-X(1))8,8,9
    8 IF(Y-X(2))10,10,11
   10 WRITE(6,300)X(1),X(2),Y
  300 FORMAT(1H ,8X,4H*OK*,23X,2(4X,I6),24X,I6)
      GO TO 13
    9 Z=X(1)
      GO TO 12
   11 Z=X(2)
   12 WRITE(6,400)X(1),X(2),Y,Z
  400 FORMAT(1H ,8X,7H*ERROR*,20X,2(3X,I6),6X,2(18X,I6))
      GO TO 13
    6 ITEM=2
      WRITE(6,500)ITEM
  500 FORMAT(1H0 / 19X,3H- (,I3,3H) - //)
C
      X(1)=-32767
      X(2)=-1234
      X(3)=0
      X(4)=1234
      X(5)=32767
C
      Y=MIN0(-32767,-1234,0,1234,32767)
      DO 1000 I=1,5
      IF(Y-X(I))1000,1000,14
   14 Z=X(I)
      WRITE(6,600) (X(M),M=1,3),Y,Z
  600 FORMAT(1H ,8X,7H*ERROR*,17X,3(3X,I6),2X,2(18X,I6))
      WRITE(6,700)X(4),X(5)
  700 FORMAT(1H ,32X,2(3X,I6))
      GO TO 15
 1000 CONTINUE
      WRITE(6,800)(X(I),I=1,3),Y
  800 FORMAT(1H ,8X,4H*OK*,20X,3(3X,I6),2X,2(18X,I6))
      WRITE(6,700)X(4),X(5)
   15 ITEM=3
      K=-10
   16 N=N+1
      WRITE(6,900)
  900 FORMAT(1H1 / )
      WRITE(6,200)ITEM,N
      L=0
   17 X(1)=2*K-3
      X(2)=K
      X(3)=(-1)**K*K-3*K
      X(4)=80/(K+11)+1
      X(5)=10-K
      X(6)=7+K-3*K
      X(7)=K-7+(-2)*K
      X(8)=3*K+9
      X(9)=-K-2
      Y=MIN0(X(1),X(2),X(3),X(4),X(5),X(6),X(7),X(8),X(9))
      DO 2000 I=1,9
      IF(Y-X(I))2000,2000,18
   18 Z=X(I)
      WRITE(6,600) (X(M),M=1,3),Y,Z
      WRITE(6,910) (X(M),M=4,9)
  910 FORMAT(1H ,32X,3(3X,I6)
     *        / 33X,3(3X,I6))
      GO TO 19
 2000 CONTINUE
      WRITE(6,800)(X(I),I=1,3),Y
      WRITE(6,910)(X(I),I=4,9)
   19 L=L+3
      K=K+1
      IF(MOD(L,3))26,27,26
   27 WRITE(6,960)
  960 FORMAT(1H )
   26 IF(K-10)20,20,21
   20 IF(L-39)17,16,16
   21 ITEM=4
      N=N+1
      WRITE(6,900)
      WRITE(6,200)ITEM,N
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
C
      Y=MIN0(2*IFU1(J)+5*IFU2(J),IFIX(P-FLOAT(J)+3.0),(J**2-2*J)*2/(-30)
     1,-(8*J)-IFU1(J),-32767,32767,0,-15,-1000,-1970,2345,1970,-329,-6,
     29999,-9999,87)
C
C
      DO 3000 I=1,17
      IF(Y-X(I))3000,3000,22
   22 Z=X(I)
      WRITE(6,600) (X(M),M=1,3),Y,Z
      WRITE(6,920)(X(M),M=4,17)
  920 FORMAT(1H ,32X,3(3X,I6)
     *        /  33X,3(3X,I6)
     *        /  33X,3(3X,I6)
     *        /  33X,3(3X,I6)
     *        /  33X,2(3X,I6))
      GO TO 23
 3000 CONTINUE
      WRITE(6,800)(X(I),I=1,3),Y
      WRITE(6,920)(X(I),I=4,17)
   23 CONTINUE
      STOP
      END
