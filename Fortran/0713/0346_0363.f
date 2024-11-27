          LOGICAL A(10),L(10)
          INTEGER C(10)
          DATA A/10*.TRUE./
          DATA C/1,0,1,0,1,0,1,0,1,0/
          DATA L/5*.TRUE.,5*.FALSE./
          DO 10 I = 1 , 10
            A(I) = C(I).EQ.1
            IF(L(I)) THEN
              A(I) = A(I) .AND. L(I)
            ENDIF
 10       CONTINUE
            PRINT *,A
            END
