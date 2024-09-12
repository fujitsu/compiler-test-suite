      PROGRAM MAIN
      REAL*4  A(20,21),B(20,21),C(20,21)
      DATA  M/20/,N/20/
      DATA A/420*0.5/,B/420*1/,C/420*2/

      DO 10 I=1,M-1,2
       DO 10 J=1,N
        B(I,J)=C(I,J)+2.
        A(I,J)=B(I,J)*A(I,J+1)
  10   CONTINUE

      WRITE(6,*) A
      STOP
      END
