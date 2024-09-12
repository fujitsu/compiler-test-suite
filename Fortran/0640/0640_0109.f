      PROGRAM MAIN
      INTEGER *4   IV11(10)/1,2,3,4,5,6,7,8,9,10/,
     &             IV12(10)/1,9,8,7,6,5,4,3,2,1/,IS11/2/,IS12
      REAL    *8   DS12/2.0/,DS13/3.0/
      REAL    *4   RV11(10)/5*3.,5*2.5/
      COMPLEX *16  CS11/(1.,1.)/,CS12/(0.5,.1)/
      REAL    *8   DS21/1./,DS22/0./,DS23/0./,DS24/0.1/
      REAL    *4   RV21(10)/-1,0,1,2,3,4,5,6,7,8/
      COMPLEX *16  CV21(2)/0,0/,CS21/(0.,2.)/
      LOGICAL *4   LS32/.FALSE./
      REAL    *4   RV31(10)/3*4.0,5*-1.,2*5./,RV32(10)/10*2./,RS31/10/
      REAL    *8   DS32,DV31(10)/1.,1*8.,8*4./
      COMPLEX *8   CS31/(1.,1.)/,CV31(10)
      RS34 = 0
      DO 100  I=1,10
        IV11(10)=IV11(10)+IS11
        IV12(I) = IV11(I)-DS12 / 2.
        DS13 = MIN(RV11(I),DS12**2.,DS13)
        RV11(1)= IV11(2)*IV11(1)-IV12(I)+RV11(I)+RV11(1)
        IS12 = RV11(I)/2.-3
        RV11(10)=RV11(10)+SNGL(DS12)
        CS11 = CS11 + IS12 * I + CS12
  100 CONTINUE
      WRITE(6,444) IV11
      WRITE(6,444) IV12
      WRITE(6,444) DS13
      WRITE(6,444) RV11
      WRITE(6,444) CS11
      DO 200  I=1,10
        CV21(1) = CV21(1) +(CS21 * RV21(11-I) - DS21)
        IF(I.LT.9) DS22 = MAX ( RV21(I),DS22 )
        DS23 = MAX ( DS23 , DS21 )
        CV21(2) = CV21(2) + CS21
        IF (RV21(I).LT.3)  THEN
          DS24 = MAX ( DS24 , RV21(I) - 3 )
        ENDIF
  200 CONTINUE
      WRITE(6,444) CV21
      WRITE(6,444) DS22,DS23,DS24
      DO 300  I=1,10
        IF (LS32) THEN
          RV31(1+I*10) = DPROD(RS31,REAL(DV31(11-I)))
     &         + DV31(10)
         ELSE
          CV31(I)=CS31*I-CABS(CS31*I)**2
        END IF
        DS32   = SIGN( REAL(CS31 * RV31(I)),-RV31(I))
        IF (DS32.GT.RS34)  RS34 = DS32
        DV31(I)=DPROD(RV31(I),RV32(I))-I
  300 CONTINUE
      WRITE(6,444) CV31
      WRITE(6,444) DV31
      WRITE(6,444) RV31
      WRITE(6,444) RS34
  444 format(10g20.6)
      STOP
      END
