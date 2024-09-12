      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      DATA I1/1/,I2/2/,I3/3/,I4/4/,I5/5/,I6/6/,I7/7/,I8/8/,I9/9/,IA/10/
      CALL INIT(A,400,B,400,C,400)
      DO 10 J=1,I1
       DO 10 I=1,N
        A(I,J)=A(I,J)+2.
  10   CONTINUE
      DO 11 J=1,I2
       DO 11 I=1,N
        A(I,J)=A(I,J)+2.
  11   CONTINUE
      DO 13 J=1,I3
       DO 13 I=1,N
        A(I,J)=A(I,J)+2.
  13   CONTINUE
      DO 14 J=1,I4
       DO 14 I=1,N
        A(I,J)=A(I,J)+2.
  14   CONTINUE
      DO 15 J=1,I5
       DO 15 I=1,N
        A(I,J)=A(I,J)+2.
  15   CONTINUE
      DO 16 J=1,I6
       DO 16 I=1,N
        A(I,J)=A(I,J)+2.
  16   CONTINUE
      DO 17 J=1,I7
       DO 17 I=1,N
        A(I,J)=A(I,J)+2.
  17   CONTINUE
      DO 18 J=1,I8
       DO 18 I=1,N
        A(I,J)=A(I,J)+2.
  18   CONTINUE
      DO 19 J=1,I9
       DO 19 I=1,N,2
        A(I,J)=A(I,J)+2.
  19   CONTINUE
      DO 20 J=1,IA
       DO 20 I=1,N
        A(I,J)=A(I,J)+2.
  20   CONTINUE
      WRITE(6,*) A
      STOP
      END
      SUBROUTINE INIT(A,N1,B,N2,C,N3)
      REAL*4 A(N1),B(N2),C(N3)
      DO 10 I=1,N1
10    A(I)=FLOAT(I)
      DO 20 I=1,N2
20    B(I)=FLOAT(I/10)
      DO 30 I=1,N3
30    C(I)=FLOAT(I*10)
      RETURN
      END
