      REAL A(20),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,1.,2.,3.,4.,5.,6.,7.,8.,
     *       9.,10./
      DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      LOGICAL L1/.TRUE./,L2/.FALSE./
      INTEGER  IL(10)/1,2,3,4,5,6,7,8,9,10/

      DO 10 I=1,10
        IS = IL(I)
        A(IS) = B(I) + C(I)
        IF(L1) THEN
          IS = IS + 10
          IF(.NOT.L2) THEN
            B(I) = A(IS) * C(I)
          ENDIF
        ENDIF
   10 CONTINUE
      PRINT *,A,B

      STOP
      END
