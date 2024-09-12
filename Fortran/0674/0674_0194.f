       REAL A(10),B(10),C(10),D(10)
       DATA A,B,C,D/40*0/
       DO 2 I=1,9
        B(I)=I
 2     CONTINUE
       DO 3 I=1,10
        C(I)=I
 3     CONTINUE
       DO 4 I=1,10
        D(I)=I
 4     CONTINUE
       DO 1 I=1,9
        A(I)=I
 1     CONTINUE
       PRINT *,A,B,C,D
       END
