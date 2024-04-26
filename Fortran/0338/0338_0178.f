      REAL A(10)/10*1/,B(10)/10*2/
      COMMON C(4096),D(4096)
      COMMON /BLK/N

      DO 1 I=1,10
1     A(I)=B(I)
      DO 3 I=1,4096
3     D(I)=C(I)+C(1)+C(4096)
      WRITE(6,*) A,C(1),D(1),D(4096)
      CALL SUB(A,B,C,D,5,2048)
      WRITE(6,*) A,C(1),D(1),D(4096)
      DO 2 I=3,N
2     C(I)=C(I-2)+SQRT(D(I))
      STOP
      END

      SUBROUTINE SUB(A,B,C,D,N1,N2)
      REAL A(2,N1),B(N1,2),C(2,N1),D(N2,N1)
      COMMON /BLK/N
      N=10
      DO 1 I=1,N1
1     C(1,I)=A(2,I)+B(I,2)
      DO 2 I=2,N2-1
2     D(I,2)=D(I+1,1)+C(1,1)
      RETURN
      END
