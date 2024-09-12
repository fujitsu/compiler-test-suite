       REAL A(1024),B(1024),C(1024)
       REAL X(1024),Y(1024),Z(1024)
       LOGICAL LG(1024)
       J=1
       DO 1 I=1,1024
         A(I)=I
         B(I)=-I
         C(I)=I+2.0
         X(I)=I+4.0
         Y(I)=-4.0+I/10
         Z(I)=-2.0+I/5
         IF(I.GT.512) GO TO 1
         LG(J)=.FALSE.
         LG(J+1)=.TRUE.
         J=J+2
 1     CONTINUE
       N=1024
       CALL SUB1(A,B,C,X,Y,Z,LG,N)
       PRINT *,LG,A,B,C,X,Y,Z
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N)
       REAL A(N),B(N),C(N)
       REAL X(N),Y(N),Z(N)
       LOGICAL LG(N)
       NL=N-1
       MM=N-2
       IN=1
         DO 1 I=2,MM
           A(I)=-FLOAT(I)
           IF(LG(I)) A(I)=-1.0D0
 1       CONTINUE
         DO 2 I=2,NL
           B(I)=A(I-1)
 2       CONTINUE
         DO 3 I=2,NL
           C(I)=B(I-1)
 3       CONTINUE
         MM=N-2
         DO 4 I=2,MM
           IF(LG(IN)) X(I)=SIN(C(I-1))
           X(I)=-I +1.0D0
 4       CONTINUE
         DO 5 I=2,NL
           Y(I)=X(I)
 5       CONTINUE
         DO 6 I=2,MM
           Z(I)=Y(I-1)
 6       CONTINUE
       RETURN
       END
