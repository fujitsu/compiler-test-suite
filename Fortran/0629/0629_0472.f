      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/
      DO 41 J=7,9
       DO 50 I=1,10
        A(I,J)=B(I,J)+6
  50   CONTINUE
       DO 40 I=1,10,2
        A(I,J)=B(I,J)+7
  40   CONTINUE
  41   CONTINUE
  42   CONTINUE
       WRITE(6,*) A
      STOP
      END
