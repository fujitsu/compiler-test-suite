      REAL A(10,10),B(10,10),C(10,10)
      DATA A,B,C/100*1.,100*2.,100*3./
      DO 20 I=1,10
      DO 10 J=1,10
        A(I,J)=2.
        B(I,J)=A(I,J)+I
        C(I,J)=A(I,J)+B(I,J)
10    CONTINUE
      DO 30 J=1,10
        A(J,I)=A(J,I)+B(J,I)+C(J,I)
   30 CONTINUE
   20 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
