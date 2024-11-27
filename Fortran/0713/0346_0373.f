          INTEGER A(10),B(10),C(10),D(10),X
          DATA A/1,2,3,4,5,6,7,8,9,10/,B/10*2/
          DATA C/1,2,3,4,5,6,7,8,9,10/
          DATA D/10*1/
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
