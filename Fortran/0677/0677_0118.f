      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*2.0/
      DATA D/2048*1.0/,E/2048*2.0/,F/2048*2.0/
      DATA G/2048*2.0/,H/2048*2.0/
      COMMON /BLK/NN

      DO 10 I=1,10
        A(I)=A(I)+A(10)
        B(I)=B(I)+B(2048)
        C(I)=B(I)+C(10)
10    CONTINUE

       DO 20 I=1,10
         IF(NN.GT.6) THEN
           D(I)=D(I)+D(10)
         ELSE
           E(I)=D(I)+F(I)
         ENDIF
  20  CONTINUE

       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
