      DIMENSION  IARRAY(2),X(17),B(17)
      INTEGER  X
      IFU1(K)=2*K
      IFU2(K)=(K**2+K)/K
      IARRAY(1)=-50
      IARRAY(2)=+1
      N=0
      J=5
      P=1.0
      ISW=1
      ITEM=1
      N=N+1
   13 GO TO(1,2,3,4,5,6),ISW
    1 X(1)=2
      X(2)=-2
      Y=AMIN0(2,-2)
      ISW=2
      GO TO 7
    2 X(1)=IARRAY(1)
      X(2)=IARRAY(2)
      Y=AMIN0(IARRAY(1),IARRAY(2))
      ISW=3
      GO TO 7
    3 X(1)=(5-J**2)*3+10
      X(2)=(J**2-2*J)*2/(-30)
      Y=AMIN0((5-J**2)*3+10,(J**2-2*J)*2/(-30))
      ISW=4
      GO TO 7
    4 X(1)=IABS(J**2-IFIX(P**2+74.0))
      X(2)=IFIX(P**2+FLOAT(J+4))/10
      Y=AMIN0(IABS(J**2-IFIX(P**2+74.0)),IFIX(P**2+FLOAT(J+4))/10)
      ISW=5
      GO TO 7
    5 X(1)=(IFU2(J)-IFU1(J))/4
      X(2)=IABS(IFU2(J)-IFU1(J))/4
      Y=AMIN0((IFU2(J)-IFU1(J))/4,IABS(IFU2(J)-IFU1(J))/4)
      ISW=6
    7 B(1)=FLOAT(X(1))
      B(2)=FLOAT(X(2))
      IF(Y-B(1))8,8,9
    8 IF(Y-B(2))10,10,11
   10 WRITE(6,300)
  300 FORMAT(1H ,8X,4H*OK*,24X,2(3X,I6),20X,E14.7)
      GO TO 13
    9 Z=B(1)
      GO TO 12
   11 Z=B(2)
   12 WRITE(6,400)X(1),X(2),Y,Z
  400 FORMAT(1H ,8X,7H*ERROR*,21X,2(3X,I6),20X,E14.7,11X,E14.7)
      GO TO 13
    6 ITEM=2
C
  500 FORMAT(1H0 / 19X,3H- (,I3,3H) - // )
C
      X(1)=-32767
      X(2)=-1234
      X(3)=0
      X(4)=1234
      X(5)=32767
      Y=AMIN0(-32767,-1234,0,1234,32767)
      DO 1000 I=1,5
      B(I)=FLOAT(X(I))
      IF(Y-B(I))1000,1000,14
   14 Z=B(I)
      WRITE(6,600)(X(J),J=1,3),Y,Z
  600 FORMAT(1H ,8X,7H*ERROR*,17X,3(3X,I6),16X,E14.7,11X,E14.7)
      WRITE(6,700)X(4),X(5)
  700 FORMAT(1H ,32X,2(3X,I6))
      GO TO 15
 1000 CONTINUE
      WRITE(6,800)
  800 FORMAT(1H ,8X,4H*OK*,20X,3(3X,I6),16X,E14.7)
C
   15 ITEM=3
      K=-10
   16 N=N+1
C
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
      Y=AMIN0(X(1),X(2),X(3),X(4),X(5),X(6),X(7),X(8),X(9))
      DO 2000 I=1,9
      B(I)=FLOAT(X(I))
      IF(Y-B(I))2000,2000,18
   18 Z=B(I)
      WRITE(6,600)(X(J),J=1,3),Y,Z
      WRITE(6,900)(X(J),J=4,9)
  900 FORMAT(1H ,32X,3(3X,I6) /
     *           33X,3(3X,I6)  )
      GO TO 19
 2000 CONTINUE
      WRITE(6,800)
   19 CONTINUE
  940 FORMAT(1H )
      L=L+3
      K=K+1
      IF(K-10)20,20,21
   20 IF(L-39)17,16,16
   21 ITEM=4
      N=N+1
  910 FORMAT(1H1 / )
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
      Y=AMIN0(2*IFU1(J)+5*IFU2(J),IFIX(P-FLOAT(J)+3.0),(J**2-2*J)*2
     1/(-30),-(8*J)-IFU1(J),-32767,32767,0,-15,-1000,-1970,2345,1970,
     2-329,-6,9999,-9999,87)
C
      DO 3000 I=1,17
      B(I)=FLOAT(X(I))
      IF(Y-B(I))3000,3000,22
   22 Z=B(I)
      WRITE(6,600)(X(J),J=1,3),Y,Z
      WRITE(6,920)(X(J),J=4,17)
  920 FORMAT(1H ,32X,3(3X,I6)
     *        / 33X,3(3X,I6)
     *        / 33X,3(3X,I6)
     *        / 33X,3(3X,I6)
     *        / 33X,2(3X,I6))
      GO TO 23
 3000 CONTINUE
      WRITE(6,800)
C
   23 CONTINUE
      STOP
      END
