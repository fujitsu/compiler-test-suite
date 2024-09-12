       REAL A(1000),B(1000),C(1000)
       REAL X(1000),Y(1000),Z(1000)
       DATA A,B,C/3000*0.0D0/
       DATA X,Y,Z/1000*1.0D0,1000*2.0D0,1000*3.0D0/
       DATA MAX,N,LIMIT/5000,1000,1000/
       CALL SUB(A,B,C,X,Y,Z,N,MAX,LIMIT)
       PRINT *,LIMIT
       PRINT *,A,B,C
       PRINT *,X,Y,Z
       END
       SUBROUTINE SUB(A,B,C,X,Y,Z,N,MAX,LIMIT)
       REAL A(N),B(N),C(N)
       REAL X(N),Y(N),Z(N)
       DO 10 K=1,MAX
         DO 1 I=1,N
           A(I)=X(I)+Z(I)
 1       CONTINUE
         DO 2 I=1,N
           B(I)=Z(I)*Y(I)
 2       CONTINUE
         DO 3 I=1,N
           C(I)=Y(I)/X(I)
 3       CONTINUE
       LIMIT=K-1
 10   CONTINUE
      RETURN
      END
