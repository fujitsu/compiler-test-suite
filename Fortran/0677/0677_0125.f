      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      INTEGER*4 L(2048)/2048*5/
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      DO 10 I=1,10
        A(I)=B(I)+C(I)
        F(L(I))=H(L(I))
        B(I)=A(I)
        C(I)=A(I)
        A(I)=D(I)+2.0
  10  CONTINUE

      DO 20 I=1,2048
        A(I)=B(I)+C(I)
        B(I)=C(I)
        C(I)=2.0
        IF(NN.EQ.8) THEN
          D(L(I))=H(L(I))
          A(I)= B(I)+7.0+C(I)
        ELSE
          G(I)=F(I)
          A(I)=B(I)+6.0+C(I)
        ENDIF
20    CONTINUE
       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
