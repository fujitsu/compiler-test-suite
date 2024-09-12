      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/
       DO 1  I=1,20
        A(I,11)=I
  1    CONTINUE
      DO 10 J=5,M-5
       DO 10 I=5,N-5
        A(I,J)=B(I,J)*A(I-1,J+2)
  10   CONTINUE
      DO 20 J=5,M-5
       DO 20 I=5,N-5
        C(I,J)=B(I,J)*C(I+1,13)
  20   CONTINUE

      WRITE(6,*) A,C
      STOP
      END
