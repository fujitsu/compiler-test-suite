      REAL*8    A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*1.0/,C/2048*1.0/
      DATA D/2048*1.0/,E/2048*1.0/,F/2048*1.0/
      DATA G/2048*1.0/,H/2048*1.0/
      COMMON /BLK/NN

      DO 1 I=1,NN
        A(I)=B(I)+C(I)
 1    CONTINUE

      DO 10 I=1,NN
          A(I)=B(I)+C(I)+D(I)+E(I)+F(I)+G(I)+H(I)
  10  CONTINUE

       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
