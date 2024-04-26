      PROGRAM MAIN
      REAL * 4 A(10),B(10),C(10)
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA N/10/
C
      DO 1 I=1,N
1       A(I)=B(I)+C(I)
C
      
      WRITE(6,99) A
99    FORMAT(4F10.4)
      STOP
      END
