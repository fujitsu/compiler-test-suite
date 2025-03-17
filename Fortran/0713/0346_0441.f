       REAL A(50,2),B(50,2),C(50,2)
       REAL X(50,2),Y(50,2),Z(50,2)
       DATA MM/50/,N/50/
       DO 1 J=1,2
       DO 1 I=1,MM
         A(I,J)=I
         B(I,J)=-I
         C(I,J)=A(I,J)-B(I,J)
         X(I,J)=C(I,J)+A(I,J)
         Y(I,J)=-X(I,J)
         Z(I,J)=B(I,J)+C(I,J)
 1     CONTINUE
       CALL SUB1(A,B,C,N)
       CALL SUB2(X,Y,Z,N)
       PRINT *,A,X
       END
       SUBROUTINE SUB1(A,B,C,N)
       REAL A(N,2),B(N,2),C(N,2)
       DO 10 J=1,2
         NN=50
         MM=50
         DO 1 I=1,NN
           A(I,1)=B(I,1)+C(I,1)
           IF(A(I,1).LE.10.0) THEN
             A(I,1)=B(I,1)-C(I,1)
           ENDIF
 1       CONTINUE
         SMAX=1.0
         DO 2 I=1,MM
           A(I,2)=B(I,2)+C(I,2)
           IF(A(I,1).LE.10.0) SMAX=MAX(SMAX,A(I,2))
 2       CONTINUE
 10    CONTINUE
       PRINT *,SMAX
       RETURN
       END
       SUBROUTINE SUB2(X,Y,Z,N)
       REAL X(N,2),Y(N,2),Z(N,2)
       DATA K,L/30,20/
       DO 10 J=1,2
         DO 1 I=1,K+L
           IF(X(I,1).LE.10.0) THEN
            X(I,1)=Y(I,1)+Z(I,1)
           ENDIF
 1       CONTINUE
         DO 2 I=1,K+L
           IF(Z(I,2).GT.1.0) THEN
            X(I,2)=Y(I,2)+Z(I,2)
           ENDIF
 2       CONTINUE
 10    CONTINUE
       RETURN
       END
