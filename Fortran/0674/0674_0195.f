
       REAL A(40),B(40),C(40),D(40)
       DATA A/10*-1.0,10*2.0,10*-3.0,10*2.0/
       DATA B/10*4.0,10*-6.0,10*8.0,10*-4.0/
       DATA C/10*-5.0,10*7.0,10*-9.0,10*3.0/
       DATA D/10*1.0,10*-3.0,10*5.0,10*-1.0/
       A(1)=5.0
       D(2)=A(2)+C(1)

       DO 1 I=2,40
        A(I)=B(I)-C(I)
 1     CONTINUE
       DO 2 I=1,40
        D(I)=A(I)+C(I)
 2     CONTINUE
       DO 3 I=2,40
        D(I-1)=B(I)+C(I)
 3     CONTINUE
       PRINT *,D,A
       END