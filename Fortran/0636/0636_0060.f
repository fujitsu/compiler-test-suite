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
         IF(J.GT.1024) GO TO 1
         LG(J,K)=.FALSE.
         LG(J+1,K)=.TRUE.
         J=J+2
 1     CONTINUE
       N=1024
       L=2
       CALL SUB1(A,B,C,X,Y,Z,LG,N,L)
       PRINT *,LG,X,Y,Z,A,B,C
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N,L)
       REAL A(N,L),B(N,L),C(N,L)
       REAL X(N,L),Y(N,L),Z(N,L)
       LOGICAL LG(N,L)
         N1=N-1
         N2=N-2
         IMIN=1
         SMIN1=0.11D0
         SMIN2=0.11D0
         IMIN1=1
         IMIN2=1
         K =1
         DO 3 I=2,N1
           Y(I,K)=C(I-1,K)
 3       CONTINUE
         DO 4 I=2,N2
           X(I,K)=-B(I-1,K)
 4       CONTINUE
         DO 1 I=2,N1
           IF(A(I,1).LT.SMIN1) THEN
            SMIN1=A(I,1)
            IMIN1=I
           ENDIF
           LG(I,1)=.NOT.LG(I,1)
 1       CONTINUE
         DO 2 J=2,N2
           IF(A(J,1).LT.SMIN2) THEN
            SMIN2=A(J,1)
            IMIN2=J
           ENDIF
           LG(J,2)=.NOT.LG(J,2)
 2       CONTINUE
       PRINT *,IMIN1,SMIN1,IMIN2,SMIN2
       RETURN
       END
