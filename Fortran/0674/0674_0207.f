      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/
      DO 20 J=1,20
       DO 10 I=1,10
        A(I,J)=B(I,J)
  10   CONTINUE
  20   CONTINUE

      DO 21 J=1,M
       DO 21 I=1,N,2
        C(I,J)=0.5
  21   CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END