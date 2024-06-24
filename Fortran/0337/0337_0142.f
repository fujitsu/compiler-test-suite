      DOUBLE PRECISION  A(13),TAN8,PAI,TAN16,TAN316,TAN4,X,Y,D,B,X3,C,Z
     *                 ,DIFF,DI
      K=-5000
      A(1)=1.0D0
      A(2)=-0.3333333333333332D0
      A(3)=0.1999999999999717D0
      A(4)=-0.1428571428534613D0
      A(5)=0.111111110862416D0
      A(6)=-0.9090908089425890D-1
      A(7)=0.7692281737047678D-1
      A(8)=-0.6666214053093648D-1
      A(9)=0.5876914978042076D-1
      A(10)=-0.5217805171948401D-1
      A(11)=0.4501401419438956D-1
      A(12)=-0.3342996049649100D-1
      A(13)=0.1515463778938978D-1
      TAN8=0.414213562373095D0
      PAI=3.141592653589793D0
      TAN16=0.198912367379658D0
      TAN316=0.6681786379192983D0
      TAN4=1.0D0
      N=0
      DIFF=1.0D-14
      ITEM=3
      IIW=1
      IW=1
      IISW=1
      ISW=1
   10 N=N+1
      IF(N-1)11,12,11
   11 CONTINUE
C
  210 FORMAT(1H1 / )
   12 CONTINUE
C
      L=0
   20 I=0
      J=0
      DI=K
      X=DI/1000.0D0
      Y=DATAN(X)
      D=X
      IF(D)30,40,40
   30 D=-D
      I=1
   40 IF(D-1.0D0)60,60,50
   50 D=1.0D0/D
      J=1
   60 IF(D-TAN16)70,80,80
   70 B=0.0D0
      X3=0.0D0
      GO TO 95
   80 IF(D-TAN316)90,91,91
   90 B=TAN8
      X3=PAI/8.0D0
      GO TO 95
   91 B=1.0D0
      X3=PAI/4.0D0
   95 C=(D-B)/(1.0D0+D*B)
      Z=0.0D0
      DO 100 M=1,13
      Z=Z+A(M)*C**(2*M-1)
  100 CONTINUE
      Z=Z+X3
      IF(J-1)21,22,21
   22 Z=PAI/2.0D0-Z
   21 IF(I-1)23,24,23
   24 Z=-Z
   23 CALL DPRTN(L,DIFF,X,Y,Z)
      L=L+1
      IF(K+1500)26,25,25
   26 K=K+100
      IF(L-50)20,10,10
   25 ITEM=2
      IF(K+1000)28,27,27
   28 K=K+10
      GO TO (1,2),IW
    1 IW=2
      GO TO 10
    2 IF(L-50)20,10,10
   27 ITEM=1
      IF(K-999) 29,31,31
   29 K=K+1
      GO TO (3,4),IIW
    3 IIW=2
      GO TO 10
    4 IF(L-50)20,10,10
   31 ITEM=2
      IF(K-1490)33,32,32
   33 GO TO (5,6),ISW
    5 ISW=2
      K=K+1
      GO TO 10
    6 K=K+10
      IF(L-50)20,10,10
   32 ITEM=3
      IF(K-5000)34,35,35
   34 GO TO(7,8),IISW
    7 IISW=2
      K=K+10
      GO TO 10
    8 K=K+100
      IF(L-50)20,10,10
   35 CONTINUE
      STOP
      END
C
      SUBROUTINE    DPRTN (L,D,A,R,V)
      DOUBLE PRECISION A,R,V,DIFF,D
      DIFF = V - R
      IF(R) 90,80,90
   80 IF(DABS(DIFF)-D) 100,120,120
   90 IF(DABS(DIFF)-D*DABS(V)) 100,120,120
  100 CONTINUE
C
    1 FORMAT(1H ,5X,8H*OK*    ,4(5X,D24.17) )
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT(1H ,5X,8H*ERROR* ,4(5X,D24.17) )
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39) 200,190,200
  190 CONTINUE
C
    3 FORMAT (1H )
  200 RETURN
      END