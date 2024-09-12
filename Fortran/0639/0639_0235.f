      INTEGER A(10),B(10),C(10),RMAX,RMIN,SUM,SUMM
      DATA    A/9,8,7,6,5,4,3,2,1,99/,B/11,1,2,23,22,99,11,-1,0,-99/
     1        C/1,2,3,4,5,6,7,8,9,10/
      LOGICAL RC1/.TRUE./,L1(10)
      DATA    L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      INTEGER IL(10)/1,2,3,4,5,6,7,8,9,10/

      RMAX = 0
      RMIN = 999999
      SUM  = 0
      SUMM = 10

      DO 10 I=1,10
        IF( RC1 ) THEN
          IF(I.GE.5) THEN
            A(IL(I)) = B(I)
            IF( L1(I) ) THEN
              A(I) = B(I) + C(I)
            ENDIF

            RMAX = MAX(RMAX,A(IL(I)))
            SUM = SUM + C(I)

            IF( L1(I) ) THEN
              A(I) = B(I) + C(I)
            ENDIF
          ELSE
            SUMM = SUMM + 1
            RMIN = MIN(B(IL(I)),RMIN)
          ENDIF
        ELSE
          C(IL(I)) = A(I) * B(I)
        ENDIF
  10  CONTINUE
      PRINT *,RMAX,RMIN,SUM,SUMM

      STOP
      END
