      PROGRAM MAIN

       REAL*4 RS11, RS12
       REAL*8 DV11(10), DV12(10), DV13(10), DS11, DS12
       DATA DV13/10*3.0/ 
       DATA DV12/10*2.0/ 
       DATA DV11/10*1.0/ 

       LOGICAL*4 LV21(10), LS21
       DATA LS21/.TRUE./ 
       DATA LV21/4*.TRUE.,3*.FALSE.,2*.TRUE.,.FALSE./ 
       REAL*4 RV21(10)
       DATA RV21/10.,8*0.,-10./ 
       REAL*8 DS21, DS22
       COMPLEX*16 CDV21(10), CDV22(10), CDV23(10), CDS21
       DATA CDV23/10*(0.0,-1.0)/ 
       DATA CDV22/10*(2.0,0.0)/ 
       DATA CDV21/10*(1.0,-1.0)/ 

       INTEGER*4 IV31(10), IV32(3), IS31
       DATA IV32/3*0/ 
       DATA IV31/1,2,3,4,5,6,7,8,9,10/ 
       REAL*8 DV31(3)
       DOUBLEPRECISION DS31
       PARAMETER (DS31 = 3D0)
       REAL RR1
       PARAMETER (RR1 = 1. / 2.)
       INTEGER II2, II1, I1
       DOUBLE PRECISION DD2, DD1
       RS12 = 0.
       DS12 = 0D0
       DS11 = 0D0
       DS22 = 0D0
       DS21 = 0D0
       CDS21 = CMPLX ((0., 0.), KIND = 8)
       DATA DV31/3*0.0/ 


       DO I1=1,6,5
        RS11 = DV11(I1) - 3 + I1 + DV12(I1) * DV13(I1)
        RS12 = RS12 + RS11
        DS11 = DS11 + (RS11 ** 3. + I1) * RR1
        DS12 = DS12 - DV11(I1) + RS11
        RS11 = DV11(I1+1) - 2 + I1 + DV12(I1+1) * DV13(I1+1)
        RS12 = RS12 + RS11
        DS11 = DS11 + (1 + RS11 ** 3. + I1) * RR1
        DS12 = DS12 - DV11(I1+1) + RS11
        RS11 = DV11(I1+2) - 1 + I1 + DV12(I1+2) * DV13(I1+2)
        RS12 = RS12 + RS11
        DS11 = DS11 + (2 + RS11 ** 3. + I1) * RR1
        DS12 = DS12 - DV11(I1+2) + RS11
        RS11 = DV11(I1+3) + I1 + DV12(I1+3) * DV13(I1+3)
        RS12 = RS12 + RS11
        DS11 = DS11 + (3 + RS11 ** 3. + I1) * RR1
        DS12 = DS12 - DV11(I1+3) + RS11
        RS11 = 1 + DV11(I1+4) + I1 + DV12(I1+4) * DV13(I1+4)
        RS12 = RS12 + RS11
        DS11 = DS11 + (4 + RS11 ** 3. + I1) * RR1
        DS12 = DS12 - DV11(I1+4) + RS11
       END DO

       WRITE (6, *) DV11, DV12, DV13
       WRITE (6, *) RS12, DS11, DS12

       DO I1=1,10
        IF (LV21(I1) .NEQV. LV21(11-I1)) THEN
         DS21 = MAX (DS21, REAL (RV21(I1), KIND = 8))
        END IF
        IF (LV21(I1)) THEN
         CDS21 = CDS21 - CDV23(I1) + CDV21(I1) * CDV22(I1)
        END IF

        IF (LV21(11-I1)) THEN
         DS22 = MIN (DS22, REAL (RV21(I1), KIND = 8))
        END IF
       END DO

       WRITE (6, *) DS21, CDS21, DS22
       WRITE (6, *) RV21
       WRITE (6, *) CDV21
       WRITE (6, *) CDV22
       WRITE (6, *) CDV23
       II1 = IV32(1)
       II2 = IV32(2)
       DD1 = DV31(1)
       DD2 = DV31(2)

       DO I1=1,6,5
        IV31(1) = IV31(1) + IV31(I1)
        II1 = II1 + 2
        II2 = II2 + I1 * 2
        DD1 = 3D0 + DD1
        DD2 = 3D0 + DD2 + I1 * 2
        IV31(1) = IV31(1) + IV31(I1+1)
        II1 = II1 + 2
        II2 = II2 + I1 * 2 + 2
        DD1 = 3D0 + DD1
        DD2 = 5D0 + DD2 + I1 * 2
        IV31(1) = IV31(1) + IV31(I1+2)
        II1 = II1 + 2
        II2 = II2 + I1 * 2 + 4
        DD1 = 3D0 + DD1
        DD2 = 7D0 + DD2 + I1 * 2
        IV31(1) = IV31(1) + IV31(I1+3)
        II1 = II1 + 2
        II2 = II2 + I1 * 2 + 6
        DD1 = 3D0 + DD1
        DD2 = 9D0 + DD2 + I1 * 2
        IV31(1) = IV31(1) + IV31(I1+4)
        II1 = II1 + 2
        II2 = II2 + I1 * 2 + 8
        DD1 = 3D0 + DD1
        DD2 = 11D0 + DD2 + I1 * 2
       END DO
       IV32(1) = II1
       IV32(2) = II2
       DV31(1) = DD1
       DV31(2) = DD2

       WRITE (6, *) IV31, IV32
       WRITE (6, *) DV31
       WRITE (6, *) (22), 11

       STOP 
      END
