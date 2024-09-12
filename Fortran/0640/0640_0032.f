      PROGRAM MAIN
      REAL*4  RA(10,10,10),RB(10,10),RC(10),RD(10,10,10),RE(10,10,10)
      REAL*8  DA(10,10,10),DB(10,10),DC(10),DD(10)
      REAL*8  QA(10,10,10),QB(10,10),QC(10)
      INTEGER*2 HA(10,10,10),HB(10,10),HC(10)
      INTEGER*4 IA(10,10,10),IB(10,10),IC(10),IL(10)
      COMPLEX*8  CEA(10,10,10),CEB(10,10),CEC(10)
      COMPLEX*16 CDA(10,10,10),CDB(10,10),CDC(10),CDD(10,10,10)
      COMPLEX*16 CQA(10,10,10),CQB(10,10),CQC(10)
      LOGICAL*1  LBA(10,10,10),LBB(10,10),LBC(10)
      LOGICAL*4  L4A(10,10,10),L4B(10,10),L4C(10)
      CHARACTER  SA*10
      COMMON /BL1/RA,RB,RC,RE,/BL2/CEA,CEB,CEC,/BL3/IL

      DATA    RA/1000*1.0/,RB/100*2.0/,RC/10*3.0/
      DATA    RD/1000*1.0/,RE/1000*2.0/
      DATA    DA/1000*1.0/,DB/100*2.0/,DC/10*3.0/,DD/10*1./
      DATA    QA/1000*1.0/,QB/100*2.0/,QC/10*3.0/
      DATA    HA/1000*1/,HB/100*2/,HC/10*3/
      DATA    IA/1000*1/,IB/100*2/,IC/10*3/
      DATA    IL/1,2,3,4,5,6,7,8,9,10/
      DATA    CEA/1000*(1.,1.)/,CEB/100*(2.,1.)/,CEC/10*(1.,2.)/
      DATA    CDA/1000*(1.,1.)/,CDB/100*(2.,1.)/,CDC/10*(1.,2.)/
      DATA    CQA/1000*(1.,1.)/,CQB/100*(2.,1.)/,CQC/10*(1.,2.)/
      DATA    LBA/1000*.TRUE./,LBB/100*.TRUE./,LBC/10*.TRUE./
      DATA    L4A/1000*.TRUE./,L4B/100*.TRUE./,L4C/10*.TRUE./
      DATA    SA/'FFFFF'/
      DATA    J1/1/,J2/2/,J3/3/,J4/4/,ID3/3/

      RSUM=0.0
      DSUM=0.0
      ID1=1
      DO 10 I1=9,2,-1
        ID2=2
        SA='FALSE'

        DO 20 I2=9,2,J1*J2-3
          RA(ID2,ID2+J1,I2)=DA(ID2,ID2+J1,I2)+RB(ID2,ID2+J1)
          RE(ID2,ID2,I2)=RA(ID2-J1,ID2+J1*J2-1,I2)
        CEA(ID1,ID2,ID3+J2-J1)=RA(ID2,ID2+J1,I2)*CEA(ID1,ID2,ID3+J3*J1
     +        -2)
          IF(L4A(ID1,ID2,I2).NEQV.L4B(ID1,ID2)) THEN
          RSUM=RSUM+RE(ID2,ID2,I2)+RA(ID2+IL(1)-1,ID2+J1,I2)
          LBA(ID1,ID2,I2)=.TRUE.
          ELSE
          LBA(ID1,ID2,I2)=.FALSE.
          SA='TRUE'
          ENDIF
          ID2=ID2+1
   20   CONTINUE
          DSUM=DSUM+DIM(RC(I1),REAL(DC(I1)))
          K1=ID1
          K2=I2
          K3=ID1
          K4=ID2
          CALL SUB(K1,K2,K3,K4)
          RC(I1)=RC(I1+IL(1))
        DD(I1)=DSIN(DA(I1,ID1,ID2))+DB(I1,ID1)+DC(I1)+DBLE(RA(ID2,ID2,
     +          I2)+RB(I1,ID1)+RC(I1))
          IF(I1.GT.3.AND.I1.LT.7) THEN
            CEC(I1+IL(1))=CEC(I1+IL(2))
            CDC(I1+2*IL(1))=CEC(I1+IL(1))+CDC(I1+IL(1)+1)
            CQC(I1+IL(1)-1)=CEC(I1+IL(1))+CDC(I1+IL(3)-1)
          ENDIF
   10 CONTINUE
      WRITE(6,*) 'RSUM=',RSUM,'DSUM=',DSUM
      WRITE(6,*) 'SA=',SA
      WRITE(6,*) 'RA=',RA,'RE=',RE,'RC=',RC
      WRITE(6,*) 'CEA=',CEA,'CEB=',CEB,'CEC=',CEC
      STOP
      END

      SUBROUTINE SUB(I1,I2,ID1,ID2)
      REAL*4 RA(10,10,10),RB(10,10),RC(10),RE(10,10,10)
      COMPLEX*8 CEA(10,10,10),CEB(10,10),CEC(10)
      LOGICAL*1 LBA(10,10,10)
      CHARACTER SA*10
      INTEGER*4 IL(10),I1,I2,ID1,ID2
      COMMON /BL1/RA,RB,RC,RE,/BL2/CEA,CEB,CEC,/BL3/IL
      DATA SA/'FFFFF'/
      DATA LBA/1000*.TRUE./
      ID3=0
      DO 10 J1=1,10
        ID3=ID3+1
          RB(J1,ID3)=RC(I1)+RA(ID2,ID2,I1)+RE(ID2,ID2,I2)
          IF(SA.EQ.'FALSE') THEN
            WRITE(6,*) 'LBA=',LBA
          ENDIF
          CEA(ID1,ID2,ID3)=CEC(J1)
   10 CONTINUE
      RETURN
      END




