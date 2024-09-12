      REAL*8 A(1000,10),B(1000,10),C(1000,10)
      DO 10 J=1,10
      DO 10 I=1,1000
        A(I,J)=I
        B(I,J)=I+1.2
10      C(I,J)=J

      DO 1 I=1,100
1       A(I,1)=B(I,1)-C(I,1)
      DO 2 I=1,100
        B(I,2)=A(I,1)*2.0
2       B(I+51,3)=B(I,2)*2.0

      DO 100 J=3,10,2
      DO 100 I=100,1000,2
        A(I,J)=B(I,J)*3.5
 100    C(I,J)=A(I,J+1)*4.0

      DO 200 J=5,10,3
      DO 201 I=200,300
 201    B(I,J)=A(I,J+1)*4.0
      DO 200 I=400,500
 200    B(I,J)=A(I,J+1)*5.0
      WRITE(6,11) a
      WRITE(6,11) b
      WRITE(6,11) c
 11   format(5f15.7)
      STOP
      END
