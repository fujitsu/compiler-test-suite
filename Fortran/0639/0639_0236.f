      REAL*8  A(10),B(10),C(10)
      DATA    A/9.,8.,7.,6.,5.,4.,3.,2.,1.,99./,
     1        B/11.,1.,2.,23.,22.,99.,11.,-1.,0.,-9./,
     2        C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      INTEGER IL(10)/1,2,3,4,5,6,7,8,9,10/
      LOGICAL L1(10)
      DATA    L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./

      CALL  SUB(A,B,C,IL,L1,10)
      END

      SUBROUTINE  SUB(A,B,C,IL,L1,N)
      REAL*8  A(N),B(N),C(N),RMAX1,RMAX2,RMIN,SUM,SUMM
      LOGICAL RC1/.TRUE./,L1(N)
      INTEGER IL(N)

      RMAX1 = 0.D0
      RMAX2 = 0.D0
      RMIN = 999999
      SUM  = 0
      SUMM = 10

      DO 10 I=1,N
        IF( RC1 ) THEN
          IF(I.GE.5) THEN
            C(IL(I)) = B(I)
            IF( L1(I) ) THEN
               RMAX1 = MAX(RMAX1,A(I))
             ENDIF
            IF( L1(I) ) THEN
               RMAX2 = MAX(RMAX2,A(I))
            ENDIF
            SUM = SUM + C(I)
          ELSE
            SUMM = SUMM + 1
            RMIN = MIN(B(IL(I)),RMIN)
          ENDIF
        ELSE
          C(IL(I)) = A(I) * B(I)
        ENDIF
  10  CONTINUE
      PRINT *,RMAX1,RMAX2,RMIN,SUM,SUMM

      STOP
      END
