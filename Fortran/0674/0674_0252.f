      PROGRAM MAIN
      REAL*4  A(10,10)/100*1/
      REAL*8 B(20,11)/220*1.5/
      CALL SUB(A,B,10,20)

      STOP
      END
      SUBROUTINE SUB(A,B,N,M)
      REAL*4  A(N,10)
      REAL*8 B(M,11)
      DO 1 J=1,2
      DO 1 I=2,N-1
1       A(I,J)=A(I,J)+1.2

      DO 2 J=1,3
      DO 2 I=1,N
2      A(I,J)=A(I,J+1)+1.5

      DO 3 J=1,4
      DO 3 I=1,N,2
3       A(I,J)=B(I,J)+B(I,J+1)

      DO 4 J=9,10
      DO 4 I=2,9
4       A(I,J)=A(I,J)+A(I,J)

      DO 5 J=2,4
      DO 5 I=1,M-N
5     B(I,J)=A(I,J*2)+B(I,J+1)+A(I,J*2+1)

      WRITE(6,*) A,B
      RETURN
      END