      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      DO 10 I=1,10
        A(I)=A(I)+B(I)
        C(I)=C(I)+D(I)
        E(I)=E(I)+F(I)
  10  CONTINUE

      DO 20 I=1,10
        IF(A(I).EQ.9.0) THEN
        A(I)=A(I)+B(I)
        B(I)=C(I)+D(I)
        C(I)=E(I)+F(I)
        A(I)=A(I)+B(I)
        B(I)=C(I)+D(I)
        C(I)=E(I)+F(I)
        ENDIF
  20  CONTINUE

      DO 100 L=1,100
           A(L)=B(L)+C(L)
           IF(NN.EQ.10) THEN
             B(L)=A(L)+C(L)
           ELSE
             C(L)=A(L)+9.0
           ENDIF
 100  CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
