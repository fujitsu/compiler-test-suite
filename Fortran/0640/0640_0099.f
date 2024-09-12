      PROGRAM MAIN
      LOGICAL *4   LS11/.TRUE./,LV11(10)/7*.TRUE.,2*.FALSE.,.TRUE./
      REAL    *4   RV11(10)/10*1./
      REAL    *8   DV11(10)/10*1./,DS11/1.5/
      COMPLEX *16  CDS11/(1.5,1.5)/
      INTEGER *4   IS21,IS22/4/
      REAL    *4   RS21
      REAL    *8   DV21(10)
      COMPLEX *8   CV21(10)/5*(1.0,1.0),5*(1.0,-1.0)/,
     &             CV22(0:10)
      LOGICAL *4   LV31(10)/3*.FALSE.,4*.TRUE.,3*.FALSE./
      INTEGER *4   IV31(11)/11*1/
      REAL    *4   RS31/2.0/,RV31(11)/11*2.0/
      COMPLEX *8   CS31/0.0/
      DO 100  I=1,10
        IF (LS11) THEN
         IF (LV11(I).AND.LS11) THEN
           DV11(I) = ABS(CDS11) * DS11 - ABS(CDS11*DS11) + I
         ENDIF
         IF (.NOT.(LS11.AND.LV11(I)))
     &     DV11(I) = ABS(CDS11) * DS11 - ABS(CDS11*DS11) - I
        ENDIF
        IF (LV11(I)) THEN
         IF (9.GT.DV11(I).AND.LS11) GOTO 11
           RV11(I) = DV11(I)
           GOTO 12
   11      RV11(I) = -DV11(I) + 0.5
   12    CONTINUE
        ELSE
           RV11(I) = 0.
        ENDIF
  100 CONTINUE
      WRITE(6,*) DV11,RV11
      DO 200  I=1,10
        DV21(I) = I
   21   CV21(I) = DV21(I)
        IS21 = DV21(I)/IS22
        RS21 =-IS21

        CV22(I) = CV21(I) * (1.0,1.0) / IS22
  200   CV22(I-1)=-CV22(I)
      WRITE(6,*) DV21,CV21,CV22
      DO 300  I=1,10
        IF (LV31(I).AND.I.GT.4)  GOTO 31
         IF (RS31.EQ.2.0) THEN
          IV31(I) = I*I - RV31(I)
          IF (CS31.EQ.0.) IV31(I) = CS31 - RV31(I)
          IF (.NOT.LV31(11-I)) THEN
           IV31(I) = RV31(I) * I
          ELSE
           RV31(I+1) = IV31(I+1)-I
          ENDIF
         ENDIF
         GOTO 300
   31    RV31(I) = I
         IV31(I) = 0
  300 CONTINUE

      WRITE(6,*) LV31,RS31
      WRITE(6,*) IV31,RV31
      STOP
      END
