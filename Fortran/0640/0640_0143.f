      PROGRAM MAIN
      DIMENSION DV1(10),DV2(10),DV3(10),
     &          EV1(10),EV2(10),EV3(10),
     &          CV1(10),CV2(10)
      REAL*8    DV1,DV2,DV3
      REAL*4    EV1,EV2,EV3,EMX/-99999999./
      COMPLEX*8 CV1,CV2,CV3
      INTEGER   NV1(10)/10*2/,J/1/,K/1/
      DIMENSION CV3(10)
      DATA      DV1,DV2,DV3/2*10.,11*1.5,5*-2.,9*3.75,3*0/
      DATA      EV1,EV2,EV3/2.,2*3.5,12*6.,5*-6.,5*1,4*5,2./
      DO 10 I=1,10
       CV1(I)=DV1(I)*EV2(I)+(0.,-1.)*DV3(I)
       CV2(I)=DV3(I)/EV1(I)-EV2(11-I)-(1.,1.)*(EV2(I)-EV1(I))
       CV3(I)=CV2(I)**2
 10   CONTINUE
      DO 110 I=1,10
      IF(I.GT.9) GO TO 110
      IF(I.NE.1) THEN
         DV1(I)=DV2(I-1)/I
         NV1(I)=I*2+1
         DV2(I)=EV1(I)*EV2(I)
         DV2(9)=DV2(9)+DV2(I)
         EV1(I+1)=IMAG(CV1(I)*CV2(I))
         J=J-5
         NV1(I)=J+NV1(I)
         CV2(I+1)=(999.,999.)
      ENDIF
  110 CONTINUE
      WRITE(6,1) DV1
      WRITE(6,*) DV2
      WRITE(6,*) EV1
      WRITE(6,*) CV2
      WRITE(6,*) NV1
      K=I-10
      DO 210 I=1,10
      IF(I.LE.9) THEN
      IF(I.EQ.1) GOTO 210
         DV1(I)=DV2(I-1)/I
         DV2(I)=EV1(I)*EV2(I)
         DV2(1)=DV2(1)+DV2(I)
         NV1(K)=J+NV1(K+1)*K
         EV1(I+1)=IMAG(CV1(I)*CV2(I))
         IF (EMX.LT.EV3(I)) THEN
          EMX=EV3(I)
          LIX=EV1(I)*EV1(I)
         ENDIF
         J=J-5
         K=K+1
         CV2(I+1)=(999.,999.)
       ENDIF
  210  CONTINUE
      WRITE(6,*)
      WRITE(6,1) DV1
      WRITE(6,*) DV2
      WRITE(6,*) EV1
      WRITE(6,*) CV2
      WRITE(6,*) NV1
 1    format(2f20.13)
       STOP
       END
