!             CVCT3129            LEVEL=2        DATE=83.06.11
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT3415                                       C 
!  2. PURPOSE        : EQUIVALENCE/COMMON                             C 
!  3. RESULTS        :                                                C 
!  4. ENVIRONMENT    : VPLEVEL(3)                                     C 
!  5. HISTORYRA(13)        : 1983-6-9                                       C 
!*********************************************************************C 
      PROGRAM CV3415
!
!  EQUIVALENCE
!      SIMPLE VARIABLE - ARRAY
!  IF STATEMENT
!
      WRITE(6,*) '***CVCT3414***'
      CALL EQIF3
!
      STOP
      END

      SUBROUTINE EQIF3
!
!
        type TAG
      REAL   *4   RA(20)
      end type
      type(TAG) st
      REAL   *4   RB(10),RC(10)
      REAL   *8   DX,DY,DZ,   DA(20) ,DB(10),DC(10,10)
      COMPLEX*8   CEX,CEY,CEZ,CEA(20)
      COMPLEX*16  CDX,CDY,CDZ,CDA(20)
      LOGICAL*4   LX,LY,LZ,   LA(20),L(10)
      INTEGER*4   IX,IY,IZ,   IA(20),IB(10)
!
!
      EQUIVALENCE (DX,DA(1))  ,(DY ,DA(13) ),(DZ,CDZ),(DB(1),DZ) &
                 ,(CEX,CEA(1)),(CEY,CEA(13)) &
                 ,(CDX,CDA(1)),(CDY,CDA(13)) &
                 ,(LX,LA(1))  ,(LY ,LA(13) ),(LZ,IZ) ,(IB(1),IZ) &
                 ,(IX,IA(1))  ,(IY ,IA(13) )
!
!
      DATA st%RA /20*1.0/    ,RB/10*1.0/,RC/10*1.0/ &
          ,DA /20*1.0/    ,DB/10*1.0/,DC/100*1.0/ &
          ,CEA/20*(1.,1.)/ &
          ,CDA/20*(1.,1.)/ &
          ,LA /20*.TRUE./ &
          ,IA /20*1/      ,IB/10*1/
!
!
! LOOP1
!
      DO 10 I=1,10
        st%RA(13)=I*I
        DY=I*I+1
        CEY=CMPLX(I,I)
        LY =I.GE.5.AND.I.LE.9
        IY =I+I*I
        IF(st%RA(I+5).GT.8.AND.DA(I+5).GT.7.AND.CABS(CEA(I+5)).GT.4.AND. &
           LA(I+5).AND.IA(I+5).GT.14) THEN
          RB(I)=RC(I)
          DB(I)=RC(I)*RC(I)+1
          IB(I)=RC(I)*2
        ENDIF
        RB(1)=CMPLX(st%RA(1),st%RA(1))
        CDZ=CMPLX(DX,DX)
        IZ =IX+1
        DO 20 J=1,10
          DC(I,J)=DC(I,J)+st%RA(1)
   20   CONTINUE
        st%RA(I)=RB(1)+1+st%RA(20)
        DA(I)=DZ+IA(20)
        L(I) =LZ.OR.st%RA(I).GT.5
   10 CONTINUE
!
      WRITE(6,*) '**CVCT3416**EQIF3**LOOP1***'
      WRITE(6,*) 'RA=', st%RA
      WRITE(6,*) 'DA=', DA
      WRITE(6,*) 'CEA=',CEA
      WRITE(6,*) 'CDA=',CDA
      WRITE(6,*) 'RB=', RB
      WRITE(6,*) 'DB=', DB
      WRITE(6,*) 'LA=', LA
      WRITE(6,*) 'IA=', IA
      WRITE(6,*) 'L=' , L
      WRITE(6,*) 'IB=', IB
      WRITE(6,*) 'DC=', DC
      RETURN
      END
