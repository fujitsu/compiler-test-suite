      DIMENSION B(4),DARRAY(2,2)
      COMPLEX*16   Y
      DOUBLE PRECISION X1,X2,C,D,DARRAY,P,E,F
      EQUIVALENCE  (Y,B(1)),(C,B(1)),(D,B(3))
      E(P)=1.0D0+P-P
      F(P)=(P**2+DEXP(DSIN(P-1.0D0)))/DSQRT(4.0D0*P)
      K=-150
      J=1
      P=1.0D0
      N=0
      DARRAY(1,1)=-0.5D0
      DARRAY(1,2)=-0.01D0
      DARRAY(2,1)=0.01D0
      DARRAY(2,2)=0.5D0
      ITEM=0
      ISW=1
C
C
      WRITE(6,100)
  100 FORMAT(1H1/7X,24H*FORTRAN*          ENTER)
C
      X1=10.0D0
    1 ITEM=ITEM+1
    2 N=N+1
      IF(N-1)3,4,3
    3 WRITE(6,200)
  200 FORMAT(1H1 /)
    4 WRITE(6,300)ITEM,N
  300 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X
     *       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     *       24HDCMPLX(DX1,DX2) -  *****,13X,9H( PAGE = ,I3,2H ),
     *       ///2X,11H- JUSTICE -,22X,12H- ARGUMENT -,42X,
     *       19H- COMPUTED RESULT - / )
      L=1
    5 X2=DFLOAT(K)/10.0D0
      Y=DCMPLX(X1,X2)
      IF(X1-C)6,7,6
    7 IF(X2-D)6,8,6
    6 WRITE(6,400)X1,X2,Y
  400 FORMAT(1H ,4X,7H*ERROR*,4X,D24.17,3X,D24.17,7X,D24.17,3X,D24.17)
      GO TO 9
    8 WRITE(6,500)X1,X2,Y
  500 FORMAT(1H ,4X,4H*OK*,7X,D24.17,3X,D24.17,7X,D24.17,3X,D24.17)
    9 IF(MOD(L,10))21,20,21
   20 WRITE(6,700)
  700 FORMAT(1H )
   21 L=L+1
      IF(K-150)10,11,11
   10 K=K+1
      IF(L-50)5,5,2
   11 IF(ITEM-1)14,15,14
   15 X1=-10.0D0
      K=-150
      GO TO 1
   14 ITEM=ITEM+1
      N=N+1
      WRITE(6,200)
      WRITE(6,300)ITEM,N
      L=1
      X1=0.0D0
      X2=3.4D0
   30 Y=DCMPLX(X1,X2)
      IF(X1-C)16,17,16
   17 IF(X2-D)16,18,16
   16 WRITE(6,400)X1,X2,Y
      GO TO 19
   18 WRITE(6,500)X1,X2,Y
   19 GO TO (32,22,23,24,25,26,27,28,29,31),ISW
   32 ITEM=ITEM+1
      WRITE(6,800)ITEM
  800 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X1=DARRAY(1,1)
      X2=DARRAY(1,2)
      ISW=2
      GO TO 30
   22 X1=DARRAY(2,1)
      X2=DARRAY(2,2)
      ISW=3
      GO TO 30
   23 X1=((P**2-2.0D0)*6.0D0+1.0D0)/10.0D0
      X2=(P**2+P*0.1D0-P/10.0D0)/(-100.0D0)
      ISW=4
      GO TO 30
   24 X1=(DARRAY(1,1)*(-10.0D0)+5.0D0*P)/1000.0D0
      X2=(DARRAY(1,1)**2+(P/10.0D0)*2.0D0+DARRAY(2,2)/10.0D0)
      ISW=5
      GO TO 30
   25 X1=DABS(P-2.0D0)*(-0.5D0)
      X2=DFLOAT(J*2-IFIX(10.0/3.0))/100.0D0
      ISW=6
      GO TO 30
   26 X1=DFLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0D0
      X2=(DABS(P**2+2.0D0)+DFLOAT(J*(-8)))/10.0D0*DSIGN(P,P)
      ISW=7
      GO TO 30
   27 X1=DSIN(P-1.0D0)-DSQRT(P**2/4.0D0)
      X2=(DEXP(P-1.0D0)*DSQRT(4.0D0*P)-3.0D0)/100.0D0
      ISW=8
      GO TO 30
   28 X1=(DLOG(P**2-1.0D0*DSQRT(4.0D0*P)+2.0D0)+P)/100.0D0
      X2=DSIN(DLOG(DEXP(DSIN(P-1.0D0))))*DSQRT(P)+0.5D0
      ISW=9
      GO TO 30
   29 X1=F(P)*DARRAY(1,1)
      X2=DEXP(DLOG(F(P**2)))/100.0D0-P*0.02D0
      ISW=10
      GO TO 30
   31 WRITE(6,600)
  600 FORMAT(1H0/7X,23H*FORTRAN*          EXIT)
      STOP
      END