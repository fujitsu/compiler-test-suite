      PROGRAM MAIN

      INTEGER *4    IS11/1/
      REAL    *4    RS11
      REAL    *8    DV11(10)/3*1.0,7*2.0/
      COMPLEX *8    CV11(10)/ 9*(1.0,1.0),(-1.,2.)/
      LOGICAL *4    LV11(10)/ 8*.TRUE.,2*.FALSE./

      LOGICAL *4    LS21/.TRUE./
      INTEGER *4    IV21(10)/10*0/,IV22(10)
      REAL    *4    RV21(10)/3*Z'40100000',3*Z'C1100000',
     +              3*Z'3F100000',0/
      REAL    *4    RV22(10)/10*0.0/,RV23(10)
      COMPLEX *8    CS21/(2.0,1.0)/

      INTEGER *4   IV31(10)
      COMPLEX *8   CV31(10)/3*(1.,2.),3*(2.,1.),4*(2.,2.)/
      COMPLEX *8   CV32(30),CS31/(10.,10.)/

      DO 100  I=1,10
        IF (I.GT.5)  GOTO  11
          RS11 = DV11 (I) / 2.0
          CV11 (I+5) = CMPLX(RS11,RS11) * 2.0
          GOTO  12

   11     DV11(I) = CV11 (I) - IS11

          IF (LV11 (I) .OR. DV11(I).GT.-IS11) CV11(I) = 0

   12 CONTINUE
  100 CONTINUE

      WRITE(6,*) IS11,DV11,CV11

      DO 201  I=1,10
        IV22 (I) =  RV21 (I) * I
  201   RV23 (I) =  RV21 (I) * I 
      DO 200  I=1,9
        IV21 (I) = IV22(I)
        RV22 (I) = RV23(I)
        IF ( RV22 (I) ) 21,22,23
   21    IF ( IV21 (I) ) 200,200,24
   24      IV21 (I) = IV21 (I) * CS21
           GOTO  200

   22    IF ( LS21 ) IV21 (I) = 100
         GOTO 200

   23    IV21 (I) = 1 + RV22(I) * 10.0D0
         RV22(I+1)= RV21(I) / 16. - CS21
  200 CONTINUE

      WRITE(6,*) RV21
      WRITE(6,*) RV22,RV23
      WRITE(6,*) IV21,IV22

      DO 300  I=1,10
        CV31 (I) = CS31 - CV31 (I)/2.0
   31   IV31 (I) = INT ( IMAG (CS31 - CV31(I)/2) )
        CV32(I*3)=(CV31 (I) - CMPLX(0,IV31(I)))**3
        CV32(I*3-1)=(CV31(I)- CMPLX(0,IV31(I)))**4
        CV32(I*3-2)=(CV31(I)- CMPLX(0,IV31(I)))**5
  300 CONTINUE

      WRITE(6,*) CV31
      WRITE(6,*) CV32
      WRITE(6,*) IV31

      STOP
      END
