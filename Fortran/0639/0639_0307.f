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
       S1 = 0.0
       S2 = 0.0
       IF(N.GT.200) GO TO 111
       DO 2 I=2,N
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S1=S1+C(I)
 2     CONTINUE
 111   CONTINUE
       IF(N.GT.300) GO TO 222
       DO 3 I=2,N-10
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        D(I)=A(I-1)+B(I)
        S2=S2+C(I)
 3     CONTINUE
 222   CONTINUE
       PRINT *,S1,S2
       RETURN
       END
