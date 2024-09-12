       REAL A(1024,2),B(1024,2),C(1024,2)
       REAL X(1024,2),Y(1024,2),Z(1024,2)
       LOGICAL LG(1024,2)
       DO 1 N=1,2
       J=1
       DO 1 I=1,1024
         A(I,N)=I
         B(I,N)=-I
         C(I,N)=I+2.0
         X(I,N)=I+4.0
         Y(I,N)=-4.0+I/10
         Z(I,N)=-2.0+I/5
         IF(I.GT.512) GO TO 1
         LG(J,N)=.FALSE.
         LG(J+1,N)=.TRUE.
         J=J+2
 1     CONTINUE
       N=1024
       K=2
       CALL SUB1(A,B,C,X,Y,Z,LG,N,K)
       PRINT *,LG,A,B,C,X,Y,Z
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N,K)
       REAL A(N,K),B(N,K),C(N,K)
       REAL X(N,K),Y(N,K),Z(N,K)
       LOGICAL LG(N,K)
       NL=N-1
       IL=1
         DO 10 J=1,K
         DO 1 I=2,NL
           A(I,K)=-I
           IF(LG(I,K)) A(I,K)=-1.0D0
 1       CONTINUE
         DO 2 I=2,NL
           B(I,K)=A(I-1,K)
 2       CONTINUE
         DO 3 I=2,NL
           C(I,K)=B(I+1,K)
           Z(I,K)=Y(I,K)
 3       CONTINUE
         MM=N-2
         DO 4 I=2,NL
           IF(LG(I,K)) Y(I-1,K)=-C(I-1,K)
           X(I,K)=-I +1.0D0+Z(I-1,K)
 4       CONTINUE
 10      CONTINUE
       RETURN
       END
