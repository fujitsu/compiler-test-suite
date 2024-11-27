       LOGICAL*4 A(10),B(10),C(10),D(10)
       DATA A/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
       DATA B/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
       DATA C/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
       DATA D/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
       REAL     Z(10)
       LOGICAL L(10)
       DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
       DATA Z/9.,8.,7.,6.,5.,4.,3.,2.,1.,00./
       LOGICAL ANS /.TRUE./
          J = 1
          DO 10 I = 1 , 10
            IF(L(I)) THEN
               ANS = B(I) .OR. C(I)
               D(I) = C(I) .AND. ANS
            ENDIF
            IF(Z(J) .LE. 4.0 ) GO TO 10
            IF(L(I)) THEN
               ANS = C(I) .AND. .TRUE.
               A(I) = ANS  .OR. C(I)
               D(I) = B(I) .OR. C(I)
            ENDIF
 10       CONTINUE
            PRINT *,D
            END
