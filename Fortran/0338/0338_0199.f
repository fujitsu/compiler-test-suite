      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*3/

      DO 1 J=1,2
      DO 1 I=1,10
1      A(I,J)=B(I,J)+C(I,J)

      DO 2 J=1,2
       A(1,J)=J
       B(1,J)=J+1
       C(1,J)=J+2
      DO 2 I=1,10
       C(I,J)=A(I,J)+C(I,J)
       B(I,J)=A(I,J)+C(I,J)
2      A(I,J)=A(I,J)+C(I,J)

      DO 3 J=5,7
      DO 3 I=1,10
       A(I,J)=A(I,J+1)
       A(I,J+1)=A(I,J+2)+C(I,J)
       A(I,J+2)=A(I,J+3)+C(I,J)
       B(I,J)=B(I,J+1)
       B(I,J+1)=B(I,J+2)+C(I,J)
3      B(I,J+2)=B(I,J+3)+C(I,J)
      SA=0
      SB=0
      DO 4 J=1,10
      DO 4 I=1,10
       SA=SA+A(I,J)
4      SB=SB+B(I,J)
       WRITE(6,*) SA,SB
      STOP
      END
