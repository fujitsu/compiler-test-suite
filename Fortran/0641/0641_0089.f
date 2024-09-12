      PROGRAM MAIN

       REAL*8 DV11(10)
       DATA DV11/5*1.0,5*5.0/ 
       REAL*4 RS11

       LOGICAL*4 LV21(10), LS21, LS22
       DATA LS22/.TRUE./ 
       DATA LS21/.FALSE./ 
       DATA LV21/3*.TRUE.,3*.FALSE.,3*.TRUE.,.FALSE./ 
       INTEGER*4 IV11(10)
       REAL*4 RV21(10), RV22(10), RV23(10)
       COMPLEX*16 CDV21(10)
       DATA IV11/10*1/ 
       DATA RV21/10*1.0/ 

       LOGICAL*4 LV31(10), LS31
       DATA LS31/.TRUE./ 
       DATA LV31/3*.TRUE.,7*.FALSE./ 
       COMPLEX*16 CDV31(10)
       DOUBLEPRECISION DS31, DS11, DS12
       REAL RS31
       INTEGER IS21, IS22
       PARAMETER (DS31 = 2D0, RS31 = 1., IS21 = 1, IS22 = 2, DS11 = 2D0)
       PARAMETER (DS12 = 3D0)
       DOUBLE COMPLEX DC1
       PARAMETER (DC1 = (1D0, 0D0) / 2)
       DATA CDV31/10*(0.,0.)/ 
       COMPLEX CC4, CC3, CC2, CC1


       RS11 = DMOD (DV11(1), 2D0) - IV11(2)
       DV11(2) = 3D0 + DDIM (DV11(2), 2D0)
       DV11(1) = REAL (RS11, KIND = 8) * 3D0
       IV11(2) = DV11(3) * 3D0 - RS11
       RS11 = DMOD (DV11(2), 2D0) - IV11(3)
       DV11(3) = 3D0 + DDIM (DV11(3), 2D0)
       DV11(2) = REAL (RS11, KIND = 8) * 3D0
       IV11(3) = DV11(4) * 3D0 - RS11
       RS11 = DMOD (DV11(3), 2D0) - IV11(4)
       DV11(4) = 3D0 + DDIM (DV11(4), 2D0)
       DV11(3) = REAL (RS11, KIND = 8) * 3D0
       IV11(4) = DV11(5) * 3D0 - RS11
       RS11 = DMOD (DV11(4), 2D0) - IV11(5)
       DV11(5) = 3D0 + DDIM (DV11(5), 2D0)
       DV11(4) = REAL (RS11, KIND = 8) * 3D0
       IV11(5) = DV11(6) * 3D0 - RS11
       RS11 = DMOD (DV11(5), 2D0) - IV11(6)
       DV11(6) = 3D0 + DDIM (DV11(6), 2D0)
       DV11(5) = REAL (RS11, KIND = 8) * 3D0
       IV11(6) = DV11(7) * 3D0 - RS11
       RS11 = DMOD (DV11(6), 2D0) - IV11(7)
       DV11(7) = 3D0 + DDIM (DV11(7), 2D0)
       DV11(6) = REAL (RS11, KIND = 8) * 3D0
       IV11(7) = DV11(8) * 3D0 - RS11
       RS11 = DMOD (DV11(7), 2D0) - IV11(8)
       DV11(8) = 3D0 + DDIM (DV11(8), 2D0)
       DV11(7) = REAL (RS11, KIND = 8) * 3D0
       IV11(8) = DV11(9) * 3D0 - RS11
       RS11 = DMOD (DV11(8), 2D0) - IV11(9)
       DV11(9) = 3D0 + DDIM (DV11(9), 2D0)
       DV11(8) = REAL (RS11, KIND = 8) * 3D0
       IV11(9) = DV11(10) * 3D0 - RS11

       WRITE (6, *) DV11, IV11, 2D0

       DO I=1,10
        IF (LV21(I) .AND. LV21(11-I) .NEQV. .FALSE.) THEN
         RV21(I) = 1 + SIN (RV21(I))
         RV22(I) = 1 + COS (RV21(I))
        ELSE
         RV21(I) = 2 + SIN (RV21(I))
         RV22(I) = 2 + COS (RV21(I))
        END IF

        RV23(I) = RV21(I) * RV21(I) + RV22(I) * RV22(I)
       END DO

       DO I=1,6,5
        CDV21(I) = CMPLX (0, I) ** 4
        CDV21(I+1) = CMPLX (0, I + 1) ** 4
        CDV21(I+2) = CMPLX (0, I + 2) ** 4
        CDV21(I+3) = CMPLX (0, I + 3) ** 4
        CDV21(I+4) = CMPLX (0, I + 4) ** 4
       END DO

       WRITE (6, *) RV21, RV22, RV23
       WRITE (6, *) CDV21
       WRITE (6, *) 1, 2, .FALSE., .TRUE., LV21
       CC3 = CMPLX (1., 2D0)
       CC4 = CMPLX (0, 2D0)


       DO J=2,8,3
        CC1 = CC3
        CC2 = CC4
        DO I=1,10
         IF (LV31(I)) THEN
          GO TO 13
         END IF
         IF (LS31) THEN
          GO TO 14
         END IF
         CDV31(I) = CC1 * CDV31(I) * DC1 - I
         GO TO 15

   13    CDV31(I) = CDV31(I) * CC2
         GO TO 16

   14    LV31(I) = LS31 .AND. I .LT. J
   15    CONTINUE
   16    CONTINUE
        END DO
        WRITE (6, *) LV31, LS31
        WRITE (6, *) CDV31

        LS31 = .FALSE.
       END DO

       STOP 
      END
