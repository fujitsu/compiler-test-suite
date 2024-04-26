      PROGRAM MAIN
      REAL * 4 A(10),B(10),C(10)
      DATA A/10,9,8,7,6,5,4,3,2,1/
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA N,M/9,1/
C
      DO 1 I=1,N
1       A(I)=B(1+I)+C(I+M-1)
C
      
      WRITE(6,99) A
99    FORMAT(4F10.4)
      STOP
      END
