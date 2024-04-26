      REAL A(10)/10*1/,B(2049),C(10,10)/100*3/

      DO 1 I=2,9
1     A(I)=0

      DO 2 J=2,9
      DO 2 I=2,9
2     C(I,J)=1

      DO 3 J=2,9
      C(1,J+1)=J
      DO 3 I=2,8
3     C(I,J)=C(I,J)+1

      DO 4 I=1,2049
4     B(I)=1.5

      DO 5 J=2,9
      DO 5 I=4,8
5     B(I)=A(I)+C(I,J)
      WRITE(6,*) A,B(1),B(2048),B(2049),C(1,1),C(5,5),C(10,10)
      STOP
      END
