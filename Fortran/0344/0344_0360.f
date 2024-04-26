      PROGRAM MAIN
      REAL * 4 A(10,10),B(10,10),C(10,10)
      DATA N,M/9,1/
C
       DO 9 I=1,10
       DO 9 J=1,10,1
         A(I,J)=I
         B(I,J)=I
 9       C(I,J)=I
C
      DO 1 J=1,N,1
      DO 1 I=1,N,M
1       A(J,I)=B(J,1+I)+C(J,I+M-1)
C
      
      WRITE(6,99) A
99    FORMAT(4F10.4)
      STOP
      END
