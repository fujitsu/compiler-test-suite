       REAL A(100),B(100),C(100)
       REAL D(100),E(100)
       N=100
       DO 1 I=1,100
        A(I)=I
        B(I)=A(I)+I
        C(I)=B(I)+I
        E(I)=B(I)-I
        D(I)=C(I)-B(I)-I
 1     CONTINUE
       CALL SUB(A,B,C,D,E,N)
       PRINT *,C,D
       END
       SUBROUTINE SUB(A,B,C,D,E,N)
       REAL A(N),B(N),C(N),D(N),E(N)

       S0 = 0
       S1 = 0
       S2 = 0
       S4 = 0
       S5 = 0
       DO 4 I=2,20
        A(I)=B(I)-D(I)
        B(I)=D(I)-C(I)
        S1=S1+D(I)
 4     CONTINUE
       DO 3 I=2,N-3
        A(I)=A(I-1)+B(I)
        D(I)=D(I-1)+C(I)
        S2=S2+C(I)
        S4=S4+B(I)
 3     CONTINUE
       DO 12 I=2,N-1
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)-C(I)
        C(I)=C(I-1)+D(I)
        D(I)=D(I-1)-E(I)
        S0=S0+B(I)
        S5=S5+E(I)
 12    CONTINUE
       PRINT *,S1,S2,S0
       RETURN
       END
