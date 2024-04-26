      REAL  DP(2),ANS(2),ARRAY(2,2)
      COMPLEX  DCX,DCXC,DCXS,ZZ,ZARRAY(2,2)
      EQUIVALENCE  (DCX,DP(1)),(DCXS,ANS(1))
      E(R)=1.0+R-R
      F(R)=(R**2+EXP(SIN(R-1.0)))/SQRT(4.0*R)
      N=0
      ITEM=0
      PAI=3.1415926
      P=1.0
      ISW=1
      J=1
      ZZ=(0.0,0.0)
      ZARRAY(1,1)=(-0.5,-0.5)
      ZARRAY(1,2)=(-0.01,0.01)
      ZARRAY(2,1)=(0.01,-0.01)
      ZARRAY(2,2)=(0.5,0.5)
      ARRAY(1,1)=-0.5
      ARRAY(1,2)=-0.01
      ARRAY(2,1)=0.01
      ARRAY(2,2)=0.5
      DIFF=1.0E-5
C
      DP(1)=PAI/4.0
      ISG=1
      IISG=1
   40 K=-500
      KSG=0
   50 ITEM=ITEM+1
   60 N=N+1
      IF(N-1)11,12,11
   11 WRITE(6,410)
  410 FORMAT(1H1 / )
   12 CONTINUE
C
      L=0
   70 IF(KSG-1)13,14,13
   14 DP(1)=FLOAT(K)/100.0
      GO TO 15
   13 DP(2)=FLOAT(K)/100.0
   15 ANS(1)=(EXP(DP(2))+EXP(-DP(2)))*COS(DP(1))/2.0
      ANS(2)=-(EXP(DP(2))-EXP(-DP(2)))*SIN(DP(1))/2.0
      DCXC=CCOS(DCX)
      CALL CPRTN(L,DIFF,DCX,DCXC,DCXS)
      L=L+1
      IF(KSG-1)17,16,17
   16 IF(K-314)19,18,18
   17 IF(K-500)19,21,21
   19 K=K+5
      IF(L-50)70,60,60
   18 GO TO(100,200,300),IISG
  100 DP(2)=0.0
      IISG=2
      GO TO 22
  200 DP(2)=2.0
      IISG=3
      GO TO 22
  300 WRITE(6,410)
      ITEM=ITEM+1
      N=N+1
C
      L=0
   23 GO TO(1,2,3,4,5,6,7,8,9),ISW
    1 DP(1)=-0.5
      DP(2)=-0.5
      ISW=2
      DCX=(SIN(P-1.0)-SQRT(P**2/4.0))*ZZ+ZARRAY(1,1)
      GO TO 24
    2 DP(1)=-0.01
      DP(2)=+0.01
      ISW=3
      DCX=(EXP(P-1.0)*SQRT(4.0*P)-3.0)/100.0*ZZ+ZARRAY(1,2)
      GO TO 24
    3 DP(1)=+0.01
      DP(2)=-0.01
      ISW=4
      DCX=(ALOG(P**2-1.0*SQRT(4.0*P)+2.0)+P/100.0)*ZZ+ZARRAY(2,1)
      GO TO 24
    4 DP(1)=0.5
      DP(2)=0.5
      ISW=5
      DCX=(SIN(ALOG(EXP(SIN(P-1.0))))*SQRT(P)+0.5)*ZZ+ZARRAY(2,2)
      GO TO 24
    5 DP(1)=-0.5
      DP(2)=-0.5
      ISW=6
      DCX=(F(P)*ARRAY(1,1))*ZZ+ZARRAY(1,1)
      GO TO 24
    6 DP(1)=-0.01
      DP(2)=+0.01
      ISW=7
      DCX=(EXP(ALOG(F(P**2)))/100.0-P*0.02)*ZZ+ZARRAY(1,2)
      GO TO 24
    7 DP(1)=0.01
      DP(2)=-0.01
      ISW=8
      DCX=(F(ARRAY(2,1)*100.0)/100.0)*ZZ+ZARRAY(2,1)
      GO TO 24
    8 DP(1)=0.5
      DP(2)=0.5
      ISW=9
      DCX=E(SIN(SQRT(F(P)+3.0)-F(P)*2.0))*ARRAY(2,2)*ZZ+ZARRAY(2,2)
      GO TO 24
    9 CONTINUE
      STOP
   24 ANS(1)=(EXP(DP(2))+EXP(-DP(2)))*COS(DP(1))/2.0
      ANS(2)=-(EXP(DP(2))-EXP(-DP(2)))*SIN(DP(1))/2.0
      DCXC=CCOS(DCX)
      CALL CPRTN(L,DIFF,DCX,DCXC,DCXS)
      L=L+1
      GO TO 23
   21 GO TO(10,20,30),ISG
   10 DP(1)=PAI/2.0
      ISG=2
      GO TO 40
   20 DP(1)=PAI*5./6.
      ISG=3
      GO TO 40
   30 DP(2)=-1.
      ISG=1
   22 K=-314
      KSG=1
      GO TO 50
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
