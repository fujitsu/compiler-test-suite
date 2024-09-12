          LOGICAL*4 A(10,2),B(10,2),C(10,2),D(10)
          DATA A/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     2           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          DATA B/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     2           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     E           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
          DATA C/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     2           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          DATA D/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          LOGICAL*4 X(10,2)
          DATA X/10*.FALSE.,10*.TRUE./
          LOGICAL S(10)
          DO 10 J= 1,2
          DO 10 I = 1 , 10
            IF(D(I)) S(I) = A(I,J) .OR. B(I,J)
            IF(D(I)) S(I) = C(I,J) .AND. .TRUE.
            IF(D(I)) X(I,J) = A(I,J) .OR. B(I,J)
 10       CONTINUE
            PRINT *,X
            END
