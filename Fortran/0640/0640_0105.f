      PROGRAM MAIN
      INTEGER *4   IS11/1/,IS12
      REAL    *4   RV11(10),RV12(10)
      REAL    *8   DS11/2.0/
      COMPLEX *8   CV11(10)
      REAL    *8   DV21(0:11)/7*0.,2*-1.,1.,0.,-2./,DS21/10./,DS22/0./, 
     &             DS23/1./,DS24/1./,DS25/0./,DS26/0./
      INTEGER *4   IS21/0/,IS22/0/
      COMPLEX *8   CS21/0./
      REAL    *4   RS31/0./,RS32,RS33,RS34/1.0/,RV31(10)
      COMPLEX *8   CV31(10)/7*(1.0,1.0),3*(0.125,5.0)/
      DO 100  I=1,10
        RV11(I)=I*(5-I)
        CV11(I)=RV11(I)
        CV11(I)=CV11(I)/DS11+IS11-2
        IS12   =RV11(I)*RV11(I)
        RV12(I)=IS12+I
        CV11(I)=IS12
  100 CONTINUE
      WRITE(6,99) RV11,CV11,RV12,CV11
      DO 200  I=1,10
        IF (DS21.GT.DV21(I)) THEN
          DS22 = DV21(I+1)+DV21(I-1)
          DS21 = DV21(I)
        ENDIF
        IF (DV21(I).GT.DS23) THEN
          DS23 = DV21(I)
          IS21 = I
          IS22 = I*2+1
          CS21 = DV21(I)
        END IF
        IF (SIN(DV21(I)).GE.DS24) GOTO 200
          DS24 = SIN(DV21(I))
          DS25 = DV21(I)
          DS26 = COS(DV21(I))
  200 CONTINUE
      WRITE(6,99) DV21
      WRITE(6,99) DS21,DS22
      WRITE(6,88) IS21,IS22
      WRITE(6,99) DS23,CS21
      WRITE(6,99) DS24,DS25,DS26
      DO 300  I=1,10
        IF (ABS(CV31(I)).LE.RS31)  GOTO 31
          RS31 = ABS(CV31(I))
          RS32 = REAL(CV31(I))
          RS33 = IMAG(CV31(I))
   31   CONTINUE
        RV31(I) = RS34/REAL(CV31(I))
   32   IF (I.NE.1 ) CV31(I-1)=(0.,1.)*I
  300 CONTINUE
      WRITE(6,99) RS31,RS32,RS33
      WRITE(6,99) RV31,CV31
 99   FORMAT(8F10.3)
 88   FORMAT(15I5)
      STOP
      END
