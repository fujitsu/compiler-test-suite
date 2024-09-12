      PROGRAM MAIN
      REAL*4  A(10,10)/100*1/
      REAL*8 B(20,11)/220*1.5/
      CALL SUB(A,B)

      STOP
      END
      SUBROUTINE SUB(A,B)
      REAL*4  A(10,10)
      REAL*8 B(20,11)
      DATA N1/1/,N2/2/,N3/3/,N4/4/,N9/9/,N10/10/
      DO 1 J=N1,N2
      DO 1 I=2,9
1       A(I,J)=A(I,J)+1.2

      DO 2 J=1,N3
      DO 2 I=1,N10
2      A(I,J)=A(I,J+1)+1.5

      DO 3 J=1,N4
      DO 3 I=1,N10,2
3       A(I,J)=B(I,J)+B(I,J+1)

      DO 4 J=N9,10
      DO 4 I=N2,N9
4       A(I,J)=A(I,J)+A(I,J)

      DO 5 J=N2,N4-N2
      DO 5 I=N4,N4+N2
5     B(I,J)=A(I,J*2)+B(I,J+1)+A(I,J*2+1)

      WRITE(6,*) A,B
      RETURN
      END
