      DIMENSION M(10)
      K=3
      DO 19 I=1,10
      KI=K**I
      M(I)=KI
   19 CONTINUE
      WRITE(6,1000) M
      L=5
      DO 29 I=1,10
      LI=L*I
      M(I)=LI
   29 CONTINUE
      WRITE(6,1000) M
      K1=3
      K2=2
      DO 39 I=1,10
      KKI=(K1+K2)**I
      M(I)=KKI
   39 CONTINUE
      WRITE(6,1000) M
      STOP
 1000 FORMAT(1X,10I12)
      END
