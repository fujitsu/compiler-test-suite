      DOUBLE PRECISION  A1,A2,ANS1,ANS2,DI,A,DIFF
      K=-1000
      A2=1.0D0
      N=0
      ITEM=1
      DIFF=1.0D-14
C
   10 N=N+1
      IF(N-1) 20,30,20
   20 CONTINUE
C
  210 FORMAT(1H1 / )
   30 CONTINUE
      L=0
   40 DI=K
      A1=DI/100.0D0
      ANS1=DATAN2(A1,A2)
      A=A1/A2
      ANS2=DATAN(A)
      CALL DR2RTN(L,DIFF,A1,A2,ANS1,ANS2)
      L=L+1
      K=K+1
      IF(K-1000) 50,50,60
   50 IF(L-50) 40,10,10
   60 CONTINUE
      STOP
      END
      SUBROUTINE DR2RTN(L,D,X1,X2,Y,Z)
      DOUBLE PRECISION XX,DF,X1,X2,Y,Z,D
      IF(MOD(L,10))120,110,120
  110 CONTINUE
C
   11 FORMAT(1H )
  120 XX=DABS(Z-Y)
      IF(Y)150,160,150
  150 DF=D*DABS(Z)
      GO TO 170
  160 DF=D
  170 IF(XX-DF)130,140,140
  130 CONTINUE
C
   12 FORMAT(1H ,4X,4H*OK*,5X,D24.17,2X,3(D24.17,3X),D12.5)
      RETURN
  140 WRITE(6,13)X1,X2,Y,Z,XX
   13 FORMAT(1H ,4X,7H*ERROR*,2X,D24.17,2X,3(D24.17,3X),D12.5)
      RETURN
      END
