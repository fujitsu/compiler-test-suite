      PROGRAM MAIN
      REAL * 4 A(10),B(10),C(10)
      DATA A/5,0,-1,0,-5,6,-7,1,-9,0/
      DATA B,C/10*1.,5*1.,5*2./
      DATA M/10/
C
      DO 100 I=1,M
        IF (A(I)-I)    10,20,30
10        C(I)=A(I)+B(I)+I
20        C(I)=A(I)-B(I)+I
30        C(I)=A(I)*B(I)+I
100   CONTINUE
C
      
      WRITE(6,99) C
99    FORMAT(4F10.4)
      STOP
      END
