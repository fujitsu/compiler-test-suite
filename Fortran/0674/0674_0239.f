      PROGRAM MAIN
      REAL*4  A(20,11),B(20,11)
      DATA  A/220*1.5/,B/220*2.5/
      CALL SUB1(A,11,B,11)
      CALL SUB1(A,15,B,10)

      WRITE(6,*) A,B
      STOP
      END
      SUBROUTINE SUB1(A,N,B,M)
      REAL*4 A(N,11),B(N,11)
      DO 10 I=1,N
        B(I,4)=A(I,3)+2.5
10    CONTINUE
      DO 11 I=1,M
        A(I,3)=B(I,4)+1.5
11    CONTINUE
      DO 20 J=1,10
      DO 21 I=1,N
        B(I,J)=A(I,J)+1.0
21    CONTINUE
      DO 20 I=1,N
        A(I,J)=B(I,J)+2.0
20    CONTINUE
      DO 30 J=1,M
      DO 31 I=1,N
        B(I,J)=A(I,J)+B(I,J)
31    CONTINUE
      DO 30 I=1,N
        A(I,J)=A(I,J)+B(I,J)
30    CONTINUE
      RETURN
      END
