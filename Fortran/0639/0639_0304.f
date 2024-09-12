       REAL A(100),B(100),C(100)
       REAL D(100)
       N=100
       DO 1 I=1,100
        A(I)=I
        B(I)=A(I)+I
        C(I)=B(I)+I
        D(I)=C(I)-B(I)-I
 1     CONTINUE
       CALL SUB(A,B,C,D,N)
       PRINT *,C,D
       END
       SUBROUTINE SUB(A,B,C,D,N)
       REAL A(N),B(N),C(N),D(N)

       S0 = 0
       S1 = 0
       S2 = 0
       DO 4 I=2,N-3
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)-C(I)
        C(I)=C(I-1)+D(I)
        S1=S1+D(I)
 4     CONTINUE
       DO 3 I=2,N
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+D(I)
        D(I)=D(I-1)+C(I)
        S2=S2+C(I)
 3     CONTINUE
       DO 12 I=2,N-1
        A(I)=A(I-1)+B(I)
        S0=S0+B(I)
 12    CONTINUE
       PRINT *,S1,S2,S0
       RETURN
       END
