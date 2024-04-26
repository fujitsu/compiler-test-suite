      REAL A(20),B(20),C(20)
      DATA A,B,C/20*1.,20*2.,20*3./
      DO 10 I=3,20,1
        C(I)=A(I)+B(I)
        B(I)=A(I)+C(I)
        A(I)=A(I-2)+B(I)
   10 CONTINUE
      WRITE(6,1) A,B,C
 1    FORMAT(5F10.5)
      STOP
      END
