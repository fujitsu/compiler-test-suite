      REAL A(10,10),B(10,10),C(10),D(10)
      DATA D/1,2,3,4,5,6,7,8,9,10/
      COMMON /COM/A,B,C,N1,N2,N3

      CALL SUB(N,M)

       DO 2 I=1,10
2        D(I+N1)=D(I+N2)+D(I+N3)

      DO 10 I=N,M
      DO 10 J=1,M
        A(I,J)=A(I,J)+B(I,J)+C(J)
   10 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
      SUBROUTINE SUB(N,M)
      REAL A(10,10),B(10,10),C(10)
      COMMON /COM/A,B,C,N1,N2,N3
      N1=0
      N2=0
      N3=0
      N=1
      M=10
      DO 1 I=1,10
      DO 1 J=1,10
        A(I,J)=I
        B(J,I)=J
        C(I)  =I
1     CONTINUE
      RETURN
      END
