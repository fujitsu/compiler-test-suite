      REAL*4 RA(-9:20),RB(-9:20),RMAX
      REAL*4 RC(-9:20),RD(-9:20),RSUM
      INTEGER*4 IA(-9:20),IB(-9:20),J1,J2,J3,J4
      REAL*8 DA(-9:20)
      COMPLEX*8 CEA(-9:20),CEB(-9:20)
      COMPLEX*8 CEC(-9:20),CED(-9:20)
      DATA RA/30*1./,RB/30*2./
      DATA RC/30*1./,RD/30*2./
      DATA IA/30*1/,IB/30*1/
      DATA DA/30*1./
      DATA CEA/30*(1.,0.)/,CEB/30*(2.,1.)/
      DATA CEC/30*(1.,0.)/,CED/30*(2.,1.)/
      DATA J1/1/,J2/2/,J3/3/,J4/4/

      DO 10 I1=10,-3,-1
        IF(IA(I1+1).EQ.J4) THEN
          IA(I1)=1.
          GO TO 10
        ENDIF
        IA(I1)=IA(I1+1)+1
 10   CONTINUE
      WRITE(6,*) 'IA= ',IA

      DO 20 I2=1,10
        RA(I2)=RA(I2)
        RB(I2)=DA(I2)
        IF(I2.GE.5) GO TO 21
        DA(I2)=DFLOAT(I2+1)
 22     CEA(I2)=DA(I2)+RA(I2)+RB(I2)*(0.,1.)
 20   CONTINUE
      WRITE(6,*) 'RA= ',RA,'RB= ',RB
      GO TO 23
 21   DA(I2)=RC(I2)+RD(I2)
      GO TO 22

 23   RMAX=0.0
      RSUM=0.0
      DO 30 I3=1,10
  50    RMAX=MAX(RMAX,CABS(CEA(I3)),CABS(CEB(I3)),CABS(CEC(I3)))
  51    CEA(I3)=CEA(I3)**2
  52    RSUM=RSUM+CABS(CEA(I3))
  53    RC(I3)=CEA(I3)
  54    RD(I3)=CEB(I3)*(0.,1.)+CEC(I3)*CED(I3)
  30  CONTINUE
      WRITE(6,*) 'RMAX=  ',RMAX,'RSUM= ',RSUM
      STOP
      END
