      DIMENSION A(100),B(100),C(100),D(100)
      REAL*8    E(100),F(100),G(100),H(100)
      DATA A/100*1.0/,B/100*2.0/,C/100*3.0/
      DATA D/100*4.0/,E/100*5.0/,F/100*6.0/
      DATA G/100*7.0/,H/100*8.0/
      COMMON /BLK/NN
      N=10

      DO 10 I = 1,10
        IF(NN.EQ.0) THEN
          A(I)=B(I)+C(I)
        ELSE IF(NN.GT.10) THEN
          D(I)=1.0+A(I)
        ELSE IF(NN.EQ.8) THEN
          H(I)=G(I)*H(10)
        ELSE IF(N.EQ.8) THEN
          H(I)=G(I)*H(10)
        ELSE IF(N.LT.5) THEN
          H(I)=G(I)*H(10)
        ELSE IF(N.GT.8) THEN
          H(I)=G(I)*H(10)
        ENDIF
10    CONTINUE

       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
