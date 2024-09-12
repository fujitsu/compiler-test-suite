      REAL*4 RA(-9:20),RB(-9:20),RSUM,RDIF,RMIN,RMAX,MR
      REAL*8 DA(-9:20),DB(-9:20)
      COMPLEX*8 CEA(-9:20),CEB(-9:20),CED
      COMPLEX*16 CDA(-9:20),CDB(-9:20)
      INTEGER*4 I1,I2,J1,J2,J3,J4,IMX
      LOGICAL*4 LA(-9:20),LB(-9:20),LC(-9:20)
      DATA RA/30*1./,RB/30*2./,RSUM/0./
      DATA DA/30*1./,DB/30*2./
      DATA CEA/30*(1.,1.)/,CEB/30*(0.,1.)/
      DATA CDA/30*(1.,1.)/,CDB/30*(0.,1.)/
      DATA LA/30*.TRUE./,LB/30*.FALSE./,LC/30*.TRUE./
      DATA J1/1/,J2/2/,J3/3/,J4/4/

      IMX = 0
      MR = 0
      RMAX=0.0
      RMIN=0.0

      DO 10 I1=J3*J1-5,10,J3*J2-J4
      RDIF=RMAX-CABS(CEA(I1))
      IF(RDIF) 2,1,1
    1   RMAX=CABS(CEA(I1))
        IMX=I1
        MR=RA(I1)
    2 RMIN = MIN(RMIN,CABS(CEA(I1)))
      LA(I1)=CEA(I1).EQ.(2.,2.)
      LC(I1)=CEB(I1).NE.(1.,1.)
      IF(LA(I1).OR..NOT.LC(I1).OR.CABS(CEA(I1)).GT.2.) THEN
         LA(I1)=.TRUE.
         LC(I1)=.TRUE.
      ELSE
         LA(I1)=.FALSE.
         LC(I1)=.FALSE.
      ENDIF
   10 CONTINUE
      WRITE(6,*) 'LA=',LA,'LC=',LC
      WRITE(6,*) 'RMAX=',RMAX,'RMIN=',RMIN,'IMX=',IMX,'MR=',MR

      ID=J1*J2-1
      DO 20 I2=-3,10,2
        IF(CABS(CEA(I2)+CEB(ID))-2.0) 3,4,5
    3   IF(CEA(I2).EQ.(1.,1.)) GO TO 6
          CEA(I2)=(1.,1.)
          GO TO 6
    4   CEA(I2)=CEB(ID)+(2.0,0.)
          GO TO 6
    5   CEA(I2)=CEB(ID)
    6 DA(I2)=CDA(I2)*CDB(I2)+DA(I2)+RA(I2)
      DB(ID)=CDA(ID)*CDB(ID)+DB(ID)+RB(ID)
      IF(DA(I2).EQ.DB(ID)) THEN
        DA(I2)=DB(ID)+RA(I2)
      ELSE
        DA(I2)=DB(ID)
      ENDIF
      RSUM=RSUM+DA(I2)+DB(ID)+RA(I2)**2
      IF(RA(I2).GT.100.) THEN
        DA(I2)=0.0
        DB(ID)=0.0
      ENDIF
      CED=CDA(I2)+CDB(I2)
      RA(I2+1)=CABS(CED)
      GO TO 20
    7   LA(I2)=.TRUE.
        LB(ID)=.FALSE.
   20 IF(DA(I2).EQ.0..AND.DA(I2).EQ.0.) GO TO 7
      WRITE(6,*) 'RSUM=',RSUM
      WRITE(6,*) 'LA=',LA,'LB=',LB
      STOP
      END
