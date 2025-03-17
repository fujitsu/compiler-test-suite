      REAL       A(10),B(10)
      DATA       A,B/10*1.0,10*0.5/
      LOGICAL    L1(10),L2(10),X,Y
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,
     1             .FALSE.,.TRUE.,.FALSE.,.FALSE./
      DATA       L2/.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./,RS/0.5/
      DO 10 I=1,10
        X = L1(I)
        Y = X
        IF(Y) THEN
          A(I) = SIN(B(I))
        ENDIF
        Y = Y .OR. L2(I) .AND. X
        L1(I) = Y
   10 CONTINUE
      WRITE(6,100) A,L1
  100 FORMAT(' ',2(5F10.5/' '),10L1)
      STOP
      END
