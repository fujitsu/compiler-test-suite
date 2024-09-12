      LOGICAL W(10),L1,L4,RC1/.FALSE./
      INTEGER  A(10),B(10),M(10),IVT
      DATA A/1,2,3,4,5,6,7,8,9,10/
      DATA B/10,9,8,7,6,5,4,3,2,1/
      DATA M/11,5,4,3,2,9,7,8,3,7/
      DATA W/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.FALSE.,
     1       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE./

      DO 10 I=1,10
        IVT = B(I) - I
        L1 = IVT .GT. M(I)
        L4 = A(I) .GE. 8
        IVT = B(I) * I
        IF(RC1) THEN
          IF(L1) THEN
            L4 = IVT .GT. M(I)
          ENDIF
        ENDIF
        IF(L4) THEN
          W(I) = L1 .OR. L4
        ENDIF
  10  CONTINUE
      PRINT *,W

      STOP
      END
