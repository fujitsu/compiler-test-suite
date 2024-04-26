      REAL DP(2),ANS(2),ARRAY(2,2)
      COMPLEX CX,CXR,CXV,ZZ,ZARRAY(2,2)
      EQUIVALENCE (CX,DP(1)),(CXV,ANS(1))
C
      N=0
      ITEM=0
      ISW=1
      IISW=1
      ZARRAY(1,1)=(-0.5,-0.5)
      ZARRAY(1,2)=(-0.01,0.01)
      ZARRAY(2,1)=(0.01,-0.01)
      ZARRAY(2,2)=(0.5,0.5)
      P=1.0
      ZZ=(0.0,0.0)
      DIFF=1.0E-5
      J=1
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
C
  100 K=-6283
      GO TO (1,2,3,4),ISW
    1 DP(1)=-1.0
      GO TO 110
    2 DP(1)=0.0
      GO TO 110
    3 DP(1)=1.0
      GO TO 110
    4 DP(1)=2.0
  110 ITEM=ITEM+1
  120 N=N+1
      IF(N-1)130,140,130
  130 WRITE(6,12)
   12 FORMAT(1H1 / )
  140 CONTINUE
      L=0
  150 DP(2)=FLOAT(K)/1000.0
      ANS(1)=EXP(DP(1))*COS(DP(2))
      ANS(2)=EXP(DP(1))*SIN(DP(2))
      CXR=CEXP(CX)
      CALL CPRTN(L,DIFF,CX,CXR,CXV)
      L=L+1
      IF(K-6217)160,170,170
  160 K=K+125
      IF(L-50)150,120,120
  170 IF(ITEM-4)180,190,180
  180 ISW=ISW+1
      GO TO 100
  190 ITEM=5
      N=N+1
      WRITE(6,12)
C
      L=0
  210 GO TO (21,22,23,24,25,26,27,28,29,30,31,32,33),IISW
   21 DP(1)=-0.5
      DP(2)=-0.5
      CX=ZARRAY(1,1)
      IISW=2
      GO TO 200
   22 DP(1)=-0.01
      DP(2)=0.01
      CX=ZARRAY(1,2)
      IISW=3
      GO TO 200
   23 DP(1)=0.01
      DP(2)=-0.01
      CX=ZARRAY(2,1)
      IISW=4
      GO TO 200
   24 DP(1)=0.5
      DP(2)=0.5
      CX=ZARRAY(2,2)
      IISW=5
      GO TO 200
   25 DP(1)=-0.5
      DP(2)=-0.5
      CX=((P**2-2.0)*6.0+1.0)/10.0*ZZ+ZARRAY(1,1)
      IISW=6
      GO TO 200
   26 DP(1)=-0.01
      DP(2)=0.01
      CX=(P**2+P*0.1-P/10.0)/(-100.0)*ZZ+ZARRAY(1,2)
      IISW=7
      GO TO 200
   27 DP(1)=0.01
      DP(2)=-0.01
      CX=(ARRAY(1,1)*(-10.0)+5.0*P)/1000.0*ZZ+ZARRAY(2,1)
      IISW=8
      GO TO 200
   28 DP(1)=0.5
      DP(2)=0.5
      CX=(ARRAY(1,1)**2+(P/10.0)*2.0+ARRAY(2,2)/10.0)*ZZ+ZARRAY(2,2)
      IISW=9
      GO TO 200
   29 DP(1)=-0.5
      DP(2)=-0.5
      CX=(ABS(P-2.0)*(-0.5))*ZZ+ZARRAY(1,1)
      IISW=10
      GO TO 200
   30 DP(1)=-0.01
      DP(2)=0.01
      CX=(FLOAT(J*2-IFIX(10.0/3.0))/100.0)*ZZ+ZARRAY(1,2)
      IISW=11
      GO TO 200
   31 DP(1)=0.01
      DP(2)=-0.01
      CX=(FLOAT(J**2*2-IFIX(10.0/3.0)+2))/100.0*ZZ+ZARRAY(2,1)
      IISW=12
      GO TO 200
   32 DP(1)=0.5
      DP(2)=0.5
      CX=(ABS(P**2+2.0)+FLOAT(J*(-8)))/10.0*SIGN(P,P)*ZZ+ZARRAY(2,2)
      IISW=13
  200 ANS(1)=EXP(DP(1))*COS(DP(2))
      ANS(2)=EXP(DP(1))*SIN(DP(2))
      CXR=CEXP(CX)
      CALL CPRTN(L,DIFF,CX,CXR,CXV)
      L=L+1
      GO TO 210
   33 CONTINUE
      STOP
      END
C
      SUBROUTINE    CPRTN (L,D,A,R,V)
      COMPLEX A,R,V,DIFF
      DIFF = V - R
      IF(CABS(R)) 90,80,90
   80 IF(CABS(DIFF)-D) 100,120,120
   90 IF(CABS(DIFF)-D*CABS(V)) 100,120,120
  100 WRITE (6,1)
    1 FORMAT (1H ,2X,4H*OK*)
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT (1H ,2X,7H*ERROR*,4X,E14.7,1X,E14.7,4X,E14.7,1X,E14.7,
     *        4X,E14.7,1X,E14.7,3X,2E10.3)
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39) 200,190,200
  190 WRITE (6,3)
    3 FORMAT (1H )
  200 RETURN
      END
