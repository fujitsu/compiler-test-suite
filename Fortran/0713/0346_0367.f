          LOGICAL A(10),B(10),C(10),D(10),X,Y
          DATA A/5*.TRUE.,5*.FALSE./,B/10*.TRUE./
          DATA C/2*.FALSE.,4*.TRUE.,2*.FALSE.,.TRUE.,.FALSE./
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          DO 10 I = 1 , 10
            X = B(I) .OR. C(I)
            Y = B(I) .AND. C(I)
            A(I) = X
            A(I) = Y
            IF(L(I)) THEN
               B(I) = .TRUE.
            ENDIF
            D(I) = A(I) .AND. B(I)
 10       CONTINUE
            PRINT *,D
            END
