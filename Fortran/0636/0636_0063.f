       REAL A(4,10,30),B(4,10,30),C(4,10,30)
       REAL X(4,10,30),Y(4,10,30),Z(4,10,30)
       LOGICAL LG(4,10,30)
       data lg/1200*.false./
       DO 1 I=1,4
       DO 1 J=1,10
       DO 1 K=1,30
         A(I,J,K)=I
         B(I,J,K)=-I
         C(I,J,K)=I+2.0
         X(I,J,K)=I+4.0
         Y(I,J,K)=-4.0+I/10
         Z(I,J,K)=-2.0+I/5
         IF(I.GT.2  ) GO TO 1
         LG(I,J,K)=.FALSE.
         LG(I+1,J,K)=.TRUE.
 1     CONTINUE
       N=4
       L=10
       M=30
       CALL SUB1(A,B,C,X,Y,Z,LG,N,L,M)
       PRINT *,LG,X,Y,Z,A,B,C
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N,L,M)
       REAL A(N,L,M),B(N,L,M),C(N,L,M)
       REAL X(N,L,M),Y(N,L,M),Z(N,L,M)
       LOGICAL LG(N,L,M)
         IMIN=1
         SMIN1=0.11D0
         SMIN2=0.11D0
         IMIN1=1
         IMIN2=1
         I1=1
         DO 1 I=1,N
         DO 1 J=1,L
         DO 1 K=1,M
           IF(A(I,J,K).LT.SMIN1) THEN
            SMIN1=A(I,J,K)
            IMIN1=I
           ENDIF
           LG(I,J,K)=.NOT.LG(I,J,K)
           IF(A(I,J,K).LT.SMIN2) THEN
            SMIN2=A(I,J,K)
            IMIN2=I
           ENDIF
 1       CONTINUE
         DO 4 I=1,N
         DO 4 J=1,L
         DO 4 K=1,M
           X(I,J,K)=-B(I,J,K)
           LG(I,J,K)=.NOT.LG(I,J,K)
 4       CONTINUE
       PRINT *,IMIN1,SMIN1,IMIN2,SMIN2
       RETURN
       END
