      INTEGER*4 A(100,100)/10000*1/,B(100,100)/10000*2/
      INTEGER*4 C(100,100)/10000*0/
      EQUIVALENCE (A(20,20),IEA)
      EQUIVALENCE (B(20,20),IEB)
      EQUIVALENCE (C(20,20),IEC)
      IS=C(2,2)+B(1,1)
      DO 10 J=1,100
        C(1,J)=1
10    CONTINUE
       C(1,2)=0
      IF(IS.GT.0) GOTO 21
      C(1,3)=1
      DO 20 I=1,100
        C(I,1)=2
20    CONTINUE
      C(1,1)=0
21    CONTINUE
      IEB=0
      DO 30 J=1,100
      DO 30 I=1,100
        B(I,J)=B(I,J)+1
30    CONTINUE

      DO 41 K=1,IEB
      IF(K.GT.1) GOTO 42
      DO 40 J=1,50
      DO 40 I=1,50
       B(I,J)=1
40    CONTINUE
42    CONTINUE
41    CONTINUE
      C(1,1)=IEC
      IF(C(1,8).GT.0) GOTO 51
      DO 50 J=51,100,2
      DO 50 I=51,100,2
        B(I,J)=2
50    CONTINUE
51    CONTINUE
      DO 70 K=1,3
        IEB=0
        DO 60 J=1,10
        DO 60 I=1,10
          A(I,J)=2
 60     CONTINUE
        IEA=0
        IF(C(100,100).GT.100000) STOP 'NG'
        DO 70 J=11,20
        DO 70 I=11,20
          B(I,J)=3
 70   CONTINUE
      IA=0
      IB=0
      IC=0
      A(1,1)=2
      DO 80 J=1,100,2
      DO 80 I=1,100
        IA=IA+A(I,J)
        IB=IB+B(I,J)
        IC=IC+C(I,J)
80    CONTINUE
      IF(IA.GT.100000) THEN
        IA=IEB
      ENDIF
      WRITE(6,*) IA,IB,IC
      IEA=1
      DO 100 I=1,10
100   A(1,I)=0
      STOP
      END
