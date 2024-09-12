      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      REAL*4 AA(400),BB(400),CC(400)
      EQUIVALENCE (A(1,1),AA(1)),(B(1,1),BB(1)),(C(1,1),CC(1))
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      CALL INIT(A,400,B,400,C,400)

      DO 10 J=1,10
       K=K+1
       DO 10 I=1,N
        B(I,J)=A(I,K)
  10   CONTINUE

      DO 20 J=1,10
       DO 21 I=1,N
        C(I,L)=B(I,K)+1.
  21   CONTINUE
       L=L+1
  20   CONTINUE

      L=3

      DO 30 J=2,20,2
       DO 31 I=1,N
        C(I,L)=B(I,K)+3.
  31   CONTINUE
       L=L+1
       I=I-1
  32   S=A(I,J)
  30   CONTINUE

      WRITE(6,*) A,B,C,S
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
