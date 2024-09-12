      INTEGER*4 A(32),B(64),C(128),D(256),E(512),F(1024)

      DO 10  J=1,32
        A(J)=32
10    CONTINUE

      DO 20  J=1,64
        B(J)=A(1)+32
20    CONTINUE

      DO 30  J=1,128
        C(J)=B(1)+64
30    CONTINUE

      DO 40  J=1,256
        D(J)=C(1)+128
40    CONTINUE

      DO 50  J=1,512
        E(J)=D(1)+256
50    CONTINUE

      DO 60  J=1,1024
        F(J)=E(1)+512
60    CONTINUE

      DO 70  J=1,512
        E(J)=F(1)
70    CONTINUE

      DO 80  J=1,256
        D(J)=E(1)
80    CONTINUE

      DO 90  J=1,128
        C(J)=D(1)
90    CONTINUE

      DO 100 J=1,64
        B(J)=C(1)
100   CONTINUE

      DO 110  J=1,32
        A(J)=B(1)
110    CONTINUE

      DO 120  J=1,1024
        F(J)=B(10)
120    CONTINUE

      DO 130  J=1,10
        D(J)=C(10)
130    CONTINUE

      WRITE(6,*) A(32),B(64),C(128),D(256),E(512),F(1024)
      STOP
      END
