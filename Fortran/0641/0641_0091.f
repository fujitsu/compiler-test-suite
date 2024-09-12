      PROGRAM MAIN

       REAL*4 RS11
       REAL*8 DV11(10)
       COMPLEX*8 CV11(10)
       COMPLEX*16 CDS11

       REAL*8 DS21, DS22, DS23
       COMPLEX*16 CDV21(10)
       DATA CDV21/3*(1.,2.),3*10,3*-5.,(0.,-10.)/ 

       LOGICAL*4 LV31(10)
       DATA LV31/5*.TRUE.,3*.FALSE.,2*.TRUE./ 
       INTEGER*4 IS31, IV31(10)
       DATA IV31/10*0/ 
       REAL*4 RS31, RS32
       REAL*8 DV31(10)
       COMPLEX CS21
       DOUBLEPRECISION DS24
       REAL RS12
       PARAMETER (CS21 = (0.,1.), DS24 = 1D0, RS12 = 2.)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2.)
       COMPLEX CC1
       COMPLEX*16 DC3, DC2, DC1
       RS11 = 3.
       CDS11 = (0.0D0,1.0D0)
       DS23 = 200D0
       DS21 = 0D0
       IS31 = 0
       RS32 = 0.
       RS31 = 0.
       DATA DV31/10*0./ 

       DO I=1,6,5
        DV11(I) = I
        DV11(I+1) = I + 1
        DV11(I+2) = I + 2
        DV11(I+3) = I + 3
        DV11(I+4) = I + 4
        CV11(I) = I
        CV11(I+1) = I + 1
        CV11(I+2) = I + 2
        CV11(I+3) = I + 3
        CV11(I+4) = I + 4
       END DO

       CC1 = CMPLX (3., 0.)
       DO I=1,10
        IF (CV11(I) .EQ. CC1) THEN
         RS11 = RS11 + SNGL (DV11(I))
        END IF
        CV11(I) = CMPLX (REAL (CV11(I)), -REAL (CV11(I)))
       END DO

       DO I=1,6,5
        CV11(1) = CV11(1) + CV11(I)
        CDS11 = CDS11 + DV11(I) * DD1
        CV11(1) = CV11(1) + CV11(I+1)
        CDS11 = CDS11 + DV11(I+1) * DD1
        CV11(1) = CV11(1) + CV11(I+2)
        CDS11 = CDS11 + DV11(I+2) * DD1
        CV11(1) = CV11(1) + CV11(I+3)
        CDS11 = CDS11 + DV11(I+3) * DD1
        CV11(1) = CV11(1) + CV11(I+4)
        CDS11 = CDS11 + DV11(I+4) * DD1
       END DO

       WRITE (6, *) DV11
       WRITE (6, *) CV11
       WRITE (6, *) RS11
       WRITE (6, *) 2.
       WRITE (6, *) CDS11
       DO I=1,7,3
        CDV21(I+1) = CS21
        CDV21(I+2) = CS21
        CDV21(I+3) = CS21
       END DO
       DO I=1,7,3
        DS22 = MIN (REAL (CDV21(I)), 1D0)
        DS21 = MAX (DS21, DS22)
        DC1 = DS22 - I

        DS23 = MIN (DS23, (DBLE (DC1) - 5) ** 2)
        CDV21(I) = DC1
        DS22 = MIN (REAL (CDV21(I+1)), 1D0)
        DS21 = MAX (DS21, DS22)
        DC2 = DS22 - 1 - I

        DS23 = MIN (DS23, (DBLE (DC2) - 5) ** 2)
        CDV21(I+1) = DC2
        DS22 = MIN (REAL (CDV21(I+2)), 1D0)
        DS21 = MAX (DS21, DS22)
        DC3 = DS22 - 2 - I

        DS23 = MIN (DS23, (DBLE (DC3) - 5) ** 2)
        CDV21(I+2) = DC3
       END DO

       WRITE (6, *) DS21
       WRITE (6, *) DS23
       WRITE (6, *) CDV21

       DO I=1,10
        IF (I .GT. 5) THEN
         IS31 = IS31 + 2
         IV31(I) = I
        ELSE
         RS31 = 2. + RS31
         DV31(I*2) = I
        END IF

        IF (.NOT.(LV31(I) .EQV. I .GT. 6)) THEN
         RS32 = RS32 + IV31(I)
        END IF
       END DO

       WRITE (6, *) IS31
       WRITE (6, *) IV31
       WRITE (6, *) RS31
       WRITE (6, *) DV31
       WRITE (6, *) LV31
       WRITE (6, *) RS32

       STOP 
      END
