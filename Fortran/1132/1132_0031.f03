!             CVCT3118            LEVEL=4        DATE=83.08.08
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT3118                                       C 
!  2. PURPOSE        : SFGC-STAGE2                                    C 
!  3. RESULTS        : V-S                                            C 
!  4. ENVIRONMENT    : VPLEVEL(3)                                     C 
!  5. HISTORY        : 1983-1-25                                      C 
!  6. CONTENTS       :  1. S:S & S:S   (USER'S INDUCTION VARIABLE)    C 
!                       2. S:RC & RC:S ( --     --        --     )    C 
!                       3. V:C         (TUNING MESSAGE)               C 
!                       5. NOVREC      ( --     --    )               C 
!                       6. FIND                                       C 
!                       7. EQUIVALENCE                                C 
!*********************************************************************C 
!
! ******** CVCT3115 *******
PROGRAM CV3118
  type TAG1
  REAL*4  RA(10,10,10)
  REAL*4  RB(10,10),RC(10),RE(10,10)        
  end type
  type(TAG1) st1
  type TAG2
  REAL*8  DA(10,10,10),DB(10,10),DC(10)
  end type
  type(TAG2) st2
  REAL*8  QA(10,10,10),QB(10,10),QC(10)
  INTEGER*2 HA(10,10,10),HB(10,10),HC(10)
  INTEGER*4 IA(10,10,10),IB(10,10),IC(10),IL(10)
  COMPLEX*8  CEA(10,10,10),CEB(10,10),CEC(10)
  COMPLEX*16 CDA(10,10,10),CDB(10,10),CDC(10)
  COMPLEX*16 CQA(10,10,10),CQB(10,10),CQC(10)
  LOGICAL*1  LBA(10,10,10),LBB(10,10),LBC(10)
  LOGICAL*4  L4A(10,10,10),L4B(10,10),L4C(10)
  CHARACTER  SA*10,SB*20
  ! ****** CVCT3118 ******
  DATA    st1%RA/1000*1.0/,st1%RB/100*2.0/,st1%RC/10*3.0/
  DATA    st1%RE/100*2.0/
  DATA    st2%DA/1000*1.0/,st2%DB/100*2.0/,st2%DC/10*3.0/
  DATA    QA/1000*1.0/,QB/100*2.0/,QC/10*3.0/
  DATA    HA/1000*1/,HB/100*2/,HC/10*3/
  DATA    IA/1000*1/,IB/100*2/,IC/10*3/
  DATA    IL/1,2,3,4,5,6,7,8,9,10/
  DATA    CEA/1000*(1.,1.)/,CEB/100*(2.,1.)/,CEC/10*(1.,2.)/
  DATA    CDA/1000*(1.,1.)/,CDB/100*(2.,1.)/,CDC/10*(1.,2.)/
  DATA    CQA/1000*(1.,1.)/,CQB/100*(2.,1.)/,CQC/10*(1.,2.)/
  DATA    LBA/1000*.TRUE./,LBB/100*.TRUE./,LBC/10*.TRUE./
  DATA    L4A/1000*.TRUE./,L4B/100*.TRUE./,L4C/10*.TRUE./
  DATA    SA/'FACOM'/,SB/'FACOM OS4'/,DMIN/1000./
  DATA    J1/1/,J2/2/,J3/3/,J4/4/
  ! ****** CVCT3118 ******
  RMX=0.
  ID1=1
  DO I1=8,2,-1
     IF(L4A(I1,I1,I1).NEQV.L4B(ID1,ID1).OR.LBA(I1,I1,I1)) THEN
        WRITE(6,*) '*** CVCT3118 **SFGC.2**'
        WRITE(6,*) 'RD(ID1,ID1,ID1)=',st1%RA(ID1,ID1,ID1)
     ENDIF
     DIF=RMX-st1%RC(I1)
     IF(DIF) 11,12,12
11   RMX=st1%RC(I1)
     st1%RC(I1)=st1%RC(I1)-1.0
12   ID2=1
     RMIN=1000.0
     IF(I1.GT.8) GO TO 13
     DO I2=2,8
        ID2=ID2+J1*J2-1
        st1%RB(ID1,ID2)=st1%RB(ID2,ID1)
        CEB(ID1,ID2)=CEB(ID2,ID1)
        st2%DB(ID1,ID2)=DNINT(DBLE(st1%RB(ID1,ID2))-st2%DB(ID1,ID2+IL(1)))
        CDB(ID1,ID2)=CDABS(DCMPLX(CEB(ID1,ID2))-CDB(ID1,ID2+IL(1)))
        RMIN=AMIN1(RMIN,st1%RB(ID1,ID2-J1))
        DMIN=DMIN1(DBLE(RMIN),DMIN,st2%DB(ID1,ID2-1))
        ID3=J2*J1-1
        !VOCL LOOP,J1.GT.0,ID2.GT.0
        DO I3=8,2,-1
           ID3=ID3+1
           IF(ID3.GT.7.OR.L4A(ID3,ID3,ID3)) THEN
              IF(I3.LT.3.OR.LBA(ID3,ID3,ID3)) THEN
                 st1%RA(ID1,ID2,ID3)=0.0
                 st2%DA(ID1,ID2,ID3)=0.0
              ENDIF
           ENDIF
           st1%RA(ID1,ID2,ID3)=st1%RA(ID1,ID2,1)
           st2%DA(ID1,ID3-1,ID3)=st2%DA(ID1,ID3,ID2+J1)*st1%RC(ID3)
           IF(st1%RA(ID1+IL(1),ID2,ID3).GT.5.) THEN
              RSUM=RSUM+st1%RA(ID1,ID2+IL(1),ID3)+REAL(st2%DA(ID1,ID3,ID3))
           ENDIF
30         CONTINUE
        END DO
        IF(I1.EQ.1.AND.I2.EQ.10) THEN
           WRITE(6,*) '*** CVCT3118 ***SFGC.2**'
           WRITE(6,*) 'RSUM=',RSUM,'I1=',I1,'I2=',I2,'I3=',I3
        ENDIF
20      CONTINUE
     END DO
13   CONTINUE
     IF(I1.EQ.5) THEN
        WRITE(6,*) 'RC=',st1%RC
     ENDIF
     WRITE(6,*) '*** CVCT3118 ***SFGC.2**'
     WRITE(6,*) 'RMIN=',RMIN,'DMIN=',DMIN
10   CONTINUE
  END DO
  WRITE(6,*) 'CEA=',CEA,'CEB=',CEB,'CDB=',CDB
  WRITE(6,*) 'RA=',st1%RA,'DA=',st2%DA
  WRITE(6,*) 'RMX=',RMX
  STOP
END PROGRAM CV3118
