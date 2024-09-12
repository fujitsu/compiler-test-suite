      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/

      DO 10 I=1,20
       DO 10 J=1,N
        A(I,J)=B(I,J)*C(I,J)
  10   CONTINUE

      WRITE(6,*) A
      STOP
      END
