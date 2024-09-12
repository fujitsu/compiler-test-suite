      DIMENSION A(1024),B(1024),C(1024),D(1024)
      REAL*4    E(1024),F(1024),G(1024),H(1024)
      DATA A/1024*1.0/,B/1024*2.0/,C/1024*3.0/
      DATA D/1024*4.0/,E/1024*5.0/,F/1024*6.0/
      DATA G/1024*7.0/,H/1024*8.0/
      COMMON /BLK/NN

      DO 10 I=1,10
        A(I)=A(I)+A(10)+B(10)+C(10)
        IF(NN.EQ.6) THEN
          D(I)=A(I)+C(I)
        ELSE
          C(I)=D(I)*2.0
        ENDIF
10    CONTINUE

      DO 20 I=1,1024
        IF(NN.EQ.6) THEN
          E(I)=A(I)+C(I)+A(1024)
        ELSE
          F(I)=D(I)*2.0+B(1024)
        ENDIF
        A(I)=A(I)+E(I)
        B(I)=A(I)+F(I)
20    CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
