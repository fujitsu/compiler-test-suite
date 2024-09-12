      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*.003/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      DO 10 I=1,10
        A(I)=A(I)+A(I)+A(10)+A(12)
        B(I)=A(I)+B(10)
        D(I)=C(10)+D(10)+D(I)
        H(I)=H(I)+A(I)*B(I)+H(10)
        E(I)=E(I)*E(10)
  10  CONTINUE

      DO 20 I=1,10
        DO 20 J=20,30
          A(J)=B(J)+A(30)+B(30)+D(30)-5
          C(J)=C(J)+C(30)+C(30)-10
          D(J)=D(J)+D(30)
  20  CONTINUE

       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
