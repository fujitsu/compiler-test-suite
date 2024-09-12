      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      N = 0
      DO 1 I=1,2
        N=N+N
 1    CONTINUE

      DO 10 I=1,10
          A(I)=B(I)+C(I)+D(I)+E(I)+F(I)+G(I)+H(I)
  10  CONTINUE

      DO 20 I=1,10
        DO 20 J=20,30
          A(J)=B(J)+C(J)+D(J)+E(J)+F(J)+G(J)+H(J)
  20  CONTINUE

      DO 100 L=1,100

      DO 2 I=1,2
       N=N+N
 2    CONTINUE

      DO 30 I=1,10
         A(I)=B(I)+C(I)+D(I)+E(I)+F(I)+G(I)+H(I)
  30  CONTINUE

      DO 40 I=1,10
        DO 40 J=20,30
          A(J)=B(J)+C(J)+D(J)+E(J)+F(J)+G(J)+H(J)
  40  CONTINUE

 100   CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
