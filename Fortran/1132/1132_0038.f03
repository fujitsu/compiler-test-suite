!             CVCT3133            LEVEL=3        DATE=87.10.06
      PROGRAM CV3133
!
      CALL  EQUMCR
!
      STOP
      END
!
      SUBROUTINE EQUMCR
        type TAG
           INTEGER*4  IA(10)
           REAL   *4  RH(20)
        end type TAG
        type (TAG) st
      REAL   *4  RA(10),S,Y,S3,RC(10),Y1,S4,RD(10)
      REAL   *8  DA(10),DB(10),DC(10,10)
      LOGICAL*4  LA(10),LB(10)
      COMPLEX*8  CEA(10,10),CEB(10,10)
      COMPLEX*16 CDA(10),CDB(10),CDC(10,10)
!
      EQUIVALENCE (S,Y),(DIF,RS) &
                 ,(S3,RC(1)),(Y1,RC(3)) &
                 ,(S4,RD(1))
!
!
!
      DATA RA/10*1.0/,RC/10*1.0/,RD/10*1.0/, &
           st%RH/20*1./ &
          ,DA/10*1./,DB/10*1./,DC/100*1.0/ &
          ,st%IA/10*1/ &
          ,LA/10*.TRUE./,LB/10*.FALSE./ &
          ,CEA/100*(1.,1.)/,CEB/100*(1.,1.)/ &
          ,CDA/10*(1.,1.)/,CDB/10*(1.,1.)/,CDC/100*(1.,1.)/
!
!
!
!  LOOP1
!
!
      RMX=0.0
      S=RA(1)-1.
      DO I=1,10
        st%RH(I)=DA(I)*(1.,1.)+DB(I)
        S=S+st%RH(I)
        IF(Y-5.0) 11,12,13
   11     st%IA(I)=-1
         GO TO 14
   12     st%IA(I)=0
         GO TO 14
   13     st%IA(I)=1
   14   DIF=st%RH(I)-RMX
        IF(DIF.GT.0) THEN
          RMX=st%RH(I)
        ENDIF
        IF(RS.EQ.2) THEN
          st%RH(I)=0.0+DA(I)
        ENDIF
      END DO
!
      WRITE(6,*) '**CVCT3133**EQUMCR**LOOP1**'
      WRITE(6,*) 'RE=',st%RH(1:10)
      WRITE(6,*) 'IA=',st%IA
      WRITE(6,*) 'S=',S
      WRITE(6,*) 'RMX=',RMX
!
! LOOP2
!
      RMX=0.0
      DO I=1,10
       S3=DA(I)-RMX
        IF(S3.GT.0) THEN
          RMX=DA(I)
          JMX=I
        ENDIF
        IF(Y1.EQ.1.) THEN
          Y1=DA(I)*DB(I)
        ENDIF
      END DO
      WRITE(6,*) '**CVCT3133**EQUMCR**LOOP2**'
      WRITE(6,*) 'RMX=',RMX
      WRITE(6,*) 'JMX=',JMX
      WRITE(6,*) 'RC=',RC
!
!  LOOP3
!
!
       Y1=0.0
       DO I=1,10
         Y1=Y1+DA(I)
         IF(S3.GT.1.) THEN
           DA(I)=st%RH(I)+st%RH(I)
           DB(I)=RA(I)-RD(I)
         ENDIF
       END DO
!
       WRITE(6,*) '**CVCT3133**EQUMCR**LOOP3**'
       WRITE(6,*) 'RC=',RC
       WRITE(6,*) 'DA=',DA
       WRITE(6,*) 'DB=',DB
!
!
!  LOOP4
!
      Y1=0.0
      DO I=1,10
        Y1=Y1+DA(I)
        IF(S3.GT.1) THEN
      DA(I)=st%RH(I)+RC(I)
      DB(I)=RA(I)+RD(I)
      ENDIF
      END DO
!
      WRITE(6,*)'**CVCT3133**EQUMCR**LOOP4**'
      WRITE(6,*)'RC=',RC
      WRITE(6,*)'DA=',DA
      WRITE(6,*)'DB=',DB
!
      RETURN
      END
