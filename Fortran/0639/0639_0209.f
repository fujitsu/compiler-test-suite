      LOGICAL W(10),L1,L2,L3,L4,RC1/.FALSE./,RC2/.TRUE./
      INTEGER  A(10),B(10),M(10),IVT
      DATA A/1,2,3,4,5,6,7,8,9,10/
      DATA B/10,9,8,7,6,5,4,3,2,1/
      DATA M/11,5,4,3,2,9,7,8,3,7/
      DATA W/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.FALSE.,
     1       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE./

      DO 10 I=1,10
        IVT = B(I) - I
        L1 = IVT .GE. A(I)
        L3 = .FALSE.
        L2 = .FALSE.
        IF(L1) THEN
          L3 = IVT .LE. M(I)
        ENDIF
        L4 = .TRUE.
        IF(RC1) THEN
          L2 = L1 .AND. L3
        ENDIF
        IF(RC2) THEN
          IVT = A(I) + I
          IF(L1) THEN
            L4 = IVT .LE. M(I)
          ENDIF
        ENDIF
        IF(L1.OR.L2.OR.L3) A(I) = IVT - 10
        IF(L4) THEN
          W(I) = L3 .OR. L4 .AND. L1
        ENDIF
  10  CONTINUE
      PRINT *,W,A

      STOP
      END
