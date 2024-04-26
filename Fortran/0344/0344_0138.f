      REAL A(20),B(20)
      DATA A,B/20*1.,20*2./
      DO 10 I=3,20,1
        A(I)=A(I-1)+B(I-1)
   10 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
