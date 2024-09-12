       REAL A(100),B(100),C(100)
       N=100
       DO 1 I=1,100
        A(I)=I
        B(I)=A(I)+I
        C(I)=B(I)+I
 1     CONTINUE
       M=10
       CALL SUB(A,B,C,N,M)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,N,M)
       REAL A(N),B(N),C(N)

       S=0
       DO 2 J=2,M
       DO 1 I=J,N
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
 1     CONTINUE
 2     CONTINUE
       PRINT *,S
       RETURN
       END
