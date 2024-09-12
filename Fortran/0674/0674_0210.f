      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/
      DO 11 J=1,2
       DO 10 I=1,10
        A(I,J)=B(I,J)
  10   CONTINUE

       DO  9 I=1,10,2
        A(I,J)=B(I,J)
   9   CONTINUE
1110   CONTINUE
  11   CONTINUE

      DO 21 J=3,4

       DO 19 I=1,10,2
        A(I,J)=B(I,J)
  19   CONTINUE
       DO 20 I=1,10
        A(I,J)=B(I,J)+9
  20   CONTINUE
  21   CONTINUE
  22   CONTINUE

      DO 31 J=5,6

       DO 29 I=1,10,2
        A(I,J)=B(I,J)
  29   CONTINUE
       DO 30 I=1,10
        A(I,J)=B(I,J)+4
  30   CONTINUE

       DO 34 I=1,15,3
        A(I,J)=B(I,J)
  34   CONTINUE
  31   CONTINUE
  32   CONTINUE
  33   CONTINUE
      DO 41 J=7,9
       DO 50 I=1,10
        A(I,J)=B(I,J)+6
  50   CONTINUE

       DO 44 I=1,15,3
        A(I,J)=B(I,J)
  44   CONTINUE
       DO 40 I=1,10,2
        A(I,J)=B(I,J)+7
  40   CONTINUE
  41   CONTINUE
  42   CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END
