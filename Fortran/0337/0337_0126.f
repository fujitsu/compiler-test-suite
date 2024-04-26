      DIMENSION A(2),ARRAY(2,2)
      COMPLEX  X
      EQUIVALENCE  (X,A(1))
      E(P)=1.0+P-P
      F(P)=(P**2+EXP(SIN(P-1.0)))/SQRT(4.0*P)
      ITEM=1
      P=1.0
      J=1
      N=1
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
      DIFF=1.0E-5
      A(1)=3.4
      A(2)=-4.0
      ISW=1
    8 Y=REAL(X)
      Z=A(1)
      XX=ABS(Z-Y)
      IF(Y)9,10,9
    9 DF=DIFF*ABS(Z)
      GO TO 11
   10 DF=DIFF
   11 IF(XX-DF)12,13,13
   12 WRITE(6,300)
  300 FORMAT(1H ,4X,4H*OK*,11X,E14.7,3X,E14.7,3(10X,E14.7))
      GO TO 14
   13 WRITE(6,400)X,Y,Z,XX
  400 FORMAT(1H ,4X,7H*ERROR*,8X,E14.7,3X,E14.7,3(10X,E14.7))
   14 GO TO (1,2,3,4,5,6,7,18,19,20,21,22,23,24,25,26,27),ISW
    1 A(1)=-3.0
      A(2)=4.0
      ISW=2
      GO TO 8
    2 A(1)=-3.0
      A(2)=-4.0
      ISW=3
      GO TO 8
    3 A(1)=3.0
      A(2)=-4.0
      ISW=4
      GO TO 8
    4 A(1)=0.0
      A(2)=-5.0
      ISW=5
      GO TO 8
    5 A(1)=10.0
      A(2)=0.0
      ISW=6
      GO TO 8
    6 A(1)=0.0
      A(2)=0.0
      ISW=7
      GO TO 8
    7 ITEM=2
C
  600 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      A(1)=ARRAY(1,1)
      A(2)=ARRAY(1,2)
      ISW=8
      GO TO 8
   18 A(1)=ARRAY(2,1)
      A(2)=ARRAY(2,2)
      ISW=9
      GO TO 8
   19 A(1)=((P**2-2.0)*6.0+1.0)/10.0
      A(2)=(P**2+P*0.1-P/10.0)/(-100.0)
      ISW=10
      GO TO 8
   20 A(1)=(ARRAY(1,1)*(-10.0)+5.0*X)/1000.0
      A(2)=ARRAY(1,1)**2+(P/10.0)*2.0+ARRAY(2,2)/10.0
      ISW=11
      GO TO 8
   21 A(1)=ABS(P-2.0)*(-0.5)
      A(2)=FLOAT(J*2-IFIX(10.0/3.0))/100.0
      ISW=12
      GO TO 8
   22 A(1)=FLOAT(J**2*2-IFIX(10.0/3.0)+2)/100.0
      A(2)=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0+SIGN(P,P)
      ISW=13
      GO TO 8
   23 A(1)=SIN(P-1.0)-SQRT(P**2/4.0)
      A(2)=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      ISW=14
      GO TO 8
   24 A(1)=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      A(2)=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      ISW=15
      GO TO 8
   25 A(1)=F(P)*ARRAY(1,1)
      A(2)=EXP(ALOG(F(P**2)))/100.0-P*0.02
      ISW=16
      GO TO 8
   26 A(1)=F(ARRAY(2,1)*100.0)/100.0
      A(2)=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*ARRAY(2,2)
      ISW=17
      GO TO 8
   27 CONTINUE
      STOP
      END
