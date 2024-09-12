       REAL A(100),B(100),C(100)
       N=100
       DO 1 I=1,100
        A(I)=I
        B(I)=A(I)+I
        C(I)=B(I)+I
 1     CONTINUE
       CALL SUB(A,B,C,N)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,N)
       REAL A(N),B(N),C(N)

       S=0
       DO 1 I=2,N
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
 1     CONTINUE
       PRINT *,S
       RETURN
       END
