      PROGRAM MAIN
      REAL*4  A(2011,10),B(2011,10)
      DATA  A/20110*1.5/,B/20110*2.5/
      CALL SUB1(A,10,B,11)
      CALL SUB2(A,2001,B,1985)

      WRITE(6,*) A,B
      STOP
      END
      SUBROUTINE SUB1(A,N,B,M)
      REAL*4 A(N,10),B(M,10)
      DO 11 I=1,N
        A(I,3)=B(I,4)+2.5
11    CONTINUE
      B(5,5)=A(5,5)+3.0
      DO 22 J=4,10
      DO 22 I=1,N
        B(I,J)=A(I,J)+5.0
22    CONTINUE
      B(5,5)=A(5,5)+3.0
      DO 33 J=1,M-1
      DO 33 I=1,N
        A(I,J)=B(I,J)+A(I,J)
33    CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(A,N,B,M)
      REAL*4 A(N,10),B(M,10)
      DO 10 I=1,M
        A(I,3)=B(I,4)+2.5
10    CONTINUE
      B(5,3)=A(5,4)+3.0
      DO 20 J=3,9
      DO 20 I=1,M
        B(I,J)=A(I,J)+5.0
        A(I,J)=B(I,J)+2.0
20    CONTINUE
      B(5,5)=A(5,5)+3.0
      DO 30 J=1,10
      DO 30 I=1,M
        A(I,J)=B(I,J)+A(I,J)
        A(I,J)=B(I,J)+A(I,J)+2.0
30    CONTINUE
      B(6,6)=A(6,6)+5.0
      RETURN
      END
