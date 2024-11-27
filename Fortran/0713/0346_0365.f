          LOGICAL A(10),B(10),C(10),D(10),X
          DATA A/5*.FALSE.,5*.TRUE./,B/10*.TRUE./
          DATA C/4*.TRUE.,4*.FALSE.,.TRUE.,.FALSE./
          LOGICAL  L(10)
          DATA     L/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,
     1               .FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./
          DO 10 I = 1 , 10
            X = B(I) .OR. C(I)
            A(I) = X
            IF(L(I)) THEN
              X = B(I) .AND. C(I)
              A(I) = B(I) .OR. X
            ENDIF
 10       CONTINUE
            PRINT *,A
            END
