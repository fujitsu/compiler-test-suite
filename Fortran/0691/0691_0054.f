      DIMENSION ARRAY(2,2)
      INTEGER  Y,Z
      E(P)=1.0+P-P
      F(P)=(P**2+EXP(SIN(P-1.0)))/SQRT(4.0*P)
      K=-500
      P=1.0
      J=1
      N=0
      ITEM=0
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
C
      WRITE(6,200)
  200 FORMAT(1H1/7X,24H*FORTRAN*          ENTER)
C
      ITEM=ITEM+1
   10 N=N+1
      IF(N-1)11,12,11
   11 WRITE(6,300)
  300 FORMAT(1H1 / )
   12 WRITE(6,400)ITEM,N
  400 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION  - ,
     2       11HLINT(X) -  ,5H*****,21X,9H( PAGE = ,I3,2H ),
     3       ///6X,11H- JUSTICE -,20X,12H- ARGUMENT -,16X,
     4       19H- COMPUTED RESULT -,9X,17H- COMPARE VALUE -)
C
      L=0
   13 X=FLOAT(K)/100.0
      Y=X
      Z1=FLOAT(IFIX(ABS(X)))
      Z2=SIGN(Z1,X)
      Z=Z2
      IF(MOD(L,10))14,15,14
   15 WRITE(6,500)
  500 FORMAT(1H )
   14 IF(Y-Z)16,17,16
   16 WRITE(6,600)X,Y,Z
  600 FORMAT(1H ,8X,7H*ERROR*,20X,E14.7,20X,I11,15X,I11)
      GO TO 18
   17 WRITE(6,700)X,Y,Z
  700 FORMAT(1H ,8X,4H*OK*,23X,E14.7,20X,I11,15X,I11)
   18 L=L+1
      IF(K-500)20,21,21
   20 K=K+1
      IF(L-50)13,10,10
   21 ITEM=ITEM+1
      N=N+1
      WRITE(6,300)
      WRITE(6,400)ITEM,N
      L=0
      ISW=1
   22 GO TO (1,2,3,4,5,6,7,8,9,30,31,32,33),ISW
    1 X=-1.234E-25
      ISW=2
      GO TO 19
    2 X=0.0
      ISW=3
      GO TO 19
    3 X=32767.89E0
      ISW=4
      GO TO 19
    4 X=-32768.0E0
      ISW=5
      GO TO 19
    5 ITEM=ITEM+1
      WRITE(6,900)ITEM
  900 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X=F(P)*ARRAY(1,1)
      ISW=6
   19 Y=X
      Z1=FLOAT(IFIX(ABS(X)))
      Z2=SIGN(Z1,X)
      Z=Z2
      IF(MOD(L,10))23,24,23
   24 WRITE(6,500)
   23 IF(Y-Z)25,26,25
   25 WRITE(6,600)X,Y,Z
      GO TO 27
   26 WRITE(6,700)X,Y,Z
   27 L=L+1
      GO TO 22
    6 X=EXP(ALOG(F(P**2)))/100.0-P*0.02
      ISW=7
      GO TO 19
    7 X=F(ARRAY(2,1)*100.0)/100.0
      ISW=8
      GO TO 19
    8 X=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*ARRAY(2,2)
      ISW=9
      GO TO 19
    9 X=ABS(P-2.0)*(-0.5)
      ISW=10
      GO TO 19
   30 X=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=11
      GO TO 19
   31 X=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      ISW=12
      GO TO 19
   32 X=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)
      ISW=13
      GO TO 19
   33 WRITE(6,800)
  800 FORMAT(1H0/7X,23H*FORTRAN*          EXIT)
      STOP
      END
