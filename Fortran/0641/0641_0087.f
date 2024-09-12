      PROGRAM MAIN

       INTEGER*4 IV11(10), IV12(10), IV13(10)
       REAL*4 RS12
       COMPLEX*8 CV11(10), CV12(10), CV13(10), CS12


       REAL*4 RV21(10), RV22(10)
       COMPLEX*8 CV21(10), CV22(10)
       LOGICAL*4 LS21, LS22

       DATA RV21/10*2.0/ 
       DATA CV22/5*(.5,.5),5*(1.,2.)/ 
       DATA CV21/5*(.5,.5),5*(1.,2.)/ 


       INTEGER*4 IV31(10)
       LOGICAL*4 LV31(10), LV32(10), LS31
       REAL*8 DV31(10)
       REAL RS31, RS11
       DOUBLEPRECISION DS21
       INTEGER IS22, IS21
       PARAMETER (RS31 = 3.5, DS21 = 3D0, IS22 = 3, IS21 = 1, RS11 = 2.)
       COMPLEX CC1
       REAL RR1
       PARAMETER (CC1 = (1., 0.) / 2, RR1 = 1. / 2.)

       DATA LS31/.TRUE./ 
       DATA DV31/10*0.0/ 
       INTEGER II5, II4, II3, II2, II1
       REAL RR7, RR6, RR5, RR4, RR3, RR2
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       COMPLEX CC4, CC3, CC2

       DO II1=1,6,5
        RV22(II1) = 0.
        RV22(II1+1) = 0.
        RV22(II1+2) = 0.
        RV22(II1+3) = 0.
        RV22(II1+4) = 0.
       END DO
       RR2 = 0.00001 - 2


       DO I=1,9,2
        IV11(I) = I
        IV11(I+1) = I + 1
        II4 = I - 1
        II2 = I
        IV12(I) = II4 * 2 + 2
        IV12(I+1) = II2 * 2 + 2
        RR5 = FLOAT (IV12(I))
        RR4 = FLOAT (IV12(I+1))
        RR6 = RR5 / IV11(I)
        RR3 = RR4 / IV11(I+1)
        DD3 = DFLOAT (IV11(I))
        DD2 = DFLOAT (IV11(I+1))
        DD4 = IV12(I) / DD3
        DD1 = IV12(I+1) / DD2
        IV13(I) = RR6 * DD4
        IV13(I+1) = RR3 * DD1
        CC3 = CMPLX (0, IV13(I))
        CC2 = CMPLX (0, IV13(I+1))
        CV11(I) = SQRT (CC3)
        CV11(I+1) = SQRT (CC2)
        CV12(I) = CV11(I) * CV11(I)
        CV12(I+1) = CV11(I+1) * CV11(I+1)
        CC4 = CV12(I)
        CS12 = CV12(I+1)
        RR7 = CC4 * CC1
        RS12 = CS12 * CC1
        II5 = I - 1
        II3 = I
        II4 = II5 * (-2)
        II2 = II3 * (-2)
        RR6 = RR2 + II4
        RR3 = RR2 + II2
        CC3 = RR7 * CC4
        CC2 = RS12 * CS12
        CC4 = RR6 + CC3
        CS12 = RR3 + CC2
        RR7 = IV12(I) * RR1
        RS12 = IV12(I+1) * RR1
        CV13(I) = 3. + RR7
        CV13(I+1) = 3. + RS12
        IV11(I) = CC4
        IV11(I+1) = CS12
       END DO

       WRITE (6, *) IV11
       WRITE (6, *) IV12
       WRITE (6, *) IV13
       WRITE (6, *) CV11
       WRITE (6, *) CV12
       WRITE (6, *) CV13
       WRITE (6, *) (20)

       DO I=1,9
        LS21 = .TRUE.
        IF (AMOD (FLOAT (I), 3.) - 1.) 21, 22, 23
   21   RV21(I) = I + 1
        CV21(I) = RV21(I+1) * 3D0
        GO TO 25

   22   RV21(I) = I - 3
        CV21(I) = CMPLX (0., RV21(I+1) * 3D0)
        GO TO 25

   23   LS21 = I .GT. 5
        CV21(I) = CMPLX (3D0, -3D0)
        RV21(I) = 3 - I
        IF (LS21) CV21(I) = -CV21(I)

   25   CONTINUE
        IF (AMOD (FLOAT (I), 3.) .LE. 1.) THEN
         IF (I .LE. 7) THEN
          IF (CV21(I) .EQ. CMPLX (IMAG (CV21(I+3)), KIND = 4)) THEN
           LS22 = .TRUE.
          ELSE
           LS22 = .FALSE.
          END IF
          GO TO 28
         END IF
        END IF
        LS22 = .FALSE.

   28   IF (LS21 .AND. LS22) THEN
         RV22(I) = 0.5 * CV22(I)
        ELSE
         IF (LS21 .OR. LS22) GO TO 29
         RV22(I) = 0.
         GO TO 200
   29    RV22(I) = CV22(I) * 2.
        END IF
  200   CONTINUE
       END DO

       WRITE (6, *) RV21
       WRITE (6, *) RV22
       WRITE (6, *) CV21

       DO I=1,10
        LV31(I) = I .GT. 5
        LV32(I) = .NOT.LV31(I) .EQV. 3 .LT. I .AND. I .LT. 7
        IF (LV31(I)) THEN
         DV31(I) = I ** RS31
         IV31(I) = RS31 ** I
        ELSE
         DV31(I) = I * RS31
         IV31(I) = RS31 - I
        END IF
       END DO

       WRITE (6, *) LV31
       WRITE (6, *) LV32
       WRITE (6, *) DV31
       WRITE (6, *) IV31
       STOP 
      END
