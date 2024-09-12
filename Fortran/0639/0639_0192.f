      INTEGER A(10),B(10),C(10),IL(10)
      DATA A/1,2,3,4,5,6,7,8,9,10/
      DATA B/10,9,8,7,6,5,4,3,2,1/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA IL/1,2,3,4,5,6,7,8,9,10/,JJ/0/
      LOGICAL L2/.FALSE./

      DO 10 I=1,10
        L2   = I-((I/2)*2) .EQ. 1
        II   = IL(I)
        A(II) = B(I) + C(I)
        IF(.NOT.L2) THEN
          II   = IL(I) + JJ
          B(I) = A(II) * C(I)
        ENDIF
   10 CONTINUE
      PRINT *,A,B

      STOP
      END
