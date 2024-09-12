      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      DATA I1/1/,I2/2/,I3/3/,I4/4/,I5/5/,I6/6/,I7/7/,I8/8/,I9/9/,IA/10/
      INTEGER*4 ID(10)/2,4,6,8,10,12,14,16,18,20/
      CALL INIT(A,400,B,400,C,400)
       IS=1
      DO 10 J=1,IS
       DO 10 I=1,IS
        A(I,J)=A(I,J)+2.
  10   CONTINUE
       IS=2
1111   IP=2
      DO 11 J=1,IP
       DO 11 I=1,IS
        A(I,J)=A(I,J)+2.
  11   CONTINUE

      DO 13 J=1,IS
       DO 13 I=1,IP
        A(I,J)=A(I,J)+2.
  13   CONTINUE

      DO 14 J=1,IS,1
       DO 14 I=1,IP
        A(I,J)=A(I,J)+2.
  14   CONTINUE
      WRITE(6,*) A

      DO 15 J=1,ID(1)
       DO 15 I=1,ID(1)
        A(I,J)=A(I,J)+2.
  15   CONTINUE

      DO 16 J=1,ID(2)
       DO 16 I=1,ID(3)
        A(I,J)=A(I,J)+3.
  16   CONTINUE
      WRITE(6,*) A

      IS=2
      DO 17 J=1,ID(3)
       DO 17 I=1,ID(4),ID(1)
        A(I,J)=A(I,J)+4.
  17   CONTINUE
      WRITE(6,*) A

      DO 18 J=1,ID(ID(1))
       DO 18 I=1,ID(IS)
        A(I,J)=A(I,J)+5.
  18   CONTINUE
      WRITE(6,*) A

      DO 19 J=ID(1),ID(2),ID(3)
       DO 19 I=ID(1),ID(2),ID(3)
        A(I,J)=A(I,J)+6.
  19   CONTINUE
      WRITE(6,*) A

      DO 20 J=1,ID(10)
       DO 20 I=1,ID(10)
        A(I,J)=A(I,J)+ID(10)
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
