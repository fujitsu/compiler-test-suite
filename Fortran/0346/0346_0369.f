          COMPLEX A(10),B(10),C(10),D(10),X,Y,COMP
          DATA A/10*(2.0,2.0)/,B/10*(1.0,1.0)/
          DATA C/5*(4.0,1.0),5*(2.0,8.0)/,COMP/(2.0,2.0)/
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          DO 10 I = 1 , 10
            X = B(I) + C(I)
            Y = B(I) * C(I)
            A(I) = X
            A(I) = Y
            IF(L(I)) THEN
               B(I) = COMP
            ENDIF
            D(I) = A(I) * B(I)
 10       CONTINUE
            PRINT *,D
            END
