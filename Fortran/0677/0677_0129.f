      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      DO 10 I=1,NN
        A(I)=B(I)+C(I)+D(I)
        B(I)=C(I)+D(I)+A(I)
        C(I)=D(I)+A(I)+B(I)
        D(I)=A(I)+B(I)+C(I)
        A(I)=B(I)+C(I)+D(I)
        B(I)=C(I)+D(I)+A(I)
        C(I)=D(I)+A(I)+B(I)
        D(I)=A(I)+B(I)+C(I)
 10   CONTINUE
        DO 20 J=20,30
          A(J)=B(J)+C(J)+D(J)+E(J)+F(J)+G(J)+H(J)
          B(J)=0.0
          C(J)=0.0
          D(J)=0.0
          E(J)=0.0
          F(J)=0.0
          G(J)=0.0
          H(J)=0.0
  20  CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
