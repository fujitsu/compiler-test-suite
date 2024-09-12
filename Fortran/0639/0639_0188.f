      LOGICAL A(10),B(10),C(10),X,Y,Z
      DATA A/5*.TRUE.,5*.FALSE./
      DATA B/10*.TRUE./
      DATA C/10*.FALSE./
      LOGICAL L2/.FALSE./

      DO 10 I=1,10
        Y    = B(I) .AND. .TRUE.
        Z    = C(I) .OR.  .FALSE.
        X    = Y .OR. Z
        A(I) = X
        IF(I.GT.5) THEN
          X    = Y .AND. X
        ENDIF
        IF(.NOT.L2) THEN
          A(I) = A(I) .AND. X
        ENDIF
   10 CONTINUE
      PRINT *,A

      STOP
      END
