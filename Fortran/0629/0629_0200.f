      PROGRAM MAIN
      DIMENSION DV1(10),DV2(10),EV1(10),EV2(10),CV1(10),CV2(10)
      REAL*4    DV1,DV2,EV1,EV2
      COMPLEX*8 CV1,CV2
      INTEGER   K/1/
      DATA      DV1,DV2/2*10.,11*1.5,5*-2.,2*3.75/
      DATA      EV1,EV2/2*2.,2*3.5,12*6.,4*-6./ 
      data CV1/10*3./,CV2/10*4./
      DO 110 I=1,10
        IF(I.GT.9) GO TO 110
        IF(I.NE.1) THEN
           DV1(I)=DV2(I-1)/I
           DV2(I)=EV1(I)*EV2(I)
           EV1(I+1)=IMAG(CV1(I)*CV2(I))
        ENDIF
  110 CONTINUE
      WRITE(6,*) DV1
      K=I-10
       STOP
       END
