      LOGICAL  X,A(10),RC1/.TRUE./,RC2/.FALSE./
      DATA A/.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,
     1       .FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE./

      I1 = 0
      I2 = 10
      DO 10 I=1,10
        X = A(I)
        IF(X) THEN
          I1 = I1 + 1
        ENDIF

        IF(RC2) THEN
          IF(X) THEN
            I2 = I2 + 1
          ENDIF
        ENDIF
  10  CONTINUE
      PRINT *,I1,I2

      STOP
      END
