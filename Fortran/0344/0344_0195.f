      PROGRAM MAIN
      REAL * 4 A(20),B(20),C(20),X
C
      X=1
      DO 1 I=1,20
        A(I)=0.
        B(I)=X
        C(I)=X+1.
1       X=X+1
C
      DO 10 J=1,20
        DO 11 I1=1,J
11        A(I1)=B(I1)+C(I1)
        DO 12 I2=J,1
          B(I2)=A(I2)*I2
12      CONTINUE
10    CONTINUE
C
      WRITE(6,*) A,B
      STOP
      END

