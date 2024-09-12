      PROGRAM MAIN
      REAL    *4  RA (10),RB (10,10),RC (10,10,10),RD (10,10,10,10)
      REAL    *8  DB (10,10),DC(10,10,10)
      REAL    *8  QD(10,10,10,10)
      COMPLEX *8  CEB(10,10),CEC(10,10,10)
      COMPLEX *16 CQD(10,10,10,10)
      LOGICAL *1  LBC(10,10,10)
      LOGICAL *4  L4B(10,10),L4C(10,10,10)
      INTEGER *4  IL(10)
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./,RD/10000*1./
      DATA            DB/100*1./,DC/1000*1/
      DATA                                   QD/10000*1/
      DATA                  CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/
      DATA                                   CQD/10000*(1.,1.)/
      DATA                 L4B/100*.TRUE./,L4C/1000*.TRUE./
      DATA                                 LBC/1000*.TRUE./
      DATA  IL/1,2,3,4,5,6,7,8,9,10/,RSUM/0./

      DO 11 I1=1,10
      DO 12 I2=1,10
        RB(I2,I1)=RB(I1,I2)+CEB(I1,I2)
        IF(IL(I2).GT.2.AND.IL(I2).LE.8) THEN
          DB(I1,I2)=RA(I2-1)+RA(I2-2)
          DB(I1,I2)=DB(I1,I2)+1.0
        ENDIF
        DO 13 I3=1,10
          DC(I3,I2,I1)=RC(I3,I1,I1)
          CEC(I3,I2,I1)=CMPLX(RC(I1,I1,I1),RC(I2,I2,I3))
          RS1=CABS(CEC(I3,I2,I1))
          DIF=RB(1,1)-RS1
          IF(DIF) 15,16,16
   16       RA(1)=RS1
   15     DO 14 I4=1,I3
            IF(IL(I3).GT.IL(I2))THEN
              QD(I4,I3,I2,I1)=RB(1,1)
              CQD(I4,I3,I2,I1)=RB(1,1)
            ENDIF
            RC(I3,I2,I1)=RB(I2,I4)
   14     CONTINUE
   13   CONTINUE
   12 CONTINUE
   11 CONTINUE
      WRITE(6,*) '### QD ###'
      WRITE(6,90) QD
      WRITE(6,*) '### CQD ###'
      WRITE(6,90) CQD
      WRITE(6,*) '### RC ###'
      WRITE(6,90) RC
      WRITE(6,*) '### RA ###'
      WRITE(6,90) RA
      WRITE(6,*) '### DC ###'
      WRITE(6,90) DC
      WRITE(6,*) '### CEC ###'
      WRITE(6,90) CEC
      WRITE(6,*) '### DB ###'
      WRITE(6,90) DB
   90 FORMAT(10(2X,F5.2))

      ID1=0
      DO 21 I1=1,10
      DO 22 I2=1,7
        RB(I1,I2)=RB(I1,I2)*DB(I2,I1)
        IF(RB(I1,I2).GT.5.0.OR.RB(I1,I2).LT.-5.0) THEN
          RB(I1,I2)=0.0
          L4B(I1,I2)=.FALSE.
        ELSE
          L4B(I1,I2)=.TRUE.
        ENDIF
          L4B(I1,I2)=L4C(I1,I2,I2).NEQV.L4B(I1,I2)
          RB(I1,I2)=RB(I1,I2)*1.5
          L4C(I1,I2,I2)=.NOT.L4B(I1,I2)
          LBC(I1,I2,I2)=.NOT.L4B(I1,I2)
        DO 23 I3=1,10
        DO 24 I4=10,1,-1
          RD(I4,I3,I2,I1)=RD(I4,I3,I2,I1)*2.+RB(I1,I2)
   24   CONTINUE
   23   CONTINUE
        RA(I1)=RB(I1,I2)
        ID1=ID1+1
        IF(ID1.EQ.50) THEN
          WRITE(6,*) 'ID1=',ID1
        ENDIF
   22 CONTINUE
   21 CONTINUE
      WRITE(6,*) 'RSUM=',RSUM
      WRITE(6,*) '### RD ###'
      WRITE(6,99) RD
      WRITE(6,*) '### L4B ###'
      WRITE(6,95) L4B
      WRITE(6,*) '### L4C ###'
      WRITE(6,95) L4C
      WRITE(6,*) '### LBC ###'
      WRITE(6,95) LBC
   95 FORMAT(20(1X,L2))
   99 FORMAT(10(2X,F5.2))
      STOP
      END


