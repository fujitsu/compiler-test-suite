      INTEGER*4 J1,J2,J3,J4
      LOGICAL*4 LA(-9:20),LB(-9:20),LC(-9:20),LD(-9:20)
      REAL*4    RA(-9:20),RB(-9:20),RC(-9:20),RD(-9:20)
      REAL*4    RMAX,RPRSM,RPSM(-9:20)
      COMPLEX*8 CE(-9:20),CEA(-9:20),CEB(-9:20),CEC(-9:20),CED(-9:20)
      DATA RA/30*1./,RB/30*2./,RC/30*3./,RD/30*4./
      DATA RPSM/30*0./
      DATA LA/30*.TRUE./,LB/30*.FALSE./,LC/30*.TRUE./,LD/30*.FALSE./
      DATA CEA/30*(1.,0.)/,CEB/30*(1.,1.)/
      DATA CEC/30*(1.,-1.)/,CED/30*(-1.,1.)/
      DATA CE/30*(1.,-1.)/
      DATA J1/1/,J2/2/,J3/3/,J4/4/

      RSUM = 0
      DO 10 I1=J1*J3-J2,J2*J4+J3,J3*J2-J4*J1-J1
        LA(I1)=RA(I1).GT.RB(I1)
        LB(I1)=RA(I1).GT.RA(I1+1)
        LC(I1)=RA(I1).GT.RB(I1+1)
        LD(I1)=RA(I1).GT.RA(I1-1)
        IF(LA(I1).AND.LD(I1).OR.LB(I1).AND.LC(I1)) THEN
           RA(I1)=RA(I1+1)+1.
           RB(I1)=RB(I1+1)+1.
        ENDIF
        IF(RA(I1).EQ.1..OR.RA(I1).GT.RB(I1).OR.RD(I1).GT.RA(I1)) THEN
           RC(I1)=RC(I1)+1.
           RD(I1)=RD(I1)+1.
        ENDIF
        IF(LA(I1).EQV.LC(I1)) THEN
          LA(I1)=.TRUE.
          LC(I1)=.TRUE.
        ENDIF
   10 CONTINUE
      WRITE(6,*) 'LA=',LA

      ID=J1*J3-J2
      DO 20 I2=-J1*J3+1,J1*J2*J3+J4*J2-J2,J1*J2-J1
        CE(I2)=CEA(I2)*CEB(I2)
        CEC(I2)=CEA(I2)*CEC(I2)
        IF(REAL(CE(I2)).GT.REAL(CEC(I2)).OR.IMAG(CE(I2)).GT.
     +    IMAG(CEC(I2))) THEN
          CE(I2)=CE(I2)+REAL(CEC(I2))
          CE(I2)=CE(I2)+IMAG(CEC(I2))*(0.,1.)
        ENDIF
        IF(CABS(CE(I2)).GT.3..AND.CABS(CEC(I2)).GT.3.0) THEN
          CE(I2)=(1.,1.)
          CEC(I2)=(1.,1.)
        ENDIF
        ID=ID+J1*J2-1
        CE(I2-1)=CE(I2)+CE(ID)+CEC(I2+1)*CEC(I2)+CONJG(CE(I2)+CE(ID))
     +           +CONJG(CEC(I2+1)*CEC(I2))
   20 CONTINUE
      WRITE(6,*) 'CE=',CE

      RMAX=RA(J3*J2*J1-J2*J2-J3*J1)
      DO 30 I3=J3*J2*J1-J2*J2-J3*J1,J2*J4+3,J3*J1-J2
        RPRSM=RA(I3)+RB(I3)
        RA(I3)=RB(I3)*RC(I3)+IMAG(CEA(I3))
        RB(I3)=RB(I3)*RC(I3)+REAL(CEA(I3))
        RPSM(I3)=RPRSM+RA(I3)+RB(I3)
        RSUM=RSUM+RPSM(I3)
        IF(RSUM.LE.100.) THEN
          CEA(I3)=CEA(I3)+CEB(I3)*CEC(I3)
          CEA(I3)=CED(I3)*(0.,1.)
        ELSE
          CEA(I3+1)=(1.,1.)
        ENDIF
        IF(RMAX.LT.RA(I3)) THEN
        RMAX=RA(I3)
        ENDIF
   30 CONTINUE
      WRITE(6,*) 'RSUM=',RSUM,'RMAX=',RMAX
      STOP
      END
