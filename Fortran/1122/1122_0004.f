      PROGRAM IFP069
      REAL RA(50),RB(50),RC(50),RD(50),RE(50),RF(50),RG(50)
      POINTER (AP,RA),(BP,RB),(CP,RC),(DP,RD),(EP,RE),(FP,RF),(GP,RG)
      COMMON /PAREA/AP,BP,CP,DP,EP,FP,GP
      AP=MALLOC(50*4)
      BP=MALLOC(50*4)
      CP=MALLOC(50*4)
      DP=MALLOC(50*4)
      EP=MALLOC(50*4)
      FP=MALLOC(50*4)
      GP=MALLOC(50*4)
      CALL INIT(1)
      CALL SUB1
      CALL INIT(2)
      CALL SUB2
      STOP
      END
C
      SUBROUTINE INIT(KIND)
      REAL RA(50),RB(50),RC(50),RD(50),RE(50),RF(50),RG(50)
      INTEGER IB(5)/2,9,4,3,10/,IC(5,2)/5*0,3,8,3,7,11/,
     +IA(5)/9,8,5,4,10/,ID(5,2)/5*0,4,7,2,8,2/,IE(5,2)/5*0,5,6,1,9,13/
      POINTER (AP,RA),(BP,RB),(CP,RC),(DP,RD),(EP,RE),(FP,RF),(GP,RG)
      COMMON /PAREA/AP,BP,CP,DP,EP,FP,GP
      DO 1 I=1,10
        DO 1 J=1,5
 1        RA((I-1)*5+J)=I
      DO 10 I=0,4,1
        DO 20 J=1,10
          IF(KIND.EQ.2) GOTO 100
          RA(I*10+J)=IA(I+1)
 100      RB(I*10+J)=IB(I+1)
          RC(I*10+J)=IC(I+1,KIND)
          RD(I*10+J)=ID(I+1,KIND)
          RE(I*10+J)=IE(I+1,KIND)
          RF(I*10+J)=0
          RG(I*10+J)=0
 20     CONTINUE
 10   CONTINUE
      RETURN
      END
      SUBROUTINE SUB1
      REAL RA(50),RB(50),RC(50),RD(50),RE(50),RF(50),RG(50)
      POINTER (AP,RA),(BP,RB),(CP,RC),(DP,RD),(EP,RE),(FP,RF),(GP,RG)
      DATA N/50/
      COMMON /PAREA/AP,BP,CP,DP,EP,FP,GP
      I=0
      DO 100 WHILE(I.LE.4)
        I=I+1
        J=MOD(I,2)+1
        GOTO (110,120),J
        RC(I)=RC(I)+1
  110   DO 200 J=1,N
          IF(J.LT.N .AND. I.EQ.1 .AND. RA(I).GT.5) THEN
            RC(J)=RC(J)+RA(J)**2+RB(J)
          ELSE
            RC(J)=RC(J)+RA(J)+RB(J)**2
          ENDIF
  200   CONTINUE
        GOTO 100
  120   DO 300 J=1,50
          IF(J.GT.N .OR. I.EQ.2 .OR. RB(I).LE.0) THEN
            RC(J)=RC(J)+RA(J)+RB(J)
          ELSE
            RC(J)=RC(J)+RA(J)-RB(J)
          ENDIF
  300   CONTINUE
  100 CONTINUE
C
      WRITE(6,*) ' ************ RC ************'
      WRITE(6,10) RC
   10 FORMAT(5F15.6)
      DO 400 I=2,4
        J=MOD(I,2)+1
        ASSIGN 420 TO LABEL
        IF(J.EQ.2) ASSIGN 410 TO LABEL
        GOTO LABEL(410,420)
  410   DO 500 J=1,50
          IF (RA(J).GT.RB(J)) THEN
            IF (I.GT.2) THEN
              RD(J)=RD(J)+RA(J)*RB(J)
            ELSE
              RD(J)=RD(J)-RA(J)*RB(J)
            ENDIF
            ELSE
            RD(J)=0
          ENDIF
  500   CONTINUE
        GOTO 400
  420   DO 600 J=1,50
          IF(RA(J).LE.RB(J)) THEN
            IF(I.LE.2) THEN
              RD(J)=RD(J)+RA(J)**2
            ELSE
              RD(J)=RD(J)+RB(J)**2
            ENDIF
            ELSE
            RD(J)=0
          ENDIF
  600   CONTINUE
  400 CONTINUE
C
      WRITE(6,*) ' ************ RD ************'
      WRITE(6,10) RD
      I=0
      DO 700 WHILE(I.LT.2)
        I=I+1
        DO 800 J=1,50
          RE(J)=RA(J)+RB(J)
  800   CONTINUE
  700 CONTINUE
C
      WRITE(6,*) ' ************ RE ************'
      WRITE(6,10) RE
C
      DO 900 I=1,50
        RF(I)=RF(I)+RA(I)+RB(I)
        IF(RF(I).GT.50) THEN
          WRITE(6,*) ' ************ RF ************'
          WRITE(6,10) RF
          GOTO 910
        ENDIF
        RF(I)=RF(I)+RA(I)+RB(I)
  900 CONTINUE
          WRITE(6,*) ' ************ RF ************'
          WRITE(6,10) RF
      DO 1000 I=1,50
        RG(I)=RG(I)+RA(I)
 1000 CONTINUE
  910 WRITE(6,*) ' ************ RG ************'
      WRITE(6,10) RG
      RETURN
      END
      SUBROUTINE SUB2
      REAL RA(50),RB(50),RC(50),RD(50),RE(50),RF(50),RG(50)
      REAL RH(50),RI(50)
      DATA RH/50*0/,RI/50*1/,N/50/
      POINTER (AP,RA),(BP,RB),(CP,RC),(DP,RD),(EP,RE),(FP,RF),(GP,RG)
      COMMON /PAREA/AP,BP,CP,DP,EP,FP,GP
      DO 100 I=1,N
        RG(I)=RG(I)+1
        IF (RA(I).EQ.1) THEN
          RG(I)=RG(I)+RB(I)
        ELSEIF (RA(I).EQ.2) THEN
          RG(I)=RG(I)+RC(I)
        ELSEIF (RA(I).EQ.3) THEN
          RG(I)=RG(I)*RB(I)
        ELSEIF (RA(I).EQ.4) THEN
          RG(I)=RG(I)*RC(I)
        ELSEIF (RA(I).EQ.5) THEN
          RG(I)=RG(I)-RB(I)
        ELSEIF (RA(I).EQ.6) THEN
          RG(I)=RG(I)-RC(I)
        ELSEIF (RA(I).EQ.7) THEN
          RG(I)=RG(I)+RB(I)*2
        ELSEIF (RA(I).EQ.8) THEN
          RG(I)=RG(I)+RC(I)*2
        ELSEIF (RA(I).EQ.9) THEN
          RG(I)=RG(I)-RB(I)*2
        ELSEIF (RA(I).EQ.10) THEN
          RG(I)=0
        ENDIF
  100 CONTINUE
      WRITE(6,* ) ' ************* RG ***********'
      WRITE(6,10) RG
   10 FORMAT(5F15.7)
      DO 200 I=1,N
        IF (RC(I).EQ.RD(I)) THEN
          IF (RD(I).LT.RE(I)) THEN
            IF (RE(I).GT.RF(I)) THEN
              IF(RA(I))30,40,50
   30           RH(I)=RH(I)+RA(I)+RB(I)+RC(I)
                GOTO 20
   40           RH(I)=RH(I)+RA(I)-RB(I)+RC(I)
                GOTO 20
   50           RH(I)=RH(I)+RA(I)+RB(I)-RC(I)
            ENDIF
          ELSE
            RH(I)=RH(I)+RB(I)+RC(I)+RD(I)
          ENDIF
        ELSE
          RH(I)=RH(I)+RC(I)+RD(I)+RF(I)
        ENDIF
   20   CONTINUE
  200 CONTINUE
      WRITE(6,* ) ' ************* RH ***********'
      WRITE(6,10) RH
      DO 300 I=1,5
        RI(I)=RI(I)+RF(I)
        IF(RB(I).EQ.5) GOTO 60
          DO 400 J=1,N
            IF(RC(J).EQ.11) GOTO 70
              RI(J)=RA(J)*2+RB(J)*2+RC(I)
                IF(RI(I).GT.30) GOTO 80
              RI(J)=RI(J)+1
            IF(RD(J).GT.0) THEN
              RI(J)=RI(J)-1
              GOTO 60
            ENDIF
  400     CONTINUE
   70   RI(I)=RI(I)+1
  300 CONTINUE
C
   60   RI(I)=RI(I)+RA(I)
        GOTO 90
   80   RI(J)=RI(J)+RB(J)
C
   90 WRITE(6,* ) ' ************* RI ***********'
      WRITE(6,10) RI
      RETURN
      END
