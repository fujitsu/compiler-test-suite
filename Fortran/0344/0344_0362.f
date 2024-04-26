      PROGRAM MAIN
      REAL * 4 A(10,10),B(10,10),C(10,10)
      DATA M/8/
C
      DO 9 I=1,10
      DO 9 J=1,10
        A(I,J)=I
        B(I,J)=I
        C(I,J)=I
9     CONTINUE
C
      DO 1 J=1,M
      N=1
      DO 1 I=1,M
        A(I,J)=B(N,J)+C(N+1,J)
        N=N+1
1     CONTINUE
C
      
      WRITE(6,99) A
99    FORMAT(4F10.4)
      STOP
      END
