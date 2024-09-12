      DIMENSION A(10,10)
      N=1
      M1=1
      M2=1
      M3=1
      M4=1
      M5=1
      A(1,1)=2.
      DO 20 I=2,3
      K=N
      B1=A(K,M1)
      B2=A(K,M2)
      L=N
      B3=A(L,M3)
      B4=A(K,M4)
   10 B5=A(L,M5)
   20 CONTINUE
      B=B1+B2+B3+B4+B5
      WRITE(6,100) B
      IF(B.LT.10.0001.AND.B.GT.9.9999) GO TO 90
      WRITE(6,80)
      GO TO 99
   90 WRITE(6,88)
   99 CONTINUE
      STOP
   80 FORMAT(' *** NG *** ')
   88 FORMAT(' *** OK *** ')
  100 FORMAT(1X,5E20.7)
      END
