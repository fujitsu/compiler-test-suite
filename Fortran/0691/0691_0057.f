      DIMENSION A(4),DARRAY(2,2)
      DOUBLE PRECISION Y,Z,V,W,DARRAY,P,E,F,DIFF
      COMPLEX*16   X
      EQUIVALENCE  (V,A(1)),(W,A(3)),(X,A(1)),(X,V)
      E(P)=1.0D0+P-P
      F(P)=(P**2+DEXP(DSIN(P-1.0D0)))/DSQRT(4.0D0*P)
      N=1
      ITEM=1
      J=1
      P=1.0D0
      DIFF=1.0D-14
      DARRAY(1,1)=-0.5D0
      DARRAY(1,2)=-0.01D0
      DARRAY(2,1)=0.01D0
      DARRAY(2,2)=0.5D0
C
      WRITE(6,100)
  100 FORMAT(1H1/7X,24H*FORTRAN*          ENTER)
C
      WRITE(6,200)ITEM,N
  200 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       18HDREAL(DX) -  *****,19X,9H( PAGE = ,I3,2H ),
     3       ///2X,11H- JUSTICE -,13X,12H- ARGUMENT -,15X,
     4       19H- COMPUTED RESULT -,11X,17H- COMPARE VALUE -,11X,
     5       14H- DIFFERENCE - / )
C
      V=3.4D0
      W=-4.0D0
      ISW=1
      ITEM=ITEM+1
    9 Y=DREAL(X)
      Z=V
      XX=DABS(Z-Y)
      IF(Y)10,11,10
   10 DF=DIFF*DABS(Z)
      GO TO 12
   11 DF=DIFF
   12 IF(XX-DF)13,14,14
   13 WRITE(6,300)X,Y,Z,XX
  300 FORMAT(1H ,4X,4H*OK*,8X,E14.7,2X,E14.7,3(4X,D24.17))
      GO TO 15
   14 WRITE(6,400)X,Y,Z,XX
  400 FORMAT(1H ,4X,7H*ERROR*,5X,E14.7,2X,E14.7,3(4X,D24.17))
   15 GO TO (1,2,3,4,5,6,7,18,19,20,21,22,23,24,25,26,27),ISW
    1 V=-3.0D0
      W=4.0D0
      ISW=2
      GO TO 9
    2 V=-3.0D0
      W=-4.0D0
      ISW=4
      GO TO 9
    3 V=3.0D0
      W=-4.0D0
      ISW=4
      GO TO 9
    4 V=0.0D0
      W=-5.0D0
      ISW=5
      GO TO 9
    5 V=10.0D0
      W=0.0D0
      ISW=6
      GO TO 9
    6 V=0.0D0
      W=0.0D0
      ISW=7
      GO TO 9
    7 ITEM=2
      WRITE(6,600)ITEM
  600 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      V=DARRAY(1,1)
      W=DARRAY(1,2)
      ISW=8
      GO TO 9
   18 V=DARRAY(2,1)
      W=DARRAY(2,2)
      ISW=9
      GO TO 9
   19 V=((P**2-2.0D0)*6.0D0+1.0D0)/10.0D0
      W=(P**2+P*0.1D0-P/10.0D0)/(-100.0D0)
      ISW=10
      GO TO 9
   20 V=(DARRAY(1,1)*(-10.0D0)+5.0D0*P)/1000.0D0
      W=DARRAY(1,1)**2+(P/10.0D0)*2.0D0+DARRAY(2,2)/10.0D0
      ISW=11
      GO TO 9
   21 V=DABS(P-2.0D0)*(-0.5D0)
      W=DFLOAT(J*2-IFIX(10.0/3.0))/100.0D0
      ISW=12
      GO TO 9
   22 V=DFLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0D0
      W=(DABS(P**2+2.0D0)+DFLOAT(J*(-8)))/10.0D0*DSIGN(P,P)
      ISW=13
      GO TO 9
   23 V=DSIN(P-1.0D0)-DSQRT(P**2/4.0D0)
      W=(DEXP(P-1.0D0)*DSQRT(4.0D0*P)-3.0D0)/100.0D0
      ISW=14
      GO TO 9
   24 V=(DLOG(P**2-1.0D0*DSQRT(4.0D0*P)+2.0D0)+P)/100.0D0
      W=DSIN(DLOG(DEXP(DSIN(P-1.0D0))))*DSQRT(P)+0.5D0
      ISW=15
      GO TO 9
   25 V=F(P)*DARRAY(1,1)
      W=DEXP(DLOG(F(P**2)))/100.0D0-P*0.02D0
      ISW=16
      GO TO 9
   26 V=F(DARRAY(2,1)*100.0D0)/100.0D0
      W=E(DSIN(DSQRT(F(P)+3.0D0)-F(P)*2.0D0))*DARRAY(2,2)
      ISW=17
      GO TO 9
   27 WRITE(6,500)
  500 FORMAT(1H0/7X,23H*FORTRAN*          EXIT)
      STOP
      END
