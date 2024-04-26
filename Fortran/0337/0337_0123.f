      DIMENSION  DARRAY(2),X(17)
      DOUBLE PRECISION  X,Y,Z,DARRAY,P,DI,E,F,R
      E(R)=1.0D0+R-R
      F(R)=(R**2+DEXP(DSIN(R-1.0D0)))/DSQRT(4.0D0*R)
      DARRAY(1)=-0.5D0
      DARRAY(2)=0.01D0
      J=1
      ISW=1
      N=0
      P=1.0D0
C
      ITEM=1
      N=N+1
C
   13 GO TO(1,2,3,4,5,6),ISW
    1 X(1)=2.0D0
      X(2)=-2.0D0
      Y=DMIN1(2.0D0,-2.0D0)
      ISW=2
      GO TO 7
    2 X(1)=DARRAY(1)
      X(2)=DARRAY(2)
      Y=DMIN1(DARRAY(1),DARRAY(2))
      ISW=3
      GO TO 7
    3 X(1)=((P**2-2.0D0)*6.0D0+1.0D0)/10.0D0
      X(2)=(DARRAY(1)*(-10.0D0)+5.0D0*P)/1000.0D0
      Y=DMIN1(((P**2-2.0D0)*6.0D0+1.0D0)/10.0D0,(DARRAY(1)*(-10.0D0)
     1        +5.0D0*P)/1000.0D0)
      ISW=4
      GO TO 7
    4 X(1)=(2.0D0*P-(9.0D0/3.0D0))/100.0D0
      X(2)=DABS(P-2.0D0)*(-0.5D0)
      Y=DMIN1((2.0D0*P-(9.0D0/3.0D0))/100.0D0,DABS(P-2.0D0)*(-0.5D0))
      ISW=5
      GO TO 7
    5 X(1)=DSIN(P-1.0D0)-DSQRT(P**2/4.0D0)
      X(2)=DSIN(DLOG(DEXP(DSIN(P-1.0D0))))*DSQRT(P)+0.5D0
      Y=DMIN1(DSIN(P-1.0D0)-DSQRT(P**2/4.0D0),DSIN(DLOG(DEXP(DSIN(P
     1      -1.0D0))))*DSQRT(P)+0.5D0)
      ISW=6
    7 IF(Y-X(1))8,8,9
    8 IF(Y-X(2))10,10,11
   10 CONTINUE
C
  300 FORMAT(1H ,3X,4H*OK*,24X,2(2X,D24.17),16X,D24.17/)
      GO TO 13
C
    9 Z=X(1)
      GO TO 12
   11 Z=X(2)
   12 WRITE(6,400)X(1),X(2),Y,Z
  400 FORMAT(1H ,3X,7H*ERROR*,21X,2(2X,D24.17),16X,D24.17,
     *        / 100X,D24.17)
      GO TO 13
    6 ITEM=2
C
  500 FORMAT(1H0 / 19X,3H- (,I3,3H) - // )
C
      X(1)=-32767.0D0
      X(2)=-1234.0D0
      X(3)=0.0D0
      X(4)=1234.0D0
      X(5)=32767.0D0
C
      Y=DMIN1(-32767.0D0,-1234.0D0,0.0D0,1234.0D0,32767.0D0)
      DO 1000 I=1,5
      IF(Y-X(I))1000,1000,14
 1000 CONTINUE
C
  600 FORMAT(1H ,3X,4H*OK*,10X,3(2X,D24.17),4X,D24.17)
C
  700 FORMAT(1H ,17X,2(2X,D24.17))
      GO TO 15
   14 Z=X(I)
      WRITE(6,800)(X(I),I=1,3),Y,Z
  800 FORMAT(1H ,3X,7H*ERROR*,7X,3(2X,D24.17),4X,D24.17,
     *          / 100X,D24.17 )
      WRITE(6,700)X(4),X(5)
C
   15 ITEM=3
      K=-10
   22 N=N+1
C
  900 FORMAT(1H1 / )
C
      L=0
   16 DI=K
      X(1)=2.0D0*DI-3.0D0
      X(2)=DI
      X(3)=(-1.0D0)**K*DI-3.0D0*DI
      X(4)=80.0D0/(DI+11.0D0)+1.0D0
      X(5)=10.0D0-DI
      X(6)=7.0D0+DI-3.0D0*DI
      X(7)=DI-7.0D0+(-2.0D0)*DI
      X(8)=3.0D0*DI+9.0D0
      X(9)=-DI-2.0D0
C
      Y=DMIN1(X(1),X(2),X(3),X(4),
     *        X(5),X(6),X(7),X(8),X(9))
      DO 2000 I=1,9
      IF(Y-X(I))2000,2000,17
 2000 CONTINUE
C
C
  910 FORMAT(1H ,17X,3(2X,D24.17)
     *        /  18X,3(2X,D24.17))
      GO TO 18
   17 Z=X(I)
      WRITE(6,920)(X(I),I=1,3),Y,(X(I),I=4,6),Z,(X(I),I=7,9)
  920 FORMAT(1H ,3X,7H*ERROR*,7X,3(2X,D24.17),4X,D24.17,
     *        / 18X,3(2X,D24.17),4X,D24.17,
     *        / 18X,3(2X,D24.17))
   18 L=L+3
      K=K+1
      IF(MOD(L,3))25,19,25
   19 CONTINUE
C
  930 FORMAT(1H )
   25 IF(K-10)20,20,21
   20 IF(L-39)16,22,22
   21 ITEM=4
      N=N+1
C
C
      X(1)=F(P)*DARRAY(1)
      X(2)=DEXP(DLOG(F(P**2)))/100.0D0-P*0.02D0
      X(3)=F(DARRAY(2)*100.0D0)/100.0D0
      X(4)=DSIN(DLOG(DEXP(DSIN(P-1.0D0))))*DSQRT(P)+0.5D0
      X(5)=-3.2768D0
      X(6)=3.2768D0
      X(7)=0.0D0
      X(8)=-15.0D0
      X(9)=-1000.0D0
      X(10)=-1970.0D0
      X(11)=2345.0D0
      X(12)=1970.0D0
      X(13)=-32.9D0
      X(14)=-6.059D0
      X(15)=9999.0D0
      X(16)=-9999.0D0
      X(17)=87.0D0
      Y=DMIN1(F(P)*DARRAY(1),DEXP(DLOG(F(P**2)))/100.0D0-P*0.02D0,
     1        F(DARRAY(2)*100.0D0)/100.0D0,DSIN(DLOG(DEXP(DSIN(P-1.0
     2        D0))))*DSQRT(P)+0.5D0,-3.2768D0,3.2768D0,0.0D0,-15.0D0,
     3        -1000.0D0,-1970.0D0,2345.0D0,1970.0D0,-32.9D0,-6.059D0,
     1        9999.0D0,-9999.0D0,87.0D0)
      DO 3000 I=1,17
      IF(Y-X(I))3000,3000,23
 3000 CONTINUE
C
C
  940 FORMAT(1H ,17X,3(2X,D24.17)
     *        /  18X,3(2X,D24.17)
     *        /  18X,3(2X,D24.17)
     *        /  18X,3(2X,D24.17)
     *        /  18X,2(2X,D24.17))
      GO TO 24
   23 WRITE(6,920)(X(I),I=1,3),Y,(X(I),I=4,6),Z,(X(I),I=7,9)
      WRITE(6,950)(X(I),I=10,17)
  950 FORMAT(1H ,17X,3(2X,D24.17)
     *        /  18X,3(2X,D24.17)
     *        /  18X,2(2X,D24.17))
   24 CONTINUE
      STOP
      END
