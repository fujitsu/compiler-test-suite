      PROGRAM MAIN

       INTEGER*4 IS12
       REAL*4 RV11(10), RV12(10)
       COMPLEX*8 CV11(10)


       REAL*8 DV21(0:11), DS21, DS22, DS23, DS24, DS25, DS26
       DATA DV21/7*0.,2*-1.,1.,0.,-2./ 
       INTEGER*4 IS21, IS22
       COMPLEX*8 CS21

       REAL*4 RS31, RS32, RS33, RV31(10)
       COMPLEX*8 CV31(10)
       REAL RS34
       DOUBLEPRECISION DS11
       INTEGER IS11
       PARAMETER (RS34 = 1., DS11 = 2D0, IS11 = 1)
       DOUBLE COMPLEX DC1
       PARAMETER (DC1 = (1D0, 0D0) / 2D0)
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       DS26 = 0D0
       DS25 = 0D0
       DS24 = 1D0
       DS23 = 1D0
       DS22 = 0D0
       DS21 = 10D0
       IS22 = 0
       IS21 = 0
       CS21 = (0., 0.)
       RS31 = 0.
       DATA CV31/7*(1.0,1.0),3*(0.125,5.0)/ 

       DO I=1,6,5
        II3 = 5 - I
        II4 = 4 - I
        II5 = 3 - I
        II6 = 2 - I
        II2 = 1 - I
        RR1 = I * II3
        RR2 = (I + 1) * II4
        RR3 = (I + 2) * II5
        RR4 = (I + 3) * II6
        RR5 = (I + 4) * II2
        II7 = RR1 * RR1
        II8 = RR2 * RR2
        II9 = RR3 * RR3
        II10 = RR4 * RR4
        IS12 = RR5 * RR5
        RV12(I) = II7 + I
        RV12(I+1) = II8 + I + 1
        RV12(I+2) = II9 + I + 2
        RV12(I+3) = II10 + I + 3
        RV12(I+4) = IS12 + I + 4
        CV11(I) = II7
        CV11(I+1) = II8
        CV11(I+2) = II9
        CV11(I+3) = II10
        CV11(I+4) = IS12
        RV11(I+4) = RR5
        RV11(I+3) = RR4
        RV11(I+2) = RR3
        RV11(I+1) = RR2
        RV11(I) = RR1
       END DO

       WRITE (6, 99) RV11, CV11, RV12, CV11


C$OMP PARALLEL SHARED (DS21,DV21,DS22,DS23,IS21,IS22,CS21,DS24,DS25,DS26
C$OMP& ) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,2
        GO TO (6, 7), II1
        DO I=1,10
         IF (DS21 .GT. DV21(I)) THEN
          DS22 = DV21(I+1) + DV21(I-1)
          DS21 = DV21(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 8


    6   DO I=1,10

         IF (DV21(I) .GT. DS23) THEN
          DS23 = DV21(I)
          IS21 = I
          IS22 = I * 2 + 1
          CS21 = DV21(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 8


    7   DO I=1,10

         IF (SIN (DV21(I)) .LT. DS24) THEN
          DS24 = SIN (DV21(I))
          DS25 = DV21(I)
          DS26 = COS (DV21(I))
         END IF
        END DO
C$OMP FLUSH
    8   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 99) DV21
       WRITE (6, 99) DS21, DS22
       WRITE (6, 88) IS21, IS22
       WRITE (6, 99) DS23, CS21
       WRITE (6, 99) DS24, DS25, DS26

       DO I=1,10
        IF (ABS (CV31(I)) .GT. RS31) THEN
         RS31 = ABS (CV31(I))
         RS32 = REAL (CV31(I))
         RS33 = IMAG (CV31(I))
        END IF

        RV31(I) = 1. / REAL (CV31(I))

        IF (I .NE. 1) CV31(I-1) = (0.,1.) * I
       END DO

       WRITE (6, 99) RS31, RS32, RS33
       WRITE (6, 99) RV31, CV31

   99  FORMAT(8F10.3)
   88  FORMAT(15I5)
       STOP 
      END
