      DIMENSION B(2),ARRAY(2,2)
      COMPLEX  Y
      EQUIVALENCE  (Y,B(1))
      E(P)=1.0+P-P
      F(P)=(P**2+EXP(SIN(P-1.0)))/SQRT(4.0*P)
      K=-150
      P=1.0
      J=1
      N=0
      ISW=1
      ITEM=0
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
C
      X1=10.0
    1 ITEM=ITEM+1
    2 N=N+1
      IF(N-1)3,4,3
    3 CONTINUE
C
  200 FORMAT(1H1 / )
    4 CONTINUE
      L=1
    5 X2=FLOAT(K)/10.0
      Y=CMPLX(X1,X2)
      IF(X1-B(1))6,7,6
    7 IF(X2-B(2))6,8,6
    8 CONTINUE
C
  400 FORMAT(1H ,8X,4H*OK*,18X,E14.7,3X,E14.7,11X,E14.7,3X,E14.7)
      GO TO 9
    6 CONTINUE
C
C
      IF (ABS(X2-B(2)).LT.0.4E-6) GOTO 9
      WRITE(6,500)X1,X2,Y
  500 FORMAT(1H ,8X,7H*ERROR*,15X,E14.7,3X,E14.7,11X,E14.7,3X,E14.7)
    9 IF(MOD(L,10))10,11,10
   11 CONTINUE
C
  600 FORMAT(1H )
   10 L=L+1
      IF(K-150)13,12,12
   13 K=K+1
      IF(L-50)5,5,2
   12 IF(ITEM-1)14,15,14
   15 X1=-10.0
      K=-150
      GO TO 1
   14 ITEM=ITEM+1
      N=N+1
C
C
      X1=0.0
      X2=3.4
   50 Y=CMPLX(X1,X2)

      IF(X1-B(1))16,17,16
   17 IF(X2-B(2))16,18,16
   18 CONTINUE
C
      GO TO 19
C
   16 CONTINUE

      IF (ABS(X2-B(2)).LT.2.3E-8) GOTO 19
      WRITE(6,500)X1,X2,Y
   19 GO TO (21,22,23,24,25,26,27,28,29,30,31),ISW
   21 ITEM=ITEM+1
C
  800 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X1=ARRAY(1,1)
      X2=ARRAY(1,2)
      ISW=2
      GO TO 50
   22 X1=ARRAY(2,1)
      X2=ARRAY(2,2)
      ISW=3
      GO TO 50
   23 X1=((P**2-2.0)*6.0+1.0)/10.0
      X2=(P**2+P*0.1-P/10.0)/(-100.0)
      ISW=4
      GO TO 50
   24 X1=(ARRAY(1,1)*(-10.0)+5.0*P)/1000.0
      X2=ARRAY(1,1)**2+(P/10.0)*2.0+ARRAY(2,2)/10.0
      ISW=5
      GO TO 50
   25 X1=ABS(P-2.0)*(-0.5)
      X2=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=6
      GO TO 50
   26 X1=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      X2=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)
      ISW=7
      GO TO 50
   27 X1=SIN(P-1.0)-SQRT(P**2/4.0)
      X2=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      ISW=8
      GO TO 50
   28 X1=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      X2=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      ISW=9
      GO TO 50
   29 X1=F(P)*ARRAY(1,1)
      X2=EXP(ALOG(F(P**2)))/100.0-P*0.02
      ISW=10
      GO TO 50
   30 X1=F(ARRAY(2,1)*100.0)/100.0
      X2=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*ARRAY(2,2)
      ISW=11
      GO TO 50
   31 CONTINUE
      STOP
      END
