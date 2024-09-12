      PROGRAM MAIN
      REAL*4  A(10,1000)
      REAL*8 B(10,1000)
      INTEGER*4 N10/10/,N8/8/,N7/7/,N6/6/
      DO 1 J=1,1000
      DO 1 I=1,10
        A(I,J)=I
1       B(I,J)=I+1.0

      DO 10 J=1,2
      DO 10 I=1,10
        A(I,J)=B(I,J)*2.5+B(I+0,J+0)+0.0
10    CONTINUE
      WRITE(6,*) A,B(1,1),B(10,1000),B(1,1000)

      DO 20 J=3,5
      DO 20 I=1,10
        A(I,J)=B(I,J)*2.5+B(I+0,J+1)+1.0
20    CONTINUE
      WRITE(6,*) A,B(1,1),B(10,1000),B(1,1000)

      DO 30 J=N6,N7
      DO 30 I=1,10,2
        A(I,J+1)=A(I,J)*2.5+B(I+0,J+1)+1.0
30    CONTINUE
      WRITE(6,*) A,B(1,1),B(10,1000),B(1,1000)

      DO 40 J=N8,N10
      DO 40 I=1,10
        B(I,J+1)=B(I,J)*2.5+B(I+0,J+1)+1.0
40    CONTINUE
      WRITE(6,*) A,B(1,1),B(10,1000),B(1,1000)

      STOP
      END
