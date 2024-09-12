      PROGRAM MAIN
      LOGICAL *4   L(10)/6*.TRUE.,4*.FALSE./
      REAL    *4   RV11(10)/1.,2.,3.,4.,10.,9.,8.,7,6,5/
      REAL    *8   DS11/3./, DS12/ 4./
      COMPLEX *8   CV11(10)/5*(5.,5.),5*(0.,5.)/,CS11/(10.,4.)/
      INTEGER *4   IV21(10)/5*2,5*-2/
      REAL    *4   RS21/0./,RS22/0./
      COMPLEX *8   CS21/(0.,0.)/,CS22/(0.,1.)/
      REAL    *4   RV31(10)/2.,1.,10.,7*3./ ,
     &             RV32(10)/1.,2., 5.,0.,6*3./
      REAL    *8   DS31/0./,DS32/0./
      INTEGER *4   IS31/-1000000/,IS32/1000000/
      COMPLEX *8   CV31(10)/5*(3.,0.),5*(0.5,0.1)/
      DO 100  I=1,10
        IF  (L(I))  THEN
          DS11 = MAX (DS11,RV11 (I))
          DS12 = MIN (RV11(I),DS12)
          CV11(I) = CMPLX(MAX(REAL(CV11(I)),IMAG(CS11)) ,
     &                    IMAG(CV11(I)))
          IF (L(11-I)) CV11(I) = (10.0,10.0)
        END IF
  100 CONTINUE
      WRITE(6,*) DS11, DS12, CV11
      DO 210  J=1,2
       DO 200  I=1,2
        IF (CS21.EQ.CS22) THEN
         RS21 = RS21 + ABS(IV21(I))*I
        ELSE
         RS22 = RS22 + ABS(IV21(I))*I
         IV21(I) = IV21(I) * 2
        END IF
  200  CONTINUE
       WRITE(6,*) CS21,CS22
       WRITE(6,*) RS21,RS22,IV21
  210  CS21 = CS22
      DO 300  I=1,10
        DS31 = MAX(RV31(I),(RV31(I)+RV32(I))/2 ,SQRT(RV31(I)*RV32(I)) , 
     &                                                          DS31)
        DS32 = MIN(RV31(11-I),(RV31(I)+RV32(I))/2,
     &                       SQRT(RV31(11-I)*RV32(11-I)) ,DS32)
        IS31 = MAX(IS31,( MIN(INT(CV31(I)),INT(RV31(I)))))
  300   IS32 = MIN(IS32,(-1)**I)
      WRITE(6,*) DS31,DS32,IS31,IS32
      STOP
      END
