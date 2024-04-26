          LOGICAL    A(10),B(10),C(10),D(10)
          DATA A/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
          DATA B/.TRUE.,.TRUE. ,.TRUE.,.FALSE.,.TRUE.,
     E         .FALSE. ,.TRUE. ,.TRUE.,.TRUE. ,.TRUE./
          DATA C/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
          DATA D/ 5*.FALSE., 5*.TRUE./
          LOGICAL    ANS
          DATA ANS/.TRUE./
          LOGICAL    Z(10)
          DATA Z/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          J = 1
          DO 10 I = 1 , 10
            IF(L(I)) THEN
               ANS = B(I) .AND. C(I)
               IF(  I  .LE. 6   ) THEN
                  ANS = C(I) .OR. .TRUE.
               ENDIF
               Z(I) = C(I) .OR. ANS
            ENDIF
            IF(Z(J) ) GO TO 10
            IF(L(I)) THEN
               D(I) = B(I) .AND. C(I)
               A(I) = C(I) .OR. ANS
            ENDIF
 10       CONTINUE
          PRINT *,D
          END
