      PROGRAM MAIN

      INTEGER*4     IV11(10),IV12(10),IV13(10)
      REAL   *4     RS11,RS12
      COMPLEX*8     CV11(10),CV12(10),CV13(10),CS12

      DATA          J / 0 / , RS11 / 2.0 /

      INTEGER*4     IS21,IS22
      REAL   *4     RV21(10),RV22(10)
      COMPLEX*8     CV21(10),CV22(10)
      REAL   *8     DS21
      LOGICAL*4     LS21,LS22

      DATA          IS21,IS22 / 1, 3 /, DS21 / 3.0 /
      DATA          RV21 / 10 * 2.0 /, CV22 / 5*(.5,.5),5*(1.,2.)/
      DATA          CV21 / 5*(.5,.5),5*(1.,2.)/

      INTEGER*4     IV31(10)
      LOGICAL*4     LV31(10),LV32(10),LS31
      REAL   *4     RS31
      REAL   *8     DV31(10)

      DATA          LS31 / .TRUE. / , RS31 / 3.5 /
      DATA          DV31 / 10*0.0 /

      RV22 = 0

      DO 100 I=1,10
       IV11(I) = I
       J = J + 2
       IV12(I) = J
       IV13(I) = FLOAT(IV12(I))/IV11(I) *(IV12(I) / DFLOAT(IV11(I)))
       CV11(I) = SQRT(CMPLX(0,IV13(I)))
       CV12(I) = CV11(I) ** INT(RS11)
       CS12    = CV12 (I)
       RS12    = CS12 / 2
       CS12    = RS12 * CS12 + 0.00001 - J
       RS12    = IV12(I) / 2.
       CV13(I) = RS12 + 3.
       IV11(I) = CS12
  100 CONTINUE

      WRITE(6,*) IV11
      WRITE(6,*) IV12
      WRITE(6,*) IV13
      WRITE(6,*) CV11
      WRITE(6,*) CV12
      WRITE(6,*) CV13
      WRITE(6,*) J

      DO 200 I=1,9
       LS21 = .TRUE.
       IF (AMOD(FLOAT(I),3.)-1.) 21,22,23
   21    RV21(I) = IS21 + I
         CV21(I) = RV21(I+1) * DS21
         GOTO  25

   22    RV21(I) = I - IS22
         CV21(I) = CMPLX ( 0., DS21*RV21(I+1))
         GOTO  25

   23    LS21 = I.GT.5
         CV21(I) = CMPLX ( DS21,-DS21 )
         RV21(I) = IS22 - I
         IF (LS21)  CV21(I) = -CV21(I)

   25  CONTINUE
       IF (AMOD(FLOAT(I),3.)-1.) 26,26,27
   26    IF (I+3.GT.10) GOTO 27
         IF (CV21(I) .EQ. IMAG(CV21(I+3))) THEN
           LS22 = .TRUE.
         ELSE
           LS22 = .FALSE.
         ENDIF
         GOTO  28
   27    LS22 = .FALSE.
   28  IF (LS21.AND.LS22) THEN
         RV22(I) = 0.5 * CV22(I)
       ELSE
         IF (LS21.OR.LS22) GOTO  29
           RV22(I) = 0.
           GOTO  200
   29    RV22(I) = CV22(I) * 2.
       END IF
  200 CONTINUE

      WRITE(6,*) RV21
      WRITE(6,*) RV22
      WRITE(6,*) CV21

      DO 300  I=1,10
        LV31(I) = I .GT. 5
        LV32(I) = .NOT.LV31(I).EQV.(3.LT.I).AND.(I.LT.7)
        IF( LS31 .AND. LV31(I)) THEN
          DV31(I) = I ** RS31
          IV31(I) = RS31 ** I
        ELSE IF (LS31) THEN
            DV31(I) = I * RS31
            IV31(I) = RS31 - I
        ENDIF
  300 CONTINUE

      WRITE(6,*) LV31
      WRITE(6,*) LV32
      WRITE(6,*) DV31
      WRITE(6,*) IV31
      STOP
      END
