      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      CALL INIT(A,400,B,400,C,400)

      DO 10 J=1,2
       DO 10 I=1,N
        B(I,J)=1.
  10   CONTINUE
      DO 11 J=3,6
       DO 11 I=1,N
        B(I,J)=2.
  11   CONTINUE
      DO 12 J=7,12
       DO 12 I=1,N
        B(I,J)=3.
  12   CONTINUE
      DO 13 J=13,20
       DO 13 I=1,N
        B(I,J)=4.
  13   CONTINUE
      DO 14 J=1,20
       DO 14 I=1,N,2
        B(I,J)=5.
  14   CONTINUE

      WRITE(6,*) B
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
