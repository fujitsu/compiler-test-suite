       REAL A(50),B(50),C(50),D(50)
       REAL X(50),Y(50),Z(50),V(50)
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
       N=50
       M=10
       CALL SUB(A,B,C,D,X,Y,Z,V,N,M)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,D,X,Y,Z,V,N,M)
       REAL A(N),B(N),C(N),D(N)
       REAL X(N),Y(N),Z(N),V(N)

       S=0
       SX=0.0
       SS=0.0
       DO 3 J=2,M
       X(J)=X(J-1)+Y(J)
       Y(J)=Y(J-1)-Z(J)
       Z(J)=Z(J-1)+D(J)
       SX=SX+D(J)
       SS=SS+Z(J)
       DO 1 I=J,N-1
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
 1     CONTINUE
 3     CONTINUE
       PRINT *,S,SX,SS
       RETURN
       END
