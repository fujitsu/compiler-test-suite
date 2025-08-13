      DIMENSION  ARRAY(2),X(17)
      E(C)=1.0+C-C
      F(C)=(C**2+EXP(SIN(C-1.0)))/SQRT(4.0*C)
      ARRAY(1)=-0.5
      ARRAY(2)=0.01
      N=0
      J=1
      P=1.0
      ISW=1
C
C
      ITEM=1
      N=N+1
C
   13 GO TO(1,2,3,4,5,6),ISW
    1 X(1)=2.0
      X(2)=-2.0
      Y=AMIN1(2.0,-2.0)
      ISW=2
      GO TO 7
    2 X(1)=ARRAY(1)
      X(2)=ARRAY(2)
      Y=AMIN1(ARRAY(1),ARRAY(2))
      ISW=3
      GO TO 7
    3 X(1)=((P**2-2.0)*6.0+1.0)/10.0
      X(2)=(ARRAY(1)*(-10.0)+5.0*P)/1000.0
      Y=AMIN1(((P**2-2.0)*6.0+1.0)/10.0,(ARRAY(1)*(-10.0)+5.0*P)/1000.0)
      ISW=4
      GO TO 7
    4 X(1)=ABS(P-2.0)*(-0.5)
      X(2)=FLOAT(2*J**2-IFIX(10.0/3.0)+2)/100.0
      Y=AMIN1(ABS(P-2.0)*(-0.5),FLOAT(2*J**2-IFIX(10.0/3.0)+2)/100.0)
      ISW=5
      GO TO 7
    5 X(1)=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0
      X(2)=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P)/100.0
      Y=AMIN1((EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0,(ALOG(P**2-1.0*SQRT
     1        (4.0*P)+2.0)+P)/100.0)
      ISW=6
    7 IF(Y-X(1))8,8,9
    8 IF(Y-X(2))10,10,11
   10 WRITE(6,300)
  300 FORMAT(1H ,8X,4H*OK*)
      GO TO 13
    9 Z=X(1)
      GO TO 12
   11 Z=X(2)
   12 WRITE(6,400)X(1),X(2),Y,Z
  400 FORMAT(1H ,8X,7H*ERROR*,12X,2(3X,E14.7),24X,E14.7,15X,E14.7)
      GO TO 13
C
    6 ITEM=2
C
  500 FORMAT(1H0 / 19X,3H- (,I3,3H) - // )
C
      X(1)=-32767.0
      X(2)=-1234.0
      X(3)=0.0
      X(4)=1234.0
      X(5)=32767.0
      Y=AMIN1(-32767.0,-1234.0,0.0,1234.0,32767.0)
      DO 1000 I=1,5
      IF(Y-X(I)) 1000,1000,14
 1000 CONTINUE
      WRITE(6,600)
  600 FORMAT(1H ,8X,4H*OK*)
C
  700 FORMAT(1H ,19X,2(3X,E14.7))
      GO TO 15
   14 Z=X(I)
      WRITE(6,800)(X(I),I=1,3),Y,Z
  800 FORMAT(1H ,8X,7H*ERROR*,4X,3(3X,E14.7),2(15X,E14.7))
      WRITE(6,700)X(4),X(5)
   15 ITEM=3
      N=N+1
C
  900 FORMAT(1H1 / )
C
      L=0
      K=-10
   16 A=FLOAT(K)
      X(1)=2.0*A-3.0
      X(2)=A
      X(3)=(-1.0)**K*A-3.0*A
      X(4)=80.0/(A+11.0)+1.0
      X(5)=10.0-A
      X(6)=7.0+A-3.0*A
      X(7)=A-7.0+(-2.0)*A
      X(8)=3.0*A+9.0
      X(9)=-A-2.0
      Y=MIN1(X(1),X(2),X(3),X(4),
     *       X(5),X(6),X(7),X(8),X(9))
      DO 2000 I=1,9
      IF(Y-X(I))2000,2000,17
 2000 CONTINUE
      WRITE(6,600)
C
  910 FORMAT(1H ,19X,3(3X,E14.7)
     *       /  20X,3(3X,E14.7))
      GO TO 18
   17 Z=X(I)
      WRITE(6,800)(X(I),I=1,3),Y,Z
      WRITE(6,910)(X(I),I=4,9)
   18 CONTINUE
C
  911 FORMAT(1H )
      L=L+3
      K=K+1
      IF(K-10)19,19,21
   19 IF(L-39)16,20,20
   20 N=N+1
C
      L=0
      GO TO 16
   21 ITEM=4
      N=N+1
C
      X(1)=SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5
      X(2)=F(P)*ARRAY(1)
      X(3)=EXP(ALOG(F(P**2)))/100.0-P*0.02
      X(4)=F(ARRAY(2)*100.0)/100.0
      X(5)=-3.2768
      X(6)=3.2768
      X(7)=0.0
      X(8)=-15.0
      X(9)=-1000.0
      X(10)=-1970.0
      X(11)=2345.0
      X(12)=1970.0
      X(13)=-32.9
      X(14)=-6.059
      X(15)=9999.0
      X(16)=0.0
      X(17)=87.0
C
      Y=AMIN1(SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5,F(P)*ARRAY(1),
     1EXP(ALOG(F(P**2)))/100.0-P*0.02,F(ARRAY(2)*100.0)/100.0,-3.2768,
     23.2768,0.0,-15.0,-1000.0,-1970.0,2345.0,1970.0,-32.9,-6.059,
     39999.0,-9999.0,87.0)
C
      DO 3000 I=1,17
      IF(Y-X(I))3000,3000,22
 3000 CONTINUE
      WRITE(6,600)

  920 FORMAT(1H ,19X,3(3X,E14.7)
     *        /  20X,3(3X,E14.7)
     *        /  20X,3(3X,E14.7)
     *        /  20X,3(3X,E14.7)
     *        /  20X,2(3X,E14.7))
      GO TO 23
   22 Z=X(I)
      WRITE(6,800)(X(I),I=1,3),Y,Z
      WRITE(6,920)(X(I),I=4,17)
   23 CONTINUE
      STOP
      END
