  !             CVCT3121            LEVEL=3        DATE=83.08.08
  !             CVCT3121            LEVEL=1        DATE=83.02.08
  !*********************************************************************C 
  !  1. PROGRAM NAME   : CVCT3121                                       C 
  !  2. PURPOSE        : SFGC-STAGE2                                    C 
  !  3. RESULTS        : V-S                                            C 
  !  4. ENVIRONMENT    : VPLEVEL(3)                                     C 
  !  5. HISTORY        : 1983-1-25                                      C 
  !  6. CONTENTS       :  1. S:S & S:S   (USER'S INDUCTION VARIABLE)    C 
  !                       2. S:RC & RC:S ( --     --        --     )    C 
  !                       3. V:C         (TUNING MESSAGE)               C 
  !                       4. V:V         ( --     --    )               C 
  !                       5. NOVREC      ( --     --    )               C 
  !                       6. SUM , FIND                                 C 
  !                       7. EQUIVALENCE                                C 
  !*********************************************************************C 
  !
  ! ******** CVCT3121 *******
  REAL*4  RA(10,10,10),RB(10,10),RC(10),RE(10,10)
  REAL*8  DA(10,10,10),DB(10,10),DC(10),DD(10,10,10)
  REAL*8  QA(10,10,10),QB(10,10),QC(10)
  INTEGER*2 HA(10,10,10),HB(10,10),HC(10)
  INTEGER*4 IA(10,10,10),IB(10,10),IC(10),IL(10)
  type TAG1
     COMPLEX*8  CEA(10,10,10),CEB(10,10),CEC(10)
  end type TAG1
  type(TAG1)st1
  COMPLEX*16 CDA(10,10,10),CDB(10,10),CDC(10),CDD(10,10,10)
  LOGICAL*1  LBA(10,10,10),LBB(10,10),LBC(10)
  type TAG2
  LOGICAL*4  L4A(10,10,10),L4B(10,10),L4C(10)
  end type
  type(TAG2)st2
  CHARACTER  SA*10,SB*20
  ! ****** CVCT3121 ******
  DATA    RA/1000*1.0/,RB/100*2.0/,RC/10*3.0/
  DATA    RE/100*2.0/
  DATA    DA/1000*1.0/,DB/100*2.0/,DC/10*3.0/
  DATA    QA/1000*1.0/,QB/100*2.0/,QC/10*3.0/
  DATA    HA/1000*1/,HB/100*2/,HC/10*3/
  DATA    IA/1000*1/,IB/100*2/,IC/10*3/
  DATA    IL/1,2,3,4,5,6,7,8,9,10/
  DATA    st1%CEA/1000*(1.,1.)/,st1%CEB/100*(2.,1.)/,st1%CEC/10*(1.,2.)/
  DATA    CDA/1000*(1.,1.)/,CDB/100*(2.,1.)/,CDC/10*(1.,2.)/
  DATA    LBA/1000*.TRUE./,LBB/100*.TRUE./,LBC/10*.TRUE./
  DATA    st2%L4A/1000*.TRUE./,st2%L4B/100*.TRUE./,st2%L4C/10*.TRUE./
  DATA    SA/'FACOM'/,SB/'FACOM OS4'/
  DATA    J1/1/,J2/2/,J3/3/,J4/4/,N/1/,NN/2/
  ! ******* CVCT3121 ******
  CSUM=(0.,0.)
  RSUM=0.0
  DO I1=8,3,-1
     IF(N.GE.-2.AND.N.LE.0) THEN
        RC(I1+N)=RC(I1)
        IF(NN.GT.N.AND.NN.GE.-2.AND.N.LE.0) THEN
           st1%CEC(I1+N)=st1%CEC(I1+NN)
        ENDIF
     ENDIF
     DC(I1)=DC(1)
     RSUM=RSUM
     IF(st1%CEC(I1).EQ.(1.,1.).OR.CABS(st1%CEC(I1)).GE.1.5) THEN
        CSUM=CSUM+st1%CEC(I1)
     ENDIF
     ID2=1
     !VOCL LOOP,NN=2,N=1,I1.GT.0
     DO I2=8,3,-1
        RB(I2+N,I2+N-1)=RB(I2,I2)
        st1%CEB(I2+N,I2)=st1%CEB(I2+NN,I2+NN)
        IF(st2%L4B(I1,I2).NEQV.st2%L4B(I1+N,I2).OR.st1%CEB(I2,I2).NE.(1.,1.) &
             .OR.RB(I1,I2).GE.3.0.OR..NOT.st2%L4C(I2)) THEN
           LBB(I2,I1)=.TRUE.
           CDB(I1,I2)=(1.,1.)
        ELSE
           IF(st2%L4B(I1,I2)) THEN
              st2%L4C(I2-IL(2))=st2%L4C(I2-IL(1))
              st2%L4B(I1,I2)=.FALSE.
           ELSE
              st2%L4B(I1,I2)=.TRUE.
           ENDIF
        ENDIF
        ID3=8
        RMIN=0.
        RMX=0.
        J=0
        DO I3=2,8
           DIF=RMIN-RA(I1,I2,I3)
           RMX=MAX(RMX,DA(I1,I2,ID3))
           ID3=ID3-1
           IF(DIF) 31,31,32
32         RMIN=RA(I1,I2,I3)
           J=I3
31         RA(I1-N,I2,I3-IL(1))=DA(I1,I2,I3)
30      END DO
        IF(CDA(I1,I2,ID3).EQ.(1.,1.)) THEN
           CDA(I1,I2,ID3)=(1.,1.)
           IF(ID2.LE.3) GO TO 40
        ENDIF
        CDB(I2,ID3)=CDB(I2,ID3+1)
        CDA(I1,I2,ID3)=CDA(I1,I2,ID3+1)
40      WRITE(6,*) '*** CVCT3121 ** SFGC.2 **'
        WRITE(6,*) 'RMIN=',RMIN,'J=',J
        WRITE(6,*) 'RMX=',RMX
        ID2=ID2+1
20   END DO
     WRITE(6,*) 'CDB=',CDB,'L4B=',st2%L4B
     ID5=0
     RSM5=0
50   CONTINUE
     ID5=0
     RSM5=RSM5+RC(I1)
     IF(ID5.EQ.5) GO TO 50
10 END DO
  WRITE(6,*) 'RSM5=',RSM5
  WRITE(6,*) 'RSUM=',RSUM,'CSUM=',CSUM
  STOP
END program




