      REAL*4 RA(-9:20),RB(-9:20),RC(-9:20),RMAX,RSUM
      COMPLEX*8 CEA(-9:20),CEB(-9:20),CEC(-9:20),CED
      INTEGER*4 I1,I2,I3,ID,J1,J2,J3,J4,IMX
      DATA RA/30*1./,RB/30*2./,RC/10*1.0,10*2.,10*3./
      DATA CEA/30*(1.0,0.0)/,CEB/30*(0.0,1.0)/,CEC/30*(1.0,1.0)/
      DATA ID/1/,RMAX/-100./,RSUM/0.0/
      DATA J1/1/,J2/2/,J3/3/,J4/4/

      DO 10 I1=J3*J1*J2-J4*J2+J1,J3*J4+J1*J2-J4,2
        IF(RA(I1).LT.RB(I1)) GO TO 1
        RA(I1)=RA(I1)-RB(I1)
    1   RB(I1)=REAL(CEA(I1)+CEB(I1)*CEC(I1))*IMAG(CEA(I1))
        ID=ID+1
        IF(ID-4) 2,3,5
    2   IF(RB(I1).GT.2.) GO TO 5
          RB(I1)=I1+ID
    3   IF(RB(I1).LE.2.AND.REAL(CEA(I1)).LT.0.) THEN
          RB(I1)=ID
        ELSE
          RB(I1)=RA(I1)
          CEA(I1)=REAL(CEA(I1))*(1.,0.)+IMAG(CEB(I1))*(0.,1.)
          GO TO 5
        ENDIF
      RC(I1)=I1
    5 RMAX=MAX(RMAX,RB(I1))
      IMX=I1
   10 CONTINUE
      WRITE(6,*) 'RMAX= ',RMAX
      WRITE(6,*) 'IMX = ',IMX

      DO 20 I2=J2*J3-J4*J1-J2*J1,J3*4-1,J2*J3-5
      IF(RB(I2)) 6,7,8
    6 GO TO 9
    7 IF(RA(I2-1).GT.1.) GO TO 6
        CED=J1+RB(I2)*(0.,1.)
        RA(I2-1) = REAL(CEXP(CED))
        GO TO 9
    8 RA(I2-1)=IMAG(CEA(I2))
    9 IF(I1.GT.8)THEN
        GO TO 20
      ELSE
        RB(I2)=RA(I2)*IMAG(CEA(I1+J1*J2-J3))
      ENDIF
   20 CONTINUE
      WRITE(6,*) '### RA ###'
      WRITE(6,90) RA
      WRITE(6,*) '### RB ###'
      WRITE(6,90) RB
   90 FORMAT(5(1X,F14.7))

      ID=1
      DO 30 I3=J3*J2-7,J2*J3+J4*J1+J2,J3*J2-J4*J1-J1
        RA(I3)=RA(I3)+RB(I3-1)+RB(I3-2)
        CEA(I3)= RA(I3)+RB(I3)*(0.,1.)
        ID=ID+J3*J2*J1-J4*J1-1
        IF(CEA(I3)-CEA(I3+1).NE.(-1.0,1.0)) THEN
          CEA(I3)=(-1.0,1.)
        ELSE
          CEA(I3)=CEA(I3+1)
        ENDIF
        RSUM=RSUM+CABS(CEA(I3+1))
        IF(RC(ID+1).LT.RC(ID+2)) GO TO 30
          RC(ID+1)=RC(ID+2)+RC(ID+1)
   30   CONTINUE
      WRITE(6,*) 'RSUM= ',RSUM
      WRITE(6,*) '### RC ###'
      WRITE(6,90) RC
      STOP
      END
