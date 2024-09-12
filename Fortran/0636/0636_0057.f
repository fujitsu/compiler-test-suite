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
       PRINT *,LG,X,Y,Z
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N,L)
       REAL A(N,L),B(N,L),C(N,L)
       REAL X(N,L),Y(N,L),Z(N,L)
       LOGICAL LG(N,L)
         N1=N-1
         IMIN=1
         SMIN=0.11D0
         I1=1
         DO 1 I=2,N1
           IF(A(I,1).LT.SMIN) THEN
            SMIN=A(I,1)
            IMIN=I
           ENDIF
           LG(I,1)=.NOT.LG(I,1)
 1       CONTINUE
         DO 2 I=2,N1
           X(I,I1)=-B(I-1,I1)
           Y(I,I1)=C(I-1,I1)
 2       CONTINUE
       PRINT *,IMIN,SMIN
       RETURN
       END
