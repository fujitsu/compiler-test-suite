      DIMENSION A(2048),B(2048),C(2048),D(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/,D/2048*0.0/
      COMMON /BLK/NN

      DO 10 I=1,2048
        A(I)=B(I)+C(I)
 10   CONTINUE

      DO 20 I=1,NN
          D(I)=B(I)+C(I)
  20  CONTINUE

       WRITE(6,*) A,B,C,D
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
