      DIMENSION A(20),B(20),C(20),D(20,20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/,D/400*0.5/
      DATA N/20/
      INTEGER*4 L(20)/0,2,3,20,0,6,7,8,9,10,11,1,13,0,15,2,17,0,19,20/

      DO 10 J=1,N
      DO 11 I=1,J
        A(I)=B(I)+C(I)+D(I,J)
  11  CONTINUE

      DO 10 I=1,J
        A(I)=B(I)+C(I)+D(I,J)
  10  CONTINUE

      S1=5.
      A(2)=2.
      DO 20 J=1,N
      DS=D(5,J)
      DO 21 I=1,L(J)
        A(I) = A(I)+B(1)+C(I)+DS
  21  CONTINUE

      DO 20 I=1,L(J)
        A(I) = A(I)+B(1)+C(I)+DS
  20  CONTINUE
      A(3)=DS
      C(1)=B(1)+DS

      S1=5.
      A(2)=2.
      DO 30 J=1,N
      D(4,J)=A(2)

      DO 31 I=1,L(J)
        B(I) = B(I)+A(1)+A(I)+S1
  31  CONTINUE
      DO 30 I=1,L(J)
        B(I) = B(I)+A(1)+A(I)+S1
  30  CONTINUE
      B(3)=1.
      A(1)=A(1)+S1

      S1=5.
      A(2)=2.
      DO 40 J=1,N
      C(J)=A(2)+D(J,3)
      DO 41 I=1,L(J)
        C(I) = C(I)+A(1)+A(I)+S1+B(I)
  41  CONTINUE

      DO 40 I=1,L(J)
        C(I) = C(I)+A(1)+A(I)+S1
  40  CONTINUE
      C(3)=1.
      AS=0.
      C(1)=A(1)+S1

      DO 50 J=1,N
      DO 51 I=1,N
        DS=DS+D(I,J)
  51  CONTINUE
      AS=AS+A(J)
      DO 50 I=1,N
        DS=DS+D(I,J)
  50  CONTINUE

      WRITE(6,*) A,B,C,DS,AS
      STOP
      END
