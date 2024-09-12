      LOGICAL  A(10)
      DATA A/.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,
     1       .FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE./

      I1 = 0
      I2 = 10
      DO 10 I=1,10
        IF(A(I)) THEN
          I1 = I1 + 1
        ENDIF

        IF(A(I)) THEN
          I2 = I2 + 1
        ENDIF
  10  CONTINUE
      PRINT *,I1,I2

      STOP
      END
