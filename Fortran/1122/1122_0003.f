      PROGRAM IFP067
      REAL    RA(100),RB(100),RC(100),RD(100),RE(100),RF(100)
      REAL    RR(100),RX(3,3,3,3),RY(3,3,3,3),RZ(3,3,3,3)
      POINTER (PRA,RA),(PRB,RB),(PRC,RC),(PRD,RD),(PRE,RE),(PRF,RF),
     +        (PRR,RR),(PRX,RX),(PRY,RY),(PRZ,RZ)
      COMMON /PAREA/PRA,PRB,PRC,PRD,PRE,PRF
      PRA=MALLOC(100*4)
      PRB=MALLOC(100*4)
      PRC=MALLOC(100*4)
      PRD=MALLOC(100*4)
      PRE=MALLOC(100*4)
      PRF=MALLOC(100*4)
      PRR=MALLOC(100*4)
      PRX=MALLOC(81*4)
      PRY=MALLOC(81*4)
      PRZ=MALLOC(81*4)
      CALL INIT
      CALL SUB1(PRR)
      CALL INIT
      CALL SUB2(PRX,PRY,PRZ)
      STOP
      END
C
      SUBROUTINE INIT
      REAL    A(100),B(100),C(100),D(100),E(100),F(100)
      POINTER (PA,A),(PB,B),(PC,C),(PD,D),(PE,E),(PF,F)
      COMMON /PAREA/PA,PB,PC,PD,PE,PF
      DO 10 I=1,10
        DO 20 J=1,10
        A(1)=I
        IF(I.LE.5) THEN
           B(1)=INT(2*I-1)
         ELSE
           B(1)=INT(2*(I-5))
        END IF
        C(1)=0
        D(1)=1
        E(1)=2
        F(1)=3
        PA=PA+4
        PB=PB+4
        PC=PC+4
        PD=PD+4
        PE=PE+4
        PF=PF+4
  20    CONTINUE
  10  CONTINUE
      PA=PA-400
      PB=PB-400
      PC=PC-400
      PD=PD-400
      PE=PE-400
      PF=PF-400
      RETURN
      END
      SUBROUTINE SUB1(PR)
      REAL*4 RA(100),RB(100),RC(100),RD(100),RE(100),RF(100),RR(100)
      DATA   N/100/,M/1/
      POINTER (PA,RA),(PB,RB),(PC,RC),(PD,RD),(PE,RE),(PF,RF),(PR,RR)
      COMMON /PAREA/PA,PB,PC,PD,PE,PF
C
      DO 999 I=1,N/2
        RR(I)=4
        PR=PR+50*4
        RR(I)=4
        PR=PR-50*4
 999  CONTINUE
C
      DO 1000 J=1,M
C
        DO 50 I=1,N
          IF(I.LT.N-50) THEN
            RR(I)=RR(I)+RA(I)-RB(I)
          ELSEIF(I.LT.N-75) THEN
              RR(I)=RR(I)-RA(I)+RB(I)
            ELSE
              RR(I)=RR(I)+RA(I)+RB(I)
          ENDIF
   50   CONTINUE
C
        WRITE(6,*) ' **************** RR ***************'
        WRITE(6,10) RR
   10   FORMAT(5F15.7)
        I=1
        DO 100 WHILE(I.LE.N)
          IF(I.GT.N-50) GOTO 110
            RC(I)=RA(I)+RB(I)
  110       RC(I)=RC(I)+RA(I)/RB(I)
          I=I+1
  100   CONTINUE
        WRITE(6,*) ' **************** RC ***************'
        WRITE(6,10) RC
        DO 200 I=1,N
          IF(I-50) 210,220,230
  210       RD(I)=RD(I)+RA(I)
            GOTO 230
  220       RD(I)=RD(I)+RB(I)
  230       RD(I)=RD(I)/RA(I)
  200   CONTINUE
        WRITE(6,*) ' **************** RD ***************'
        WRITE(6,10) RD
        I=1
  300   CONTINUE
          IF(I.GT.N-50) GOTO 310
            RE(I)=RE(I)-RB(I)
            GOTO 320
  310     RE(I)=RE(I)-RA(I)
  320     I=I+1
        IF(I.LE.N) GOTO 300
        WRITE(6,*) ' **************** RE ***************'
        WRITE(6,10) RE
        I=1
  400   IF(I.GT.N) GOTO 450
          IF(I-50) 410,420,430
  410       RF(I)=RF(I)*RA(I)
          GOTO 440
  420       RF(I)=0
          GOTO 440
  430       RF(I)=RF(I)*RB(I)
  440     I=I+1
        GOTO 400
  450   WRITE(6,*) ' **************** RF ***************'
        WRITE(6,10) RF
C
 1000 CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(PX,PY,PZ)
      REAL*4 RA(10,10),RB(10,10),RC(10,10),RD(10,10),RE(10,10),RF(10,10)
      REAL*4 RX(3,3,3,3),RY(3,3,3,3),RZ(3,3,3,3)
      DATA   N/10/,M/3/,IX/5/,IY/-9/
      POINTER (PA,RA),(PB,RB),(PC,RC),(PD,RD),(PE,RE),(PF,RF)
      POINTER (PX,RX),(PY,RY),(PZ,RZ)
      COMMON /PAREA/PA,PB,PC,PD,PE,PF
C
      DO 999 I=1,3
        DO 888 J=1,27
          RX(1,1,1,1)=IX
          RY(1,1,1,1)=IY
          RZ(1,1,1,1)=0
          PX=PX+4
          PY=PY+4
          PZ=PZ+4
 888    CONTINUE
        IX=10-19*(I-1)
        IY=26-19*(I-1)
 999  CONTINUE
      PX=PX-81*4
      PY=PY-81*4
      PZ=PZ-81*4
      DO 100 I=1,10
        DO  100 J=1,10
          RC(J,I)=RA(J,I)+RB(J,I)*2
  100 CONTINUE
      WRITE(6,*) ' ************** RC **************'
      WRITE(6,10) RC
   10 FORMAT(5F15.7)
      DO 200 I=1,10
        DO 200 J=1,10
          RD(J,I)=RD(J,I)+RA(J,I)+RB(J,I)
  200 CONTINUE
      WRITE(6,*) ' ************** RD **************'
      WRITE(6,10) RD
      DO 300 I=1,N
        DO 300 J=1,10
          RE(J,I)=RE(I,J)+RA(J,I)*2+RB(J,I)
  300 CONTINUE
      WRITE(6,*) ' ************** RE **************'
      WRITE(6,10) RE
      DO 400 I=1,10
        DO 400 J=1,10
          RF(J,I)=RF(I,J)+RA(J,I)+RB(J,I)*3
  400 CONTINUE
      WRITE(6,*) ' ************** RF **************'
      WRITE(6,10) RF
      DO 500 I=1,3
        DO 500 J=1,M
          DO 500 K=1,3
            DO 500 L=1,M
              RZ(I,J,K,L)=RZ(I,J,K,L)+RX(I,J,K,L)+RY(I,J,K,L)
  500 CONTINUE
      WRITE(6,*) ' ************** RZ **************'
      WRITE(6,10) RZ
      RETURN
      END
