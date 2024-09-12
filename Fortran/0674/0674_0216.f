      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/
      INTEGER IL(20)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,4*1/
      LOGICAL*1 L1(20)/20*.FALSE./,L2(20)/20*.FALSE./
      CHARACTER*4 C1/'ABCD'/,C2
      DO 20 J=1,20
       DO 10 I=1,10
        A(I,J)=B(I,J)
  10   CONTINUE
       GOTO(1,2,3,20) IL(1)
   1   CONTINUE
   2   CONTINUE
   3   CONTINUE
       DO 5  I=11,20
        A(I,J)=0.5
   5   CONTINUE
  20   CONTINUE

      DO 22 J=1,M
       C2(1:4)=C1(1:4)
  22   CONTINUE

      DO 21 J=1,M
       L1(J)=L2(J)
  21   CONTINUE

      K=2
      K1=3
      DO 23 J=1,M,2
       C2(K:K1) = C1(K+1:K1+1)
  23   CONTINUE
      WRITE(6,*) A,B,C,L1,C1,C2
      STOP
      END
