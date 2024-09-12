       REAL A(50),B(50),C(50),D(50)
       REAL X(50),Y(50),Z(50),V(50)
       N=50
       DO 1 I=1,50
        A(I)=I
        B(I)=A(I)+I
        X(I)=A(I)+I
        C(I)=B(I)+I
        D(I)=B(I)-I
        X(I)=C(I)-D(I)
        Y(I)=A(I)+X(I)
        X(I)=C(I)-D(I)
        V(I)=Y(I)+A(I)
        Z(I)=Y(I)+X(I)
 1     CONTINUE
       M=10
       CALL SUB(A,B,C,D,X,Y,Z,V,N,M,4)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,D,X,Y,Z,V,N,M,L)
       REAL A(N),B(N),C(N),D(N)
       REAL X(N),Y(N),Z(N),V(N)

       S = 0
       SX = 0
       S2 = 0
       DO 3 J=L,M
       DO 1 I=J,N-1
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
 1     CONTINUE
       X(J)=X(J-1)+Y(J)
       Y(J)=Y(J-1)-Z(J)
       SX=SX+Z(J)
       DO 2 I=J,N
        A(I)=A(I-1)-B(I)
        B(I)=B(I-1)+C(I)
        C(I)=C(I-1)-D(I)
        D(I)=D(I-1)+I
        S2=S2+B(I)
 2     CONTINUE
 3     CONTINUE
       PRINT *,S,S2,SX
       RETURN
       END
