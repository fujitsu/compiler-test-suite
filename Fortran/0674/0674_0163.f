
       REAL A(50,2),B(50,2),C(50,2)
       REAL X(50,2),Y(50,2),Z(50,2)
       DO 1 J=1,2
       DO 1 I=1,50
         A(I,J)=I
         B(I,J)=-I
         C(I,J)=A(I,J)-B(I,J)
         X(I,J)=C(I,J)+A(I,J)
         Y(I,J)=-X(I,J)
         Z(I,J)=B(I,J)+C(I,J)
 1     CONTINUE
       N=50
       CALL SUB1(A,B,C,N)
       CALL SUB2(X,Y,Z,N)
       PRINT *,A,B,C,X,Y,Z
       END

       SUBROUTINE SUB1(A,B,C,N)
       REAL A(N,2),B(N,2),C(N,2)
       DO 10 J=1,2
         NN=50
         DO 1 I=1,NN
           A(I,1)=B(I,1)+C(I,1)
 1       CONTINUE
         MM=50
         DO 2 I=1,MM
           A(I,2)=B(I,2)+C(I,2)
 2       CONTINUE
 10    CONTINUE
       RETURN
       END

       SUBROUTINE SUB2(X,Y,Z,N)
       REAL X(N,2),Y(N,2),Z(N,2)
       DATA K,L/30,20/
       DO 10 J=1,2
         NN=K+L
         DO 1 I=1,NN
           X(I,1)=Y(I,1)+Z(I,1)
 1       CONTINUE
         MM=K+L
         DO 2 I=1,MM
           X(I,2)=Y(I,2)+Z(I,2)
 2       CONTINUE
 10    CONTINUE
       RETURN
       END
