!             CVCT3123            LEVEL=1        DATE=83.02.25
PROGRAM CV3115
  REAL*4  RA(10,10,10),RB(10,10),RC(10)
  REAL*8  DA(10,10,10)
  REAL*8  QA(10,10,10),QB(10,10),QC(10)
  type TAG
  LOGICAL*4  L4A(10,10,10)
  end type
  type(TAG) st1
  ! ****** CVCT3115 ******
  DATA    RA/1000*1.0/,RB/100*2.0/,RC/10*3.0/
  DATA    DA/1000*1.0/
  DATA    QA/1000*1.0/,QB/100*2.0/
  DATA    st1%L4A/1000*.TRUE./
  DATA    J1/1/,J2/2/,J3/3/
  ID1=2
  DO I1=1,J1*J2+6
     SW=1.0
     ID2=2
     DO I2=10,3,-1
        IF(I2.GT.J2*J3+1) GO TO 20
        ID3=2
        ID4=10
        DO I3=1,8
           IF(SW.EQ.1.) THEN
              st1%L4A(ID3,ID2,I3)=.TRUE.
           ELSE
              st1%L4A(ID3,ID2-1,I3)=.FALSE.
           ENDIF
           ID3=ID3+1
           ID4=ID4-1
30      END DO
        ID2=ID2+1
        IF(st1%L4A(I3,ID1,ID2)) THEN
           SW=0.0
        ENDIF
20   END DO
     ID1=ID1+1
10 END DO
  WRITE(6,*)'*** CVCT3115 **SFGC.2**'
  WRITE(6,*) 'L4A=',st1%L4A
  STOP
END 
