       REAL A(50),B(50),C(50)
       DATA A,B,C/50*1.0D0,50*2.0D0,50*3.0D0/
       DATA N,M/10,50/
       N=0
       CALL SUB(A,B,C,N,M)
       PRINT *,A,B
       STOP
       END

       SUBROUTINE SUB(X,Y,Z,N,M)
       REAL X(M),Y(M),Z(N,M)
       DO 10 J=1,M
       DO 10 I=1,N
         X(I)=X(I)+Z(J,I)
         Y(I)=Y(I)-Z(J,I)
 10    CONTINUE
       RETURN
       END
