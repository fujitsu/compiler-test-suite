
       REAL A(40),B(40),C(40),D(40),Z(40)
       DATA A/10*1.0,10*3.0,10*5.0,10*-7.0/
       DATA B/10*-9.0,10*7.0,10*5.0,10*3.0/
       DATA C/10*2.0,10*-4.0,10*6.0,10*8.0/
       DATA D/10*2.0,10*4.0,10*-6.0,10*8.0/
       Z(1)=77.77

       DO 1 I=1,40
        A(I)=I
 1     CONTINUE
       DO 2 I=2,40
        B(I)=-I
 2     CONTINUE
       DO 3 I=1,40
        D(I)=I-A(I)
 3     CONTINUE
       DO 4 I=2,40
        Z(I)=B(I)/2.0D0+D(I)
 4     CONTINUE
       PRINT *,Z,A,B,D
       END
