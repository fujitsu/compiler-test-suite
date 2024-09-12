       REAL A(50),B(50),C(50),D(50)
       REAL X(50),Y(50),Z(50),V(50)
       DATA A,B,C,D/50*1.0,50*2.0,50*3.0,50*4.0/
       DATA X,Y,Z,V/50*4.0,50*3.0,50*2.0,50*1.0/
       N=50
       M=10
       CALL SUB(A,B,C,D,X,Y,Z,V,N,M)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,D,X,Y,Z,V,N,M)
       REAL A(N),B(N),C(N),D(N)
       REAL X(N),Y(N),Z(N),V(N)
       S2=0.0
       S =0.0
       SX=0.0
       DO 3 J=2,M
       DO 1 I=J,N-1
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
        II=I+1
        C(II)=D(I)+A(II)
        V(I)=V(I-1)-Y(I)
        Z(II-J)=A(I+1)-C(I-1)
        SX=SX+Y(I)
        SV=A(II-J)-X(I)
        Z(I)=SV+C(II-J)-Z(I+1)
 1     CONTINUE
 3     CONTINUE
       PRINT *,Z,SX
       RETURN
       END
