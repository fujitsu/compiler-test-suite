      INTEGER*4 A(100,100)/10000*1/,B(100,100)/10000*2/
      INTEGER*4 C(100,100)/10000*0/
      DO 10 I=1,100
      DO 11 J=1,100
        C(J,I)=1
        WRITE(6,*) 'DUMMY'
11    CONTINUE
      DO 10 J=1,10
        C(J,I)=2
        WRITE(6,*) 'DUMMY'
10    CONTINUE
      DO 30 J=1,100
      DO 31 I=1,100
        B(I,J)=B(I,J)+1
        WRITE(6,*) 'DUMMY'
31    CONTINUE
      DO 30 K=1,10
        WRITE(6,*) 'DUMMY'
        B(K,J)=1
30    CONTINUE
      DO 50 J=1,10
      WRITE(6,*) 'DUMMY'
      DO 51 I=1,10
      WRITE(6,*) 'DUMMY'
51      A(I,J)=B(I,J)
      DO 50 I=1,10
        C(I,J)=B(I,J)
        WRITE(6,*) 'DUMMY'
50    CONTINUE
      DO 60 J=20,50,2
      DO 61 I=80,100,2
        WRITE(6,*) 'DUMMY'
61      A(I,J)=0
        WRITE(6,*) 'DUMMY'
      DO 62 I=80,100,2
        WRITE(6,*) 'DUMMY'
62      B(I,J)=0
      DO 63 I=80,100,2
63      C(I,J)=0
        WRITE(6,*) 'DUMMY'
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
