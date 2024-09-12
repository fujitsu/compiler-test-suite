      INTEGER*4 A(100,100)/10000*1/,B(100,100)/10000*2/
      INTEGER*4 C(100,100)/10000*0/
      DO 10 J=1,100
        C(1,J)=1
10    CONTINUE
      CALL SUB
      DO 20 I=1,100
        C(I,1)=2
20    CONTINUE
      CALL SUB
      DO 30 J=1,100
      DO 30 I=1,100
        B(I,J)=B(I,J)+1
30    CONTINUE
      DO 40 K=1,2
      CALL SUB
      DO 40 J=1,50
      DO 40 I=1,50
       B(I,J)=1
40    CONTINUE
      CALL SUB
      DO 50 L=1,2
      DO 50 K=1,2
      CALL SUB
      DO 50 J=51,100,2
      DO 50 I=51,100,2
        B(I,J)=2
50    CONTINUE
      DO 70 K=1,3
        DO 60 J=1,10
        DO 60 I=1,10
          A(I,J)=2
 60     CONTINUE
        CALL SUB
        DO 70 J=11,20
        DO 70 I=11,20
          B(I,J)=3
 70   CONTINUE
      CALL SUB
      IA=0
      IB=0
      IC=0
      CALL SUB
      DO 80 J=1,100,2
      DO 80 I=1,100
        IA=IA+A(I,J)
        IB=IB+B(I,J)
        IC=IC+C(I,J)
80    CONTINUE
      CALL SUB
      IF(A(1,1).GT.100) WRITE(6,*) 'TEST'
      WRITE(6,*) IA,IB,IC
      STOP
      END
      SUBROUTINE SUB
      RETURN
      END
