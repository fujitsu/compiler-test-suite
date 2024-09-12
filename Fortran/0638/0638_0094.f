      INTEGER*4 A(100,100)/10000*1/,B(100,100)/10000*2/
      INTEGER*4 C(100,100)/10000*0/
      DO 10 I=1,100
      DO 11 J=1,100
        C(J,I)=1
11    CONTINUE
      DO 10 J=1,10
        C(1,1)=I
10    CONTINUE
      DO 30 J=1,100
      DO 31 I=1,100
        B(I,J)=B(I,J)+1
31    CONTINUE
      DO 30 K=1,10
        B(1,1)=1
30    CONTINUE
      DO 50 J=1,10
      DO 51 I=1,10
51      A(I,J)=B(I,J)
      DO 50 I=1,10
        C(I,J)=B(1,1)
50    CONTINUE
      DO 60 J=20,50,2
      DO 61 I=80,100,2
61      A(I,J)=B(1,1)
      DO 62 I=80,100,2
62      B(I,J)=C(1,1)
      DO 63 I=80,100,2
63      C(I,J)=A(1,1)
60    CONTINUE
      IA=0
      IB=0
      IC=0
      DO 80 J=1,100,2
      DO 80 I=1,100
        IA=IA+A(I,J)
        IB=IB+B(I,J)
        IC=IC+C(I,J)
80    CONTINUE
      WRITE(6,*) IA,IB,IC
      STOP
      END
