       INTEGER   A(3000),IL(3000),X,B(3000)
       DATA      N/0/
       LOGICAL   L1(3000),L2(3000)
       DO 10 I=1,3000
        IL(I) = I
        L1(I)  = MOD(I,2) .EQ. 0
        L2(I)  = MOD(I,2) .NE. 0
        A(I)  = I
   10 CONTINUE

       DO 20 J=1,3000
         B(J) = FLOAT(J)
         X = IL(J)
         IF(L1(J)) THEN
           X = IL(J)
           X = A(X)
           A(X) = B(J) * 4
           X = IL(J) - N
           B(X) = X**2
           X = X * X + X * X + X + X + X
           X = X * X * X
         ENDIF
         IF(L2(J)) THEN
           B(X) = X
         ENDIF
   20  CONTINUE
       PRINT  *,(A(I),B(I),I=1,3000,5)
       END
