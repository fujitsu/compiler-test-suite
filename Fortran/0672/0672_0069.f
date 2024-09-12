          I=1
   10     J=(((I-1)+1)*3+1+2)*4+1
          M=J*5
          I=I+1
          IF(I.LT.10) GO TO 10
          I=-1
          J=1000000
          DO 15 K=1,3
          IA=10**K
          IB=11**I
          I=I+1
  15      J=J+1
          DO 20 I=1,10
          IC=K**I
          ID=K**J
  20      J=J+1
          I=1
          N=1
   50     K=I*4
          L=K*2
          I=10-I
          N=N+1
          IF(N.LT.10) GO TO 50
          WRITE(6,1000) L,M,IA,IB,IC,ID
 1000     FORMAT(1X,10I12)
          STOP
          END
