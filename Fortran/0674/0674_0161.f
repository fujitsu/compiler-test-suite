       REAL A(10),B(10),X(10),Y(10)
       DATA X,Y/20*1.0/
       DO 1 I=1,10
         A(I)=X(I)
 1     CONTINUE
       DO 2 J=1,10
         B(J)=Y(J)-A(J)
 2     CONTINUE
       PRINT *,A,B
       END
