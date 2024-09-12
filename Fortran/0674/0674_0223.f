      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      REAL*4 AA(400),BB(400),CC(400)
      EQUIVALENCE (A(1,1),AA(1)),(B(1,1),BB(1)),(C(1,1),CC(1))
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      CALL INIT(A,400,B,400,C,400)
      DO 10 J=1,2
       DO 10 I=1,N
        B(I,J)=A(1,J)
  10   CONTINUE
      DO 20 J=3,4
       DO 21 I=1,N
        B(I,J)=A(1,J)+1.
  21   CONTINUE
       DO 20 I=1,N,2
        C(I,J)=A(2,J)+2.
  20   CONTINUE

      DO 30 J=5,6
       DO 31 I=1,N
        B(I,J)=A(1,J)+1.
  31   CONTINUE
       DO 32 I=1,N,2
        C(I,J)=A(1,J)+2.
  32   CONTINUE
       DO 30 I=1,N,3
        A(3,I)=A(2,J)+3.
  30   CONTINUE
      DO 110 J=7,8
       C(1,J)=0.9
       DO 110 I=1,N
        B(I,J)=A(1,J)
 110   CONTINUE
      DO 120 J=9,10
       DO 121 I=1,N
        B(I,J)=A(1,J)+1.
 121   CONTINUE
       C(2,J)=1.9
       DO 120 I=3,N,2
        C(I,J)=A(2,J)+2.
 120   CONTINUE

      DO 130 J=11,12
       DO 131 I=1,N
        B(I,J)=A(1,J)+1.
 131   CONTINUE
       C(3,J)=2.9
       DO 132 I=5,N,2
        C(I,J)=A(1,J)+2.
 132   CONTINUE
        C(4,J)=3.9
       DO 130 I=1,N,3
        A(3,I)=A(2,J)+3.
 130   CONTINUE

      WRITE(6,*) A,B,C
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
