
       REAL A(40),B(40),C(40),D(40),Z(40)
       DATA A/10*-4.0,10*3.0,10*-2.0,10*1.0/
       DATA B/10*9.0,10*-7.0,10*5.0,10*3.0/
       DATA C/10*-8.0,10*6.0,10*4.0,10*-2.0/

       DO 1 I=1,40
        A(I)=A(I)+2.0D0
 1     CONTINUE
       DO 2 I=2,40
        C(I)=A(I)-I
 2     CONTINUE
       DO 3 I=1,40
        D(I)=B(I)/C(I)
 3     CONTINUE
       DO 4 I=3,40
        Z(I)=B(I)/D(I)
 4     CONTINUE
       PRINT *,D
       END
