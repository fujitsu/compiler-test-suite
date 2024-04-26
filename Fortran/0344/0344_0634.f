      REAL*4    A(10),B(10),C(10)
      DATA B/10*1.0/,C/10*2.0/
C
       J=1
      DO 10 I=1 ,10
        A(I)=B(I)+C(I)
        B(I)=A(J)-C(I)
        C(I)=B(J)+B(I)
        A(J)=B(I)+C(J)
  10  CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
C
      END
