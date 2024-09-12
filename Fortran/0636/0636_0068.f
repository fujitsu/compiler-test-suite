       REAL A(1024,2),B(1024,2),C(1024,2)
       REAL X(1024,2),Y(1024,2),Z(1024,2)
       LOGICAL LG(1024,2)
       DO 1 K=1,2
       J=1
       DO 1 I=1,1024
         A(I,K)=I
         B(I,K)=-I
         C(I,K)=I+2.0
         X(I,K)=I+4.0
         Y(I,K)=-4.0+I/10
         Z(I,K)=-2.0+I/5
         IF(I.GT.512) GO TO 1
         LG(J,K)=.FALSE.
         LG(J+1,K)=.TRUE.
         J=J+2
 1     CONTINUE
       N=1024
       L=2
       CALL SUB1(A,B,C,X,Y,Z,LG,N,L)
       PRINT *,LG,A,B,C,X,Y,Z
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N,L)
       REAL A(N,L),B(N,L),C(N,L)
       REAL X(N,L),Y(N,L),Z(N,L)
       LOGICAL LG(N,L)
       DATA MM/1/
         N1=N-1
         N2=N-2
         N3=N-3
         I1=1
         DO 10 K=1,L
         DO 1 I=2,N1
           IF(.NOT.LG(I,K)) A(I,K)=-1.0D0
 1       CONTINUE
         DO 2 I=2,N2
           B(I,MM)=-I-1+1.0D0
 2       CONTINUE
         DO 3 I=2,N3
           C(I,K)=-I
 3       CONTINUE
         MM=N-1022
         DO 4 I=2,N2
           IF(LG(I,K)) X(I,MM)=-B(I-1,MM)
 4       CONTINUE
         DO 5 I=2,N3
           IF(.NOT.LG(I,K)) Y(I,K)=C(I-1,K)
 5       CONTINUE
         DO 6 I=2,N1
           Z(I,K)=A(I-1,K)
 6       CONTINUE
 10      CONTINUE
       RETURN
       END
