       INTEGER   A(10),IL(10),X,B(10)
       DATA  IL/1,2,3,4,5,6,7,8,9,10/,N/0/
       LOGICAL   L(10)
       DO 10 I=1,10
        L(I) = MOD(I,2) .EQ. 0
        A(I) = I
   10 CONTINUE

       DO 20 J=1,10
         B(J) = FLOAT(J)
         IF(L(J)) THEN
           X = IL(J)
           X = A(X)
           A(X) = B(J) * 4
           X = IL(J) - N
           B(X) = X**2
         ENDIF
   20  CONTINUE
       PRINT  *,A
       END
