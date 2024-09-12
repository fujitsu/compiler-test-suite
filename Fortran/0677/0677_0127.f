      REAL*8    A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*0.5/,B/2048*0.5/,C/2048*0.5/
      DATA D/2048*0.5/,E/2048*0.5/,F/2048*0.5/
      DATA G/2048*0.5/,H/2048*0.5/
      COMMON /BLK/NN

      DO 10 I=1,10
        A(I)=B(I)+C(I)
        B(I)=SIN(A(I))
        A(I)=A(I)+B(I)
        D(I)=A(I)+C(I)
10    CONTINUE

      DO 20 I=1,10
          A(I)=B(I)+C(I)
          B(I)=SIN(D(I))
          C(I)=A(I)+C(I)
20     CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
