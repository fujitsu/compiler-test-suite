      PROGRAM MAIN

       INTEGER*4 IV11(10), IV12(10), IS12
       DATA IV12/1,9,8,7,6,5,4,3,2,1/ 
       DATA IV11/1,2,3,4,5,6,7,8,9,10/ 
       REAL*8 DS13
       REAL*4 RV11(10)
       DATA RV11/5*3.,5*2.5/ 
       COMPLEX*16 CS11

       REAL*8 DS22, DS23, DS24
       REAL*4 RV21(10)
       DATA RV21/-1,0,1,2,3,4,5,6,7,8/ 
       COMPLEX*16 CV21(2)
       DATA CV21/2*0/ 

       LOGICAL*4 LS32
       DATA LS32/.FALSE./ 
       REAL*4 RV31(10), RV32(10)
       DATA RV32/10*2./ 
       DATA RV31/3*4.0,5*-1.,2*5./ 
       REAL*8 DS32, DV31(10)
       DATA DV31/1.,8.,8*4./ 
       COMPLEX*8 CV31(10)
       COMPLEX CS31
       REAL RS31
       DOUBLE COMPLEX CS21, CS12
       DOUBLEPRECISION DS21, DS12
       INTEGER IS11
       PARAMETER (CS31 = (1.,1.), RS31 = 10., CS21 = (0.,2.), DS21 = 1D0
     X   , CS12 = (0.5,.1))
       PARAMETER (DS12 = 2D0, IS11 = 2)
       DOUBLEPRECISION DD1
       REAL RR1
       PARAMETER (DD1 = 2D0 / 2., RR1 = 1. / 2.)
       INTEGER II2, II1
       REAL RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2
       DOUBLE PRECISION DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, 
     X   DD8, DD7, DD6, DD5, DD4, DD3, DD2
       COMPLEX CC5, CC4, CC3, CC2, CC1
       COMPLEX*16 DC2, DC1
       DS13 = 3D0
       CS11 = CMPLX ((1.,1.), KIND = 8)
       DS24 = 0.1
       DS23 = 0D0
       DS22 = 0D0

       II1 = IV11(10)
       DO I=1,6,5
        II1 = II1 + 2
        II1 = II1 + 2
        II1 = II1 + 2
        II1 = II1 + 2
        II1 = II1 + 2
       END DO
       IV11(10) = II1

       DO I=1,6,5
        IV12(I) = IV11(I) - 1D0
        IV12(I+1) = IV11(I+1) - 1D0
        IV12(I+2) = IV11(I+2) - 1D0
        IV12(I+3) = IV11(I+3) - 1D0
        IV12(I+4) = IV11(I+4) - 1D0
       END DO

       II2 = IV11(2) * IV11(1)
       DO I=1,6,5
        DS13 = MIN (REAL (RV11(I), KIND = 8), 4D0, DS13)
        RV11(1) = RV11(I) - IV12(I) + RV11(1) + II2
        IS12 = -3 + RV11(I) * RR1
        RV11(10) = 2. + RV11(10)
        CS11 = CS11 + CS12 + IS12 * I
        DS13 = MIN (REAL (RV11(I+1), KIND = 8), 4D0, DS13)
        RV11(1) = RV11(I+1) - IV12(I+1) + RV11(1) + II2
        IS12 = -3 + RV11(I+1) * RR1
        RV11(10) = 2. + RV11(10)
        CS11 = CS11 + CS12 + IS12 * (I + 1)
        DS13 = MIN (REAL (RV11(I+2), KIND = 8), 4D0, DS13)
        RV11(1) = RV11(I+2) - IV12(I+2) + RV11(1) + II2
        IS12 = -3 + RV11(I+2) * RR1
        RV11(10) = 2. + RV11(10)
        CS11 = CS11 + CS12 + IS12 * (I + 2)
        DS13 = MIN (REAL (RV11(I+3), KIND = 8), 4D0, DS13)
        RV11(1) = RV11(I+3) - IV12(I+3) + RV11(1) + II2
        IS12 = -3 + RV11(I+3) * RR1
        RV11(10) = 2. + RV11(10)
        CS11 = CS11 + CS12 + IS12 * (I + 3)
        DS13 = MIN (REAL (RV11(I+4), KIND = 8), 4D0, DS13)
        RV11(1) = RV11(I+4) - IV12(I+4) + RV11(1) + II2
        IS12 = -3 + RV11(I+4) * RR1
        RV11(10) = 2. + RV11(10)
        CS11 = CS11 + CS12 + IS12 * (I + 4)
       END DO

       WRITE (6, 444) IV11
       WRITE (6, 444) IV12
       WRITE (6, 444) DS13
       WRITE (6, 444) RV11
       WRITE (6, 444) CS11

       DC1 = CV21(1)
       DO I=1,10
        DC1 = DC1 - (1D0, 0D0) + CS21 * RV21(11-I)

        IF (I .LT. 9) THEN
         DS22 = MAX (DS22, REAL (RV21(I), KIND = 8))
        END IF

        IF (RV21(I) .LT. 3.) THEN
         DS24 = MAX (DS24, REAL (RV21(I) - 3, KIND = 8))
        END IF
       END DO
       CV21(1) = DC1
       DC2 = CV21(2)

       DO I=1,6,5
        DS23 = MAX (DS23, 1D0)

        DC2 = DC2 + CS21
        DS23 = MAX (DS23, 1D0)

        DC2 = DC2 + CS21
        DS23 = MAX (DS23, 1D0)

        DC2 = DC2 + CS21
        DS23 = MAX (DS23, 1D0)

        DC2 = DC2 + CS21
        DS23 = MAX (DS23, 1D0)

        DC2 = DC2 + CS21
       END DO
       CV21(2) = DC2

       WRITE (6, 444) CV21
       WRITE (6, 444) DS22, DS23, DS24

       DO I=1,6,5
        CC2 = CS31 * I
        CC3 = CS31 * (I + 1)
        CC4 = CS31 * (I + 2)
        CC5 = CS31 * (I + 3)
        CC1 = CS31 * (I + 4)
        RR4 = CABS (CC2)
        RR5 = CABS (CC3)
        RR6 = CABS (CC4)
        RR7 = CABS (CC5)
        RR2 = CABS (CC1)
        CC2 = CS31 * I
        CC3 = CS31 * (I + 1)
        CC4 = CS31 * (I + 2)
        CC5 = CS31 * (I + 3)
        CC1 = CS31 * (I + 4)
        RR8 = RR4 * RR4
        RR9 = RR5 * RR5
        RR10 = RR6 * RR6
        RR11 = RR7 * RR7
        RR3 = RR2 * RR2
        CV31(I) = CC2 - RR8
        CV31(I+1) = CC3 - RR9
        CV31(I+2) = CC4 - RR10
        CV31(I+3) = CC5 - RR11
        CV31(I+4) = CC1 - RR3

        DD5 = REAL (RV31(I), KIND = 8)
        DD6 = REAL (RV31(I+1), KIND = 8)
        DD7 = REAL (RV31(I+2), KIND = 8)
        DD8 = REAL (RV31(I+3), KIND = 8)
        DD3 = REAL (RV31(I+4), KIND = 8)
        DD9 = REAL (RV32(I), KIND = 8)
        DD10 = REAL (RV32(I+1), KIND = 8)
        DD11 = REAL (RV32(I+2), KIND = 8)
        DD12 = REAL (RV32(I+3), KIND = 8)
        DD4 = REAL (RV32(I+4), KIND = 8)
        DD13 = DD5 * DD9
        DD14 = DD6 * DD10
        DD15 = DD7 * DD11
        DD16 = DD8 * DD12
        DD2 = DD3 * DD4
        DV31(I) = DD13 - I
        DV31(I+1) = DD14 - 1 - I
        DV31(I+2) = DD15 - 2 - I
        DV31(I+3) = DD16 - 3 - I
        DV31(I+4) = DD2 - 4 - I
       END DO

       RS34 = 0
       DO I=1,10
        DS32 = SIGN (REAL (CS31 * RV31(I)), -RV31(I))
        IF (DS32 .GT. REAL (RS34, KIND = 8)) THEN
         RS34 = DS32
        END IF
       END DO

       WRITE (6, 444) CV31
       WRITE (6, 444) DV31
       WRITE (6, 444) RV31
       WRITE (6, 444) RS34
  444  FORMAT(10G20.6)

       STOP 
      END
