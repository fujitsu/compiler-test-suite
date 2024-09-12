      COMPLEX A(10),B(10),C(10)
      DATA A/5*(1.,3.),5*(10.,9.)/,B/5*(5.,6.),5*(2.,4.)/,
     1     C/5*(6.,8.),5*(10.,0.)/
      INTEGER IL(10)/1,2,3,4,5,6,7,8,9,10/

      CALL  SUB(A,B,C,IL,10)
      END

      SUBROUTINE  SUB(A,B,C,IL,N)
      COMPLEX A(N),B(N),C(N),SUM1,SUM2
      LOGICAL RC1/.TRUE./,RC2/.TRUE./
      INTEGER IL(N)

      SUM1 = (0.,0.)
      SUM2 = (0.,0.)
      ISUMM = 0

      DO 10 I=1,N
        IF( RC1 ) THEN
          IF(I.GE.5) THEN
            A(IL(I)) = B(I)
            IF(IL(I).LE.5) THEN
              SUM1 = SUM1 + C(I)
             ENDIF
            IF(IL(I).LE.5) THEN
              SUM2 = SUM2 + C(I)
             ENDIF
          ELSE
            B(IL(I)) = C(I)
            ISUMM = ISUMM + 1
          ENDIF
        ENDIF

        IF(IL(I).LE.10) THEN
          A(IL(I)) = B(I)
          IF( RC2 ) THEN
            C(I) = C(I) + B(I)
          ELSE
            B(I) = B(I) * C(I)
          ENDIF
        ENDIF
  10  CONTINUE
      PRINT *,A,B,SUM1,SUM2,ISUMM

      STOP
      END
