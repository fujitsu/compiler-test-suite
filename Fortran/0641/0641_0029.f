      PROGRAM MAIN
      REAL*4  RA(10,10,10),RB(10,10),RC(10),RD(10,10,10),RE(10,10)
      REAL*8  DA(10,10,10),DB(10,10),DC(10)
      REAL*8  QA(10,10,10),QB(10,10),QC(10)
      INTEGER*2 HA(10,10,10),HB(10,10),HC(10)
      INTEGER*4 IA(10,10,10),IB(10,10),IC(10),IL(10)
      COMPLEX*8  CEA(10,10,10),CEB(10,10),CEC(10)
      COMPLEX*16 CDA(10,10,10),CDB(10,10),CDC(10),CDD(10,10,10)
      COMPLEX*16 CQA(10,10,10),CQB(10,10),CQC(10)
      LOGICAL*1  LBA(10,10,10),LBB(10,10),LBC(10)
      LOGICAL*4  L4A(10,10,10),L4B(10,10),L4C(10)
      COMMON RA,CEA,DA

      DATA    RA/1000*1.0/,RB/100*2.0/,RC/10*3.0/
      DATA    RD/1000*1.0/,RE/100*2.0/
      DATA    DA/1000*1.0/,DB/100*2.0/,DC/10*3.0/
      DATA    QA/1000*1.0/,QB/100*2.0/,QC/10*3.0/
      DATA    HA/1000*1/,HB/100*2/,HC/10*3/
      DATA    IA/1000*1/,IB/100*2/,IC/10*3/
      DATA    IL/1,2,3,4,5,6,7,8,9,10/
      DATA    CEA/1000*(1.,1.)/,CEB/100*(2.,1.)/,CEC/10*(1.,2.)/
      DATA    CDA/1000*(1.,1.)/,CDB/100*(2.,1.)/,CDC/10*(1.,2.)/
      DATA    CQA/1000*(1.,1.)/,CQB/100*(2.,1.)/,CQC/10*(1.,2.)/
      DATA    LBA/1000*.TRUE./,LBB/100*.TRUE./,LBC/10*.TRUE./
      DATA    L4A/1000*.TRUE./,L4B/100*.TRUE./,L4C/10*.TRUE./
      DATA    J1/1/,J2/2/,J3/3/,J4/4/
      DATA     RMX/0/,JM,JN/0,0/,RSUM/1/

      ID1=10
      CSUM1=0.
      DO 10 I1=2,9
        ID1=ID1-J2*2+J3
        IF(ID1.EQ.I1) GO TO 15
          IF(IABS(ID1-I1).EQ.1) THEN
            IF(ID1.GT.I1) THEN
             RC(I1)=RC(ID1)
            ELSE
             RC(ID1)=RC(I1)
            ENDIF
          ENDIF
   15     CEC(I1+1)=CONJG(CEC(I1+J1))
        ID2=1
        CSUM1=CSUM1+CEC(I1)
        DO 20 I2=9,2,-1
          RB(ID2,ID2+IL(1))=RB(ID2+IL(1),ID2+1)*1.5
          IF(IC(I2).LE.2.AND.IC(I2).GE.0) THEN
            IF(ID2.GE.I1.AND.ID1.GE.I1.AND.I1.GE.I2) THEN
              CEB(ID1,I2)=CEC(I1+1)*CEB(ID1,ID2)
              IF(ID1.GE.ID2) THEN
                CDB(ID1,I2)=CONJG(CDB(ID2,ID2+IL(1)))
              ENDIF
            ENDIF
          ENDIF
          ID3=0
          RSUM3=0.0
          DO 30 I3=9,2,-1
            ID3=ID3+1
            CALL SUB(I1,I2,I3)
            RSUM=RSUM+RA(ID1,ID2,ID3)
   30     CONTINUE
          ID2=ID2+1
          RDIF=RMX-RSUM
          IF(RDIF) 20,20,32
   32     RMX=RSUM
          JM=I2
          JN=ID2
   20   CONTINUE
        WRITE(6,*) 'RMX=',RMX,'JM=',JM,'JN=',JN
   10 CONTINUE
        WRITE(6,*) 'CSUM1=',CSUM1
        WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC
        WRITE(6,*) 'CEA=',CEA,'CEB=','CEC=',CEC
        STOP
        END

      SUBROUTINE SUB ( I1, I2, I3 )
       REAL*4 RA(10,10,10)
       REAL*8 DA(10,10,10)
       COMPLEX*8 CEA(10,10,10)
       COMMON RA, CEA, DA

       DO J1=1,6,5
        CEA(I1,I2,J1) = RA(I1,I1,J1) * (1.,1.)
        CEA(I1,I2,J1+1) = RA(I1,I1,J1+1) * (1.,1.)
        CEA(I1,I2,J1+2) = RA(I1,I1,J1+2) * (1.,1.)
        CEA(I1,I2,J1+3) = RA(I1,I1,J1+3) * (1.,1.)
        CEA(I1,I2,J1+4) = RA(I1,I1,J1+4) * (1.,1.)
        DA(I1,I1,J1) = 0D0
        DA(I1,I1,J1+1) = 0D0
        DA(I1,I1,J1+2) = 0D0
        DA(I1,I1,J1+3) = 0D0
        DA(I1,I1,J1+4) = 0D0
       END DO
       RETURN 
      END
 
 
 
