      PROGRAM MAIN
      REAL*4 A(100)/100*1/,B(100)/100*1/
      REAL*4 A1(100),B1(100)
      INTEGER*4 L/1/
      CALL SUB(A,B,A1,B1,L,100)
      STOP
      END
      SUBROUTINE SUB(A,B,C,D,L,M)
      REAL*4 A(M),B(M),C(M),D(M)

      DO 10 I=1,M
10      C(I)=FLOAT(I)

      DO 11 I=1,M  ,2
11      B(I)=FLOAT(I+1)

      DO 12 I=1,M  ,3
12      A(I)=FLOAT(I+2)
      IF(L.EQ.0) WRITE(6,*) 'NG'
      DO 13 I=1,M
13      D(I)=A(I)+B(I)+C(I)
      WRITE(6,*) D
      RETURN
      END
