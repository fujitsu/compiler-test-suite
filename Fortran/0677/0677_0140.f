      REAL*8 A(100),B(100)
      DO 10 I=1,100
      A(I)=1
      B(I)=1
10    CONTINUE
      CALL SUB(A,B)
      WRITE(6,*) A,B
      STOP
      END
      SUBROUTINE SUB(A,B)
      REAL*8    A(100),B(100)
      DO 100 I=2,100
      A(1)=B(I)+A(I)+1
      A(2)=B(I)+A(I)
100   CONTINUE
      RETURN
      END
