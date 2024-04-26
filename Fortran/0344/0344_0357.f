      PROGRAM MAIN
      REAL * 4 A(10),B(10),C(10),D(10)
      INTEGER * 4 L(10)
      DATA L/1,2,3,4,5,6,7,8,9,10/
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA D/1,2,3,4,5,6,7,8,9,10/
      DATA N/10/
C
      DO 1 I=1,N
        D(I)=D(I)+C(I)
1       A(L(I))=B(L(I))+C(L(I))
C
      
      WRITE(6,99) D,A
99    FORMAT(4F10.4)
      STOP
      END
