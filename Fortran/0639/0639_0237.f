      INTEGER A(2000),B(2000),C(2000),RMAX,RMIN,SUM,SUMM
      DATA A/200*9,200*8,200*7,200*6,200*5,200*4,200*3,200*2,
     1       200*1,200*99/
     2    ,B/200*11,200*1,200*2,200*23,200*22,200*99,200*11,200*-1,
     3       200*0,200*99/
     4    ,C/200*1,200*2,200*3,200*4,200*5,200*6,200*7,200*8,
     5       200*9,200*10/
      LOGICAL RC1/.TRUE./,L1(2000)
      INTEGER IL(2000)

      DO 1 I=1,2000
      L1(I) = MOD(I,2) .EQ. 1
    1 IL(I) = I
      RMAX = 0
      RMIN = 999999
      SUM  = 0
      SUMM = 10

      DO 10 I=1,1024
        IF( RC1 ) THEN
          IF(I.GE.5) THEN
            A(IL(I)) = B(I) + C(I)
            IF( L1(I) ) THEN
              A(I) = B(I) + C(I)
             ENDIF

            RMAX = MAX(RMAX,A(IL(I)))
            SUM = SUM + C(I)

            IF( L1(I) ) THEN
              B(I) = B(I) + C(I)
             ENDIF
          ELSE
            B(IL(I)) = A(I) + C(I)
            SUMM = SUMM + 1
            RMIN = MIN(B(IL(I)),RMIN)
          ENDIF
        ELSE
          C(IL(I)) = A(I) * B(I)
        ENDIF
  10  CONTINUE
      PRINT *,RMAX,RMIN,SUM,SUMM
      PRINT *,(A(I),B(I),I=1,2000,111)

      STOP
      END
