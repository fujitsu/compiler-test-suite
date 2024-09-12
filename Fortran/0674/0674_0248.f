      PROGRAM MAIN
      REAL*4  A(10,1000)
      REAL*8 B(10,1000)
      INTEGER*4 N10/10/,N8/8/,N7/7/,N6/6/

      DO 1 J=1,1000
      DO 2 I=1,10
2       A(I,J)=I
      DO 3 I=1,10
3       B(I,J)=I+1.0
1     CONTINUE

      DO 10 J=1,2
      DO 10 I=1,10
        A(I,J)=A(I,J)*2.5
10    CONTINUE
      N10=N10-1

      DO 20 J=3,5
      DO 20 I=1,10
        B(I,J)=B(I,J)*2.5
20    CONTINUE
      WRITE(6,*) A,N10,B

      DO 30 J=N6,N7
      DO 30 I=1,10,2
        A(I,J+1)=A(I,J+1)
30    CONTINUE
      WRITE(6,*) A,B(1,1),B(10,1000),B(1,1000)

      DO 40 J=N8-2,N8+1
      DO 40 I=1,10-1
        B(I+1,J)=B(I+1,7)
40    CONTINUE
      WRITE(6,*) A,B,N10

      STOP
      END
