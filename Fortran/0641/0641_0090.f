      PROGRAM MAIN

       LOGICAL*4 LS11, LV11(10)
       DATA LV11/7*.TRUE.,2*.FALSE.,.TRUE./ 
       DATA LS11/.TRUE./ 
       REAL*4 RV11(10)
       DATA RV11/10*1./ 
       REAL*8 DV11(10)
       DATA DV11/10*1./ 

       INTEGER*4 IS21
       REAL*4 RS21
       REAL*8 DV21(10)
       COMPLEX*8 CV21(10), CV22(0:10)
       DATA CV21/5*(1.0,1.0),5*(1.0,-1.0)/ 

       LOGICAL*4 LV31(10)
       DATA LV31/3*.FALSE.,4*.TRUE.,3*.FALSE./ 
       INTEGER*4 IV31(11)
       DATA IV31/11*1/ 
       REAL*4 RV31(11)
       DATA RV31/11*2.0/ 
       COMPLEX CS31
       REAL RS31
       INTEGER IS22
       DOUBLE COMPLEX CDS11
       DOUBLEPRECISION DS11
       PARAMETER (CS31 = (0., 0.), RS31 = 2., IS22 = 4, CDS11 = 
     X   (1.5,1.5), DS11 = 1.5)
       DOUBLEPRECISION DD1
       COMPLEX CC1
       PARAMETER (DD1 = 1D0 / 4, CC1 = (1., 0.) / 4)
       DOUBLE PRECISION DD6, DD5, DD4, DD3, DD2
       COMPLEX CC11, CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2


       DO I=1,10
        IF (LV11(I)) THEN
         DV11(I) = I - ABS (CDS11 * DS11) + ABS (CDS11) * DS11
        ELSE
         DV11(I) = ABS (CDS11) * DS11 - (ABS (CDS11 * DS11) + I)
        END IF

        IF (LV11(I)) THEN
         IF (9D0 .LE. DV11(I)) THEN
          RV11(I) = DV11(I)
         ELSE
          RV11(I) = 0.5 - DV11(I)
         END IF
        ELSE
         RV11(I) = 0.
        END IF
       END DO

       WRITE (6, *) DV11, RV11


       DO I=1,6,5
        DD2 = I
        DD3 = I + 1
        DD4 = I + 2
        DD5 = I + 3
        DD6 = I + 4
        CC7 = DD2
        CC8 = DD3
        CC9 = DD4
        CC10 = DD5
        CC11 = DD6
        CC3 = CC7 * (1.0,1.0)
        CC4 = CC8 * (1.0,1.0)
        CC5 = CC9 * (1.0,1.0)
        CC6 = CC10 * (1.0,1.0)
        CC2 = CC11 * (1.0,1.0)
        CV22(I) = CC3 * CC1
        CV22(I+1) = CC4 * CC1
        CV22(I+2) = CC5 * CC1
        CV22(I+3) = CC6 * CC1
        CV22(I+4) = CC2 * CC1
        CV21(I+4) = CC11
        CV21(I+3) = CC10
        CV21(I+2) = CC9
        CV21(I+1) = CC8
        CV21(I) = CC7
        DV21(I+4) = DD6
        DV21(I+3) = DD5
        DV21(I+2) = DD4
        DV21(I+1) = DD3
        DV21(I) = DD2
       END DO


       DO I=1,6,5
        CV22(I-1) = -CV22(I)
        CV22(I) = -CV22(I+1)
        CV22(I+1) = -CV22(I+2)
        CV22(I+2) = -CV22(I+3)
        CV22(I+3) = -CV22(I+4)
       END DO

       WRITE (6, *) DV21, CV21, CV22


       DO I=1,10
        IF (.NOT.LV31(I) .OR. I .LE. 4) THEN
         IV31(I) = I * I - RV31(I)
         IV31(I) = CMPLX (-RV31(I), KIND = 4)
         IF (.NOT.LV31(11-I)) THEN
          IV31(I) = RV31(I) * I
         ELSE
          RV31(I+1) = IV31(I+1) - I
         END IF
        ELSE

         RV31(I) = I
         IV31(I) = 0
        END IF
       END DO

       WRITE (6, *) LV31, 2.
       WRITE (6, *) IV31, RV31

       STOP 
      END
