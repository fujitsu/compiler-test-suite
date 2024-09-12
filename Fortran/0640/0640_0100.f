      PROGRAM MAIN
      REAL   *4     RS11/3.0/ , RS12/2.0/
      REAL   *8     DV11(10)
      COMPLEX*8     CV11(10)
      COMPLEX*16    CDS11/(0.0D0,1.0D0)/
      REAL   *8     DS21/0.0/,DS22/1.0/,DS23/200.0/,DS24/1.0/
      COMPLEX*8     CS21/(0.,1.)/
      COMPLEX*16    CDV21(10)/3*(1.,2.),3*10,3*-5.,(0.,-10.)/
      LOGICAL*4     LV31(10)/5*.TRUE.,3*.FALSE.,2*.TRUE./
      INTEGER*4     IS31/0/,IV31(10)/10*0/
      REAL   *4     RS31/0./, RS32/0./
      REAL   *8     DV31(10)/10*0./
      DO 100 I=1,10
       DV11(I) = I
       CV11(I) = I
       IF (CV11(I).EQ.CMPLX(3.,0.))
     &   RS11 = RS11 + SNGL(DV11(I))
   11  CV11(I) = CMPLX(REAL(CV11(I)),-REAL(CV11(I)))
       CV11(1) = CV11(1) + CV11(I)
       CDS11   = CDS11 +(DV11(I)/RS12)
  100 CONTINUE
      WRITE(6,*) DV11
      WRITE(6,*) CV11
      WRITE(6,*) RS11
      WRITE(6,*) RS12
      WRITE(6,*) CDS11
      DO 200 I=1,9
        DS22 = MIN ( REAL(CDV21(I)),DS24)
        DS21 = MAX ( DS21,DS22 )
        CDV21(I) = DS22 - I
        CDV21(I+1) = CS21
        DS23 = MIN ((DBLE(CDV21(I))-5)**2,DS23)
  200 CONTINUE
      WRITE(6,*) DS21
      WRITE(6,*) DS23
      WRITE(6,*) CDV21
      DO 300 I=1,10
        IF (I.GT.5) THEN
          IS31 = IS31 + 2
          IV31(I) = I
        ELSE
          RS31 = RS31 + 2.
          DV31(I*2) = I
        ENDIF

        IF (.NOT.(LV31(I).EQV.I.GT.6))
     &    RS32 = IV31(I) + RS32
  300 CONTINUE
      WRITE(6,*) IS31
      WRITE(6,*) IV31
      WRITE(6,*) RS31
      WRITE(6,*) DV31
      WRITE(6,*) LV31
      WRITE(6,*) RS32
      STOP
      END
