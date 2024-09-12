      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/
      DO 10 I=1,M
       DO 11 J=1,N,2
 11     A(I,J)=B(I,J)*C(I,J)*2.
       DO 10 J=1,N-1
        A(I,J+1)=B(I,J)*C(I,J)
  10   CONTINUE
      DO 20 I=1,10

       DO 20 J=1,N-2
  22    A(I,J)=B(I,J)*C(I,J)
  30    CONTINUE
  21    A(I,J+2)=5.0
  20   CONTINUE

      WRITE(6,*) A
      STOP
      END
