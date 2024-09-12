      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      DO 10 I=1,10
          IF(NN.GT.5) THEN
          A(I)=B(I)+A(10)
          ELSE
            A(I)=B(I)+A(I)
          ENDIF
10     CONTINUE


      DO 20 I=1,10
        A(1)=A(1)+B(I)
        B(I)=B(I)+B(10)
        C(1)=C(1)+C(I)
  20  CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
