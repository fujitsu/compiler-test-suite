      INTEGER *4   IV11(10)/1,2,3,4,5,6,7,8,9,10/,
     &             IV12(10)/1,9,8,7,6,5,4,3,2,1/,IS11/2/,IS12/10/
      REAL    *4   RS11/0.0/,RS12/2.0/,RS13/3.0/,RS14/0.0/
      REAL    *8   DV11(10)/5*3.,5*2.5/

      REAL    *8   DS20,DS21/1./,DS22/0./,DS23/0./,DS24/0./
      REAL    *4   RV21(10)/-1,0,1,2,3,4,5,6,7,8/
      COMPLEX *16  CV21(2)/0,0/,CS21/(0.,2.)/

      REAL    *4   RV31(10)/3*4.0,5*-1.,2*5./,RV32(10)/10*2./,RS31/10/,
     &             RS32/3./,RS33,RS34/0/,RS35/1./,RS36/0./
      REAL    *8   DS31/4./,DV31(10)/1.,1*8.,8*4./
      COMPLEX *8   CS31/(1.,1.)/

      DO 100  I=1,10
        RS11 = MAX(RS11,RS12)
        IS11 = MIN(IV11(3),IS11)
        RS13 = MIN(SNGL(DV11(I)),RS12,RS13)
        IS12 = MAX(IV11(2),IV11(1)+IV12(I),IS12)
        IS13 = DV11(I)/2.-3
        RS14 = MAX(IS13,RS14)
  100 CONTINUE

      WRITE(6,*) RS11
      WRITE(6,*) RS13
      WRITE(6,*) RS14
      WRITE(6,*) IS11
      WRITE(6,*) IS12

      DO 200  I=1,10
        DS20 = RV21(I) - DS22

        CV21(1) = CV21(1) +(CS21 * RV21(11-I) - DS21)
        IF (0.LE.DS20)  DS22 = RV21(I)

        DS20 = DS23 - RV21(I)
        IF (0.GE.DS20)  DS23 = RV21(I)

        CV21(2) = CV21(2) + CS21

        DS20 = DS24 - RV21(I)
        IF (DS20.LE.0)  DS24 = RV21(I)
  200 CONTINUE

      WRITE(6,*) CV21
      WRITE(6,*) DS22,DS23,DS24

      DO 300  I=1,10
        DV31(10)= RV31(I) +(DPROD(RV31(I),RV31(I))*RV32(I)/DV31(11-I)
     &         + DPROD(RV31(I),RS32)/DS31-DPROD(RS31,REAL(DV31(11-I))))
     &         + DV31(10)

        RS33    = ABS(CS31 * DV31(I))
        IF (RS33.GT.RS34)  RS34 = RS33

        IF (RS35.GT.RS36)  RS36 = RS35
  300 CONTINUE

      WRITE(6,*) DV31
      WRITE(6,*) RS34
      WRITE(6,*) RS36

      STOP
      END
