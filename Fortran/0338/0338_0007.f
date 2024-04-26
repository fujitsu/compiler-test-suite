      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*1/

      DO 1 J=1,10
      DO 1 I=1,10
1     A(I,J)=A(I,J)+B(I,J)
      DO 2 J=1,10
      DO 2 I=2,10
2     C(I,J)=A(I,J)+B(I,J)

      DO 3 K=1,10
      DO 3 J=1,10
      DO 3 I=1,10
3     B(I,J)=B(I,J)+1
      WRITE(6,*) A(1,1),B(1,1),C(2,1)
      STOP
      END
