       REAL A(768),B(768),C(768)
       REAL X(768),Y(768),Z(768)
       LOGICAL LG(768)
       J=1
       DO 1 I=1,768
         A(I)=I
         B(I)=-I
         C(I)=I+2.0
         X(I)=I+4.0
         Y(I)=-4.0+I/10
         Z(I)=-2.0+I/5
         IF(I.GT.384) GO TO 1
         LG(J)=.FALSE.
         LG(J+1)=.TRUE.
         J=J+2
 1     CONTINUE
       N=768
       CALL SUB1(A,B,C,X,Y,Z,LG,N)
       PRINT *,LG,A,B,C,X,Y,Z
       END
       SUBROUTINE SUB1(A,B,C,X,Y,Z,LG,N)
       REAL A(N),B(N),C(N)
       REAL X(N),Y(N),Z(N)
       LOGICAL LG(N)
       NL=N-1
       MM=N-2
       IX=1
         DO 1 I=2,NL
           A(I)=-FLOAT(I)
           IF(LG(IX)) A(I)=-1.0D0
 1       CONTINUE
         DO 2 I=2,NL
           B(I)=A(I-1)
 2       CONTINUE
         DO 3 I=2,NL
           C(I)=B(I-1)+Z(MM)
 3       CONTINUE
         MM=MM-3
         DO 4 I=2,NL
           IF(LG(IX)) X(I)=-C(I-1)
           X(I)=-I +1.0D0
 4       CONTINUE
         DO 5 I=2,NL
           Y(I)=X(I-1)-Z(MM)
 5       CONTINUE
       RETURN
       END
