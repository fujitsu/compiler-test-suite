      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      REAL*4 AA(400),BB(400),CC(400),EI
      EQUIVALENCE (A(1,1),AA(1)),(B(1,1),BB(1)),(C(1,1),CC(1))
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      INTEGER*2 I2
      REAL*8 D(20)/20*2/,DI,DVAL/5/
      REAL*8  Q(20)/20*3/,QI
      CALL INIT(A,400,B,400,C,400)
      DO 10 J=10,1,-1
       DO 10 I=1,N,2
        B(I,J)=A(I,ABS(J))
  10   CONTINUE
      IP=1
      DO 1  J=1,5
       DO 2  I=1,5
        A(I,IP)=A(I,J)+1.
  2    CONTINUE
      IP=IP+1
  1    CONTINUE
      II=1
      DO 20 J=1,10
       DO 21 I=1,N
        C(I,II)=B(I,1)+1.
  21   CONTINUE
       II=1+II
  20   CONTINUE

      LL=18
      DO 30 J=1,20,2
       DO 31 I=1,N,2
        B(I,LL)=A(LL,I)
  31   CONTINUE
       LL=-1+LL
  30   CONTINUE

      LL=18
      DO 40 J=1,20,5
       DO 41 I=1,N,3
        C(I,LL)=B(LL,I)
  41   CONTINUE
       LL=20-LL
  40   CONTINUE

      WRITE(6,*) A,B,C,IP
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
