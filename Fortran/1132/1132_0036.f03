!             CVCT3127            LEVEL=2        DATE=83.06.10
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT3413                                       C 
!  2. PURPOSE        : EQUIVALENCE/COMMON                             C 
!  3. RESULTS        :                                                C 
!  4. ENVIRONMENT    : VPLEVEL(3)                                     C 
!  5. HISTORY        : 1983-6-8                                       C 
!*********************************************************************C 
      PROGRAM CV3413
!
!  EQUIVALENCE
!         ARRAY - ARRAY
!
      WRITE(6,*) '*** EQREP6 ***'
      CALL EQREP6
!
      WRITE(6,*) '*** EQREP7 ***'
      CALL EQREP7
!
      STOP
      END
!
      SUBROUTINE EQREP6

      REAL*4 RA(10),RB(20),RC(10),RD(20),RE(10),RF(10),RG(10)
!     REAL*8
      COMPLEX*8 CEA(10)
!     COMPLEX*16
      INTEGER*4  IA(10),IB(10),IC(20),ID(10)
      type TAG
      INTEGER*4  LIST(10)      
      end type
      type(TAG)st
      LOGICAL*4  LA(10),LT
!
!
      EQUIVALENCE (RA(1),RB(1)) &
                 ,(RC(1),RD(1)),(RE(1),RD(3)) &
                 ,(IA(1),IC(1)),(IB(1),IC(11)) &
                 ,(LA(1),ID(1)) &
                 ,(RF(1),CEA(1))
!
!
      DATA  RB/20*1.0/,RD/20*1.0/ &
           ,IC/20*1.0/ &
           ,ID/10*1/,CEA/10*(1.0,1.0)/ &
           ,st%LIST/1,2,3,4,5,6,7,8,9,10/
!
!  LOOP1
!
      DO 10 I=1,10
        RA(I)=I+I*I
        RG(I)=RA(I)+RB(I+10)
        RC(I)=RG(I)+RA(I)
        RB(I+10)=RE(I)+RE(I)*2.5
        LT=RC(I).GT.RB(I+10)
        LA(st%LIST(I))=LT
   10 CONTINUE
      WRITE(6,*)'***CVCT3413*EQREP6*LOOP1**'
      WRITE(6,*)'RA=',RA
      WRITE(6,*)'RG=',RG
      WRITE(6,*)'RC=',RC
      WRITE(6,*)'RB=',RB
      WRITE(6,*)'LA=',LA
!
!
!
! LOOP2
!
      DO 20 I=1,10
        IA(I)=I+ID(I)
        CEA(I)=RG(I)+RG(I)*(0.,1.)
        RA(I)=RF(I)+IB(I)
        RC(I)=RB(I)+RG(I)
        LA(I)=RG(I).GE.RA(I)
   20 CONTINUE
!
      WRITE(6,*) '**CVCT3413**EQREP6**LOOP2**'
      WRITE(6,*) 'IA=' ,IA
      WRITE(6,*) 'CEA=',CEA
      WRITE(6,*) 'RA=' ,RA
      WRITE(6,*) 'RC=' ,RC
      WRITE(6,*) 'LA=' ,LA
!
      RETURN
      END
      SUBROUTINE EQREP7
!
!  THE NUMBER OF EQUIVALENCE GROUP >= 40
!
      REAL*4  RA(10),RB(10),RC(10),RD(20),RT,RS,RV,RK,RJ,RP
      REAL*8  DA(10),DB(10),DC(10),DD(20),DT,DS,DV,DK,DJ,DP
      REAL*8  QA(10),QB(10),QC(10),QD(20),QT,QS,QV,QK,QJ,QP
      LOGICAL LA(10),LB(10),LC(10),LD(20),LS,LV,LK,LJ,LP
      INTEGER IA(10),IB(10),IC(10),ID(20),IT,IS,IV,IK,IJ,IP
! EQUIVALENCE
!
      EQUIVALENCE  (RA(1),RB(1)),(RC(1),RD(1)),(RB(1),RD(10)) &
                  ,(DA(1),DB(1)),(DC(1),DD(1)),(DB(1),DD(10)) &
                  ,(QA(1),QB(1)),(QC(1),QD(1)),(QB(1),QD(10)) &
                  ,(LA(1),LB(1)),(LC(1),LD(1)),(LB(1),LD(10)) &
                  ,(IA(1),IB(1)),(IC(1),ID(1)),(IB(1),ID(10)) &
!
                  ,(RT,RA(1)),(RS,RC(10)),(RV,RD(20)) &
                  ,(DT,DA(1)),(DS,DC(10)),(DV,DD(20)) &
                  ,(QT,QA(1)),(QS,QC(10)),(QV,QD(20)) &
                  ,(LS,LC(10)),(LV,LD(20)) &
                  ,(IT,IA(1)),(IS,IC(10)),(IV,ID(20)) &
!
                  ,(RK,RA(2)),(RJ,RC(9)),(RP,RD(19)) &
                  ,(DK,DA(2)),(DJ,DC(9)),(DP,DD(19)) &
                  ,(QK,QA(2)),(QJ,QC(9)),(QP,QD(19)) &
                  ,(LK,LA(2)),(LJ,LC(9)),(LP,LD(19)) &
                  ,(IK,IA(2)),(IJ,IC(9)),(IP,ID(19))
!
!
      DATA RD/20*1.0/,DD/20*1.0/,QD/20*1.0/,LD/20*.TRUE./,ID/20*1/
!
!
!
! LOOP1 ---REAL*4---
!
      DO 10 I=2,9
        RA(I)=RC(I)+RS
        RT=RA(I)+RV+RP
        IF(I.EQ.5) THEN
          RB(I)=RT+RK+RP
          RA(I)=RB(I)+RC(I)
        ENDIF
        RK=RA(I)+RB(I+1)
        RP=RA(I-1)
        RJ=RB(I+1)
   10 CONTINUE
!
      WRITE(6,*)'**CVCT3413*EQREP7*LOOP7**'
      WRITE(6,*)'RD=',RD

      RETURN
      END


