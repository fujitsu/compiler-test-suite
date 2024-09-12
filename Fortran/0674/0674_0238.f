      PROGRAM MAIN
      REAL*4  A(2011,10),B(2011,10)
      DATA  A/20110*1.5/,B/20110*2.5/
      CALL SUB1(A,10,B,11)
      CALL SUB1(A,2001,B,2001)

      WRITE(6,*) A,B
      STOP
      END
      SUBROUTINE SUB1(A,N,B,M)
      REAL*4 A(N,10),B(M,10)
      DO 10 I=1,N
        A(I,3)=A(I,4)+2.5
10    CONTINUE
      DO 11 I=1,M
        B(I,3)=B(I,4)+1.5
11    CONTINUE
      DO 20 J=1,10
      DO 21 I=1,N
        B(I,J)=B(I,J)+1.0
21    CONTINUE
      DO 20 I=1,N
        A(I,J)=A(I,J)+2.0
20    CONTINUE
      DO 30 J=1,10
      DO 31 I=1,N
        B(I,J)=B(I,J)+B(I,J)
31    CONTINUE
      DO 30 I=1,N
        A(I,J)=A(I,J)+A(I,J)
30    CONTINUE
      RETURN
      END
