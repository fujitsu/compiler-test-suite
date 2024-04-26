      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*3/

      DO 1 J=1,2
      DO 1 I=1,10
1      A(I,J)=B(I,J)+C(I,J)

      DO 2 J=1,2
       A(1,J+2)=J
      DO 2 I=1,10
2      A(I,J)=A(I,J)+C(I,J)

      DO 4 J=5,7
      DO 3 I=1,10
3      A(I,J)=A(I,J+1)
      DO 4 I=1,10
 4     B(I,J)=B(I,J+1)
      SA=0
      SB=0
      DO 5 J=1,10
      DO 5 I=1,10
       SA=SA+A(I,J)
5      SB=SB+B(I,J)
       WRITE(6,*) SA,SB
      STOP
      END
