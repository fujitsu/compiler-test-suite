      DIMENSION A(2048),B(2048),C(2048),D(2048)
      REAL*8    E(2048),F(2048),G(2048),H(2048)
      DATA A/2048*1.0/,B/2048*2.0/,C/2048*3.0/
      DATA D/2048*4.0/,E/2048*5.0/,F/2048*6.0/
      DATA G/2048*7.0/,H/2048*8.0/
      COMMON /BLK/NN

      DO 10 I=1,10
        IF(NN.EQ.6) THEN
          A(I)=B(I)+C(I)
        ELSE
          A(I)=B(I)+D(I)
        ENDIF

        IF(I.GT.5) THEN
          F(I)=G(I)*H(I)
        ELSE
          F(I)=G(I)*2.0
        ENDIF

        IF(NN.GT.6) THEN
          E(I)=A(I)+B(I)
        ELSE IF(NN.LT.4) THEN
          A(I)=B(I)+2.0
          B(I)=A(I)+F(I)
          A(I)=B(I)+C(I)+D(I)+E(I)+F(I)+G(I)+H(I)
        ELSE
          A(I)=H(I)+B(I)
        ENDIF
10    CONTINUE
         DO 40 J=1,204
          A(J)=B(J)+C(J)+D(J)+E(J)+F(J)+G(J)+H(J)
  40  CONTINUE

       WRITE(6,*) A,B,C,D,E,F,G,H
       STOP
       END
       BLOCK DATA
       COMMON /BLK/N
       DATA N/10/
       END
