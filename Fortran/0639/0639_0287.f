       REAL A(10,50),B(10,50),C(10,50)
       DATA A,B,C/500*1.0D0,500*2.0D0,500*3.0D0/
       DATA N,M/10,50/
       N=0
       CALL SUB(A,B,C,N,M)
       PRINT *,A,B
       STOP
       END

       SUBROUTINE SUB(X,Y,Z,N,M)
       REAL X(N,M),Y(N,M),Z(N,M)
       DO 10 J=1,M
       DO 10 I=1,N
         X(7,I)=X(7,I)+Z(J,I)
         Y(2,I)=Y(2,I)-Z(J,I)
 10    CONTINUE
       RETURN
       END
