      LOGICAL C(10),L1,L2,L3,L4,L5,RC1/.FALSE./,RC2/.TRUE./,RC3/.FALSE./
     1       ,R4/.TRUE./
      INTEGER  A(10),B(10)
      DATA A/1,2,3,4,5,6,7,8,9,10/
      DATA B/10,9,8,7,6,5,4,3,2,1/
      DATA C/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.FALSE.,
     1       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE./

      DO 10 I=1,10
        L1 = A(I) .GE. 2
        L2 = B(I) .LE. 8
        L3 = .FALSE.
        IF(L1) THEN
          L3 = L1 .OR. L2
        ENDIF
        L1 = A(I) .NE. B(I)
        L4 = .TRUE.
        IF(RC1) THEN
          L3 = B(I) .LE.5
        ENDIF
        IF(RC2) THEN
          IF(L1) THEN
            L4 = L1 .OR. L2
          ENDIF
        ENDIF
        IF(L4) THEN
          C(I) = L3 .OR. L4
        ENDIF
  10  CONTINUE
      PRINT *,C

      STOP
      END
