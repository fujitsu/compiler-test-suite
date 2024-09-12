      PROGRAM MAIN
      INTEGER *4   IS11
      REAL    *4   RS11/0.0/
      REAL    *8   DV11(10)/5*-1.,5*0./
      COMPLEX *8   CV11(10)/10*(0.,0.)/
      REAL    *4   RS21/0./,RS22/0./,RS23/100./
      COMPLEX *8   CS21/(0.,0.)/,CV22(10),
     &             CV21(10)/(3.0,2.0),(2.0,4.0),8*(0.,0.)/
      REAL    *8   DDIF1,DDIF2,DMAX1,DMAX2,DMIN1,DMIN2,
     &             DV31(10)/10*1./
      INTEGER *4   IDIF1,IDIF2,IMAX1,IMAX2,IMIN1,IMIN2,
     &             IV31(10)/10*1/
      DATA         DMAX1,DMAX2,DMIN1,DMIN2/4*0./
      DATA         IMAX1,IMAX2,IMIN1,IMIN2/4*0/
      DV31(2)=5.
      DV31(5)=-5.
      IV31(2)= 5
      IV31(5)= -5
      DO 100  I=1,9
        IF(3.LE.I.AND.I.LT.7) THEN
          IS11 = I
        ELSE
          IS11 = -I
        ENDIF
        DV11(I) = IS11/2.D0 - RS11
        IF (DV11(I+1)) 11,12,12
   11     IF (RS11.EQ.0 )  DV11(I) = DV11(I) +1
   12   IF (DV11(I).GT.1)  DV11(I) = DV11(I) -1
        CV11(I) = CMPLX (DV11(I))*CMPLX(0,DV11(I))
  100 CONTINUE
      WRITE(6,*) DV11,CV11
      DO 200  I=1,10
        RS21 = RS21 + 3.
        CS21 = CS21 - (1.,3.)
        RS22 = MAX(REAL(CV21(I)),IMAG(CV21(I)),RS22)
        CV22(I) = CV21(I) * I - I
        RS23 = MIN(RS23,MAX(REAL(CV22(I)),IMAG(CV22(I))))
  200 CONTINUE
      WRITE(6,*) RS21,CS21,RS22,CV22,RS23,I
      DO 300  I=1,10
        DDIF1= DMIN1 - DV31(I)
        IF(DDIF1.GT.0.0D0) DMIN1= DV31(I)
        DDIF2= DMIN2 - DV31(I)
        IF(0.0D0.LE.DDIF2) DMIN2= DV31(I)
        DDIF1= DMAX1 - DV31(11-I)
        IF(0.0.GE.DDIF1)  DMAX1 = DV31(11-I)
        DDIF2= DMAX2 - DV31(11-I)
        IF(DDIF2.LT.0.0)  DMAX2 = DV31(11-I)
        IDIF1 = IMIN1-IV31(I)
        IF(IDIF1) 31,32,32
   31     IMIN1 = IV31(I)
   32   IDIF2 = IMIN2-IV31(11-I)
        IF(IDIF2.GT.0) GOTO  34
          IMIN2 = IV31(11-I)
   34   IDIF1 = IMAX1-IV31(I)
        IF(0.GT.IDIF1) GOTO 35
   36     IMAX1 = IV31(I)
   35   IDIF2 = IMAX2 - IV31(I)
        IF(IDIF2) 300,300,37
   37     IMAX2 = IV31(I)
  300 CONTINUE
      WRITE(6,*) DMIN1,DMIN2,DMAX1,DMAX2
      WRITE(6,*) IMIN1,IMIN2,IMAX1,IMAX2
      STOP
      END
