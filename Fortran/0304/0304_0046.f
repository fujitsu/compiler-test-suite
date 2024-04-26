      REAL        A(20),B(20),X(10)
      EQUIVALENCE (A(11),X(1))
      DATA        A,B/20*2.,20*4./
      LOGICAL     L(20)
      DATA        L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     2              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     3              .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DO 20 J=1,5
         DO 20 I=1,10
            X(I)  = A(I) + B(I)
            IF(L(I)) THEN
               A(I) = X(I)
            ENDIF
 20      CONTINUE
         PRINT  *,A
         END
