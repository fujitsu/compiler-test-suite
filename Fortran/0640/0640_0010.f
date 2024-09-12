      REAL*4 RA(-9:20),RB(-9:20),RC(-9:20),RD(-9:20)
      REAL*4 RE(-9:20),RDIF,RDIF2
      COMPLEX*8 CEA(-9:20),CEB(-9:20),CEC(-9:20),CED(-9:20),CSUM
      INTEGER*4 I1,I2,I3,J1,J2,J3,J4,IMN,IMN2,IA(-9:20)
      DATA RA/30*1./,RB/30*2./,RC/30*3./,RD/30*4./,RE/30*5./
      DATA CEA/30*(1.,1.)/,CEB/30*(1.,1.)/
      DATA CEC/30*(2.,2.)/,CED/30*(2.,2.)/
      DATA J1/1/,J2/2/,J3/3/,J4/4/,I2/1/
      DATA IA/15*-1,15*1/
      DATA CSUM/(0.,0.)/,RMIN/1000./RMIN2/10000./RDIF2/0./

      IMN = 0
      IMN2 = 0

      ID=J1*J2*J3-J2*J2-J1*J4
      DO 10 I1=J1*J2-4,J4*J2+1,J3*J4*J1-J2*J3*J1-J4-1
        ID=ID+J3*J2-5
        RA(I1)=CEA(I1)+CONJG(CEA(I1))
        RB(I1)=(CEB(I1)+CONJG(CEB(I1)))/2.
        RC(ID)= CEC(ID)*CEC(I1)
        RD(ID)= CED(ID)*CED(I1)
        IF(RA(I1).GT.2.*RB(I1).OR.RC(ID).GT.RD(ID)) THEN
         RA(I1)=2*RB(I2)
         RC(ID)=RD(ID)
        ENDIF
      GO TO 10
    1   RE(I1)=0.0
   10 IF(RE(I1).NE.0.0) GO TO 1
      WRITE(6,*) 'RC=',RC,'RD=',RD

      DO 20 I2=J1*J2-3,J3*J2*J2-J3+J4*J1,2
        IF(IA(I2).GE.0) THEN
          CEA(I2)=CEC(I2)*CEC(I2+IA(I2))+RA(I2)+IA(I2)
          CEB(I2)=CEC(I2)*CEC(I2+IA(I2))+RA(I2)+IA(I2)
        ENDIF
          RB(I2)=CEA(I2)+RC(I2)+IA(I2)
          RC(I2)=CEB(I2)+RC(I2)+IA(I2)
        IF(RB(I2)+CEB(I2).NE.(3.,3.)) THEN
          RB(I2)=0.0
          CEB(I2)=0.0
        ENDIF
      GO TO 20
    2   RA(I2)=0.0
   20 IF(RA(I2).NE.0.0) GO TO 2
      WRITE(6,*) 'CEA=',CEA,'CEB=',CEB
      WRITE(6,*) 'RB=',RB,'RC=',RC

      ID=0
      DO 30 I3=J3*J2*J1-J4*J1-J3,J3*J4+1,J3+J4*J1-J3*J2
      RDIF=RMIN-CEA(I3)
      ID=ID+J3*J2*J1-J4*J2+J3
      RDIF2=RMIN2-CEB(ID)
      CSUM=CSUM+CEA(I3)+CEA(ID)
      IF(RDIF) 4,4,5
    4   RMIN=CEA(I3)
        IMN=I3
    5 IF(RDIF2) 6,6,7
    6   RMIN2=CEB(ID)
        IMN2=ID
      GO TO 30
    7   RA(I3)=0.0
   30 IF(RA(I3).NE.0.0) GO TO 7
      WRITE(6,*) 'RMIN=',RMIN,'IMN=',IMN
      WRITE(6,*) 'RMIN1=',RMIN2,'IMN2=',IMN2
      WRITE(6,*) 'CSUM=',CSUM
      STOP
      END
