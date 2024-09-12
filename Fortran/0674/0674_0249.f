      PROGRAM MAIN
      REAL*4  A(1000,10)
      REAL*4 B(1000,10)
      COMMON CA(1000,10),CB(1000,10)
      INTEGER*4 N10/10/,N8/8/,N7/7/,N6/6/

7     DO 1 I=1,1000
6     DO 1 J=1,10
5       A(I,J)=I
4       B(I,J)=I+1.0
3      CA(I,J)=J
2      CB(I,J)=J+1.0
1     CONTINUE

      DO 10 J=1,2
      DO 10 I=1,10
        A(I,J)=A(I,J)*2.5
        B(I,J)=B(I,J)*2.5
        CA(I,J)=CA(I,J)*2.5
        CB(I,J)=CB(I,J)*2.5
10    CONTINUE
      N10=N10-1

      DO 20 J=3,5
      DO 20 I=1,10
        A(I,J)=A(I,J)*2.5
        B(I,J)=B(I,J)*2.5
        CA(I,J)=CA(I,J)*12.5
        CB(I,J)=CB(I,J)*12.5
20    CONTINUE
      WRITE(6,*) A,N10,B,CA,CB

      DO 30 J=N6,N7
      DO 30 I=1,10,2
        A(I,J+1)=A(I,J+1)
        B(I,J+1)=B(I,J+1)
        CA(I,J+1)=CA(I,J+1)
        CB(I,J+1)=CB(I,J+1)
30    CONTINUE

      DO 40 J=N8,N10
      DO 40 I=1,10
        A(I+1,J)=A(I+1,7)
        B(I+1,J)=B(I+1,7)
        CA(I+1,J)=CA(I+1,7)
        CB(I+1,J)=CB(I+1,7)
40    CONTINUE
      WRITE(6,*) A,B,N10

      STOP
      END
