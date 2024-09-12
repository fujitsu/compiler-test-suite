      COMPLEX A(10),B(10),C(10),SUM
      DATA A/5*(1.,3.),5*(10.,9.)/,B/5*(5.,6.),5*(2.,4.)/,
     1     C/5*(6.,8.),5*(10.0,0.0)/
      LOGICAL RC1/.TRUE./,RC2/.TRUE./,L1(10)
      DATA    L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1           .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      INTEGER IL(10)/1,2,3,4,5,6,7,8,9,10/

      SUM  = (0.,0.)
      ISUMM = 0

      DO 10 I=1,10
        IF( RC1 ) THEN
          IF(I.GE.5) THEN
            A(IL(I)) = B(I)
            IF( L1(I) ) THEN
              A(I) = B(I) + C(I)
            ENDIF

            IF( RC1 ) THEN
              IF( L1(I) ) THEN
                A(I) = B(I) + C(I)
              ENDIF
            ENDIF

            SUM = SUM + C(I)
          ELSE
            ISUMM = ISUMM + 1
          ENDIF
        ENDIF

        IF( L1(I) ) THEN
          A(I) = B(I) * C(I)
        ENDIF
        IF( L1(I) ) THEN
          B(I) = B(I) * C(I)
        ENDIF

        A(IL(I)) = B(I)
        IF( RC2 ) THEN
          IF( L1(I) ) THEN
            C(I) = B(I) * C(I)
          ENDIF
          ELSE
            B(I) = B(I) * C(I)
        ENDIF
  10  CONTINUE
      PRINT *,SUM,ISUMM,A,B

      STOP
      END
