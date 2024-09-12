      PROGRAM MAIN

       LOGICAL*4 L(10)
       DATA L/6*.TRUE.,4*.FALSE./ 
       REAL*4 RV11(10)
       DATA RV11/1.,2.,3.,4.,10.,9.,8.,7,6,5/ 
       REAL*8 DS11, DS12
       COMPLEX*8 CV11(10), CS11
       DATA CV11/5*(5.,5.),5*(0.,5.)/ 

       INTEGER*4 IV21(10)
       DATA IV21/5*2,5*-2/ 
       REAL*4 RS21, RS22
       COMPLEX*8 CS21

       REAL*4 RV31(10), RV32(10)
       DATA RV32/1.,2.,5.,0.,6*3./ 
       DATA RV31/2.,1.,10.,7*3./ 
       REAL*8 DS31, DS32
       INTEGER*4 IS31, IS32
       COMPLEX*8 CV31(10)
       COMPLEX CS22
       PARAMETER (CS22 = (0.,1.))
       DS12 = 4D0
       DS11 = 3D0
       CS11 = (10.,4.)
       RS22 = 0.
       RS21 = 0.
       CS21 = (0., 0.)
       DS32 = 0D0
       DS31 = 0D0
       IS32 = 1000000
       IS31 = -1000000
       DATA CV31/5*(3.,0.),5*(0.5,0.1)/ 

       DO I=1,10
        IF (L(I)) THEN
         DS11 = MAX (DS11, RV11(I))
         DS12 = MIN (RV11(I), DS12)
         CV11(I) = CMPLX (MAX (REAL (CV11(I)), IMAG (CS11)), IMAG (CV11(
     X     I)))
         IF (L(11-I)) CV11(I) = (10.0,10.0)
        END IF
       END DO

       WRITE (6, *) DS11, DS12, CV11

       DO J=1,2
        IF (CS21 .EQ. CS22) THEN
         RS21 = RS21 + ABS (IV21(1))
         RS21 = RS21 + ABS (IV21(2)) * 2
        ELSE
         RS22 = RS22 + ABS (IV21(1))
         IV21(1) = IV21(1) * 2
         RS22 = RS22 + ABS (IV21(2)) * 2
         IV21(2) = IV21(2) * 2
        END IF

        WRITE (6, *) CS21, CS22
        WRITE (6, *) RS21, RS22, IV21

        CS21 = CS22
       END DO

       DO I=1,6,5
        DS31 = MAX (DS31, REAL (RV31(I), KIND = 8), REAL ((RV31(I) + 
     X    RV32(I)) / 2, KIND = 8), REAL (SQRT (RV31(I) * RV32(I)), KIND
     X     = 8))
        DS32 = MIN (DS32, REAL (RV31(11-I), KIND = 8), REAL ((RV31(I) + 
     X    RV32(I)) / 2, KIND = 8), REAL (SQRT (RV31(11-I) * RV32(11-I))
     X    , KIND = 8))
        IS31 = MAX (IS31, MIN (INT (CV31(I)), INT (RV31(I))))

        IS32 = MIN (IS32, (-1) ** I)
        DS31 = MAX (DS31, REAL (RV31(I+1), KIND = 8), REAL ((RV31(I+1) +
     X     RV32(I+1)) / 2, KIND = 8), REAL (SQRT (RV31(I+1) * RV32(I+1))
     X    , KIND = 8))
        DS32 = MIN (DS32, REAL (RV31(10-I), KIND = 8), REAL ((RV31(I+1) 
     X    + RV32(I+1)) / 2, KIND = 8), REAL (SQRT (RV31(10-I) * RV32(10-
     X    I)), KIND = 8))
        IS31 = MAX (IS31, MIN (INT (CV31(I+1)), INT (RV31(I+1))))

        IS32 = MIN (IS32, (-1) ** (I + 1))
        DS31 = MAX (DS31, REAL (RV31(I+2), KIND = 8), REAL ((RV31(I+2) +
     X     RV32(I+2)) / 2, KIND = 8), REAL (SQRT (RV31(I+2) * RV32(I+2))
     X    , KIND = 8))
        DS32 = MIN (DS32, REAL (RV31(9-I), KIND = 8), REAL ((RV31(I+2) +
     X     RV32(I+2)) / 2, KIND = 8), REAL (SQRT (RV31(9-I) * RV32(9-I))
     X    , KIND = 8))
        IS31 = MAX (IS31, MIN (INT (CV31(I+2)), INT (RV31(I+2))))

        IS32 = MIN (IS32, (-1) ** (I + 2))
        DS31 = MAX (DS31, REAL (RV31(I+3), KIND = 8), REAL ((RV31(I+3) +
     X     RV32(I+3)) / 2, KIND = 8), REAL (SQRT (RV31(I+3) * RV32(I+3))
     X    , KIND = 8))
        DS32 = MIN (DS32, REAL (RV31(8-I), KIND = 8), REAL ((RV31(I+3) +
     X     RV32(I+3)) / 2, KIND = 8), REAL (SQRT (RV31(8-I) * RV32(8-I))
     X    , KIND = 8))
        IS31 = MAX (IS31, MIN (INT (CV31(I+3)), INT (RV31(I+3))))

        IS32 = MIN (IS32, (-1) ** (I + 3))
        DS31 = MAX (DS31, REAL (RV31(I+4), KIND = 8), REAL ((RV31(I+4) +
     X     RV32(I+4)) / 2, KIND = 8), REAL (SQRT (RV31(I+4) * RV32(I+4))
     X    , KIND = 8))
        DS32 = MIN (DS32, REAL (RV31(7-I), KIND = 8), REAL ((RV31(I+4) +
     X     RV32(I+4)) / 2, KIND = 8), REAL (SQRT (RV31(7-I) * RV32(7-I))
     X    , KIND = 8))
        IS31 = MAX (IS31, MIN (INT (CV31(I+4)), INT (RV31(I+4))))

        IS32 = MIN (IS32, (-1) ** (I + 4))
       END DO

       WRITE (6, *) DS31, DS32, IS31, IS32

       STOP 
      END
