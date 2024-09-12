      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/,K/5/,L/2/
      DATA A/400*3/,B/400*1/,C/400*5/
      DO 10 J=1,10
       DO 10 I=1,N
        B(I,N-10+J)=C(I,J)+2.
        A(I,J)=B(I,J+L)*A(I,J+1)
  10   CONTINUE
      DO 20 J=10,N-5
       DO 20 I=2,N-1,2
        B(I,N-19+J)=C(I,J)+2.
        A(I,J)=B(I+1,J+L)*A(I-1,J+L)
  20   CONTINUE

      WRITE(6,*) A,B
      STOP
      END
