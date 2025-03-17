          COMPLEX A(10),B(10),C(10),D(10),X
          DATA A/5*(1.0,2.0),5*(2.0,4.0)/,B/10*(2.0,2.0)/
          DATA C/4*(2.0,2.0),4*(4.0,1.0),2*(1.0,1.0)/
          DATA D/10*(1.0,1.0)/
          LOGICAL  L(10)
          DATA     L/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,
     1               .FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./
          DO 10 I = 1 , 10
            X = B(I) + C(I)
            A(I) = X
            IF(L(I)) THEN
              X = B(I) * C(I)
              D(I) = A(I) + X
            ENDIF
 10       CONTINUE
            PRINT *,D
            END
