      PROGRAM MAIN
      INTEGER A,B,C,D
      COMMON /COM1/A(10),B(10),C(10),D(10)
C
      DO 100 I=2,8
        A(I-1)=I-4
        A(I+2)=I
        DO 100 M=3,7
          D(M-2)=M
          B(M)=M
          B(M+3)=M-A(I)
          A(I)=D(M+0)+B(M)
          DO 100 J=5,10
            C(J)=C(J-4)-A(I)
            N=B(M)+A(I)+C(J)
            C(J)=B(J)+N
  100 CONTINUE
C
      
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
C
      BLOCK DATA
      INTEGER A,B,C,D
      COMMON /COM1/A(10),B(10),C(10),D(10)
      DATA A,B,C,D/40*1/
      END
