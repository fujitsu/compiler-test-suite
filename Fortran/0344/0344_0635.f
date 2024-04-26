      REAL*16 A(10),B(10)
      DATA A/10*1/
      DO 10 I=1,10
        B(I)=A(I)*2
 10   CONTINUE
      WRITE(6,1000) B
 1000 FORMAT(F20.10)
      STOP
      END
