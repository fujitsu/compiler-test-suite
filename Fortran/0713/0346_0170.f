        REAL*8 A(10),B(10),C(10)
        DATA A,B/10*1.1,10*2.2/
        J=0
        DO 10 I=1,10
          J=I*I+B(I)
          C(I)=J+A(I)+B(I)*I
10      CONTINUE
        PRINT *,C,J
        STOP
        END
