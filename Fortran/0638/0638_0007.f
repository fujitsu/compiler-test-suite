        INTEGER * 4 IDATA1(50),IDATA2(50),IDATA3(50),IDATA4(50)
        REAL * 4 RDATA1(50),RDATA2(50),RDATA3(50),RDATA4(50)
        REAL * 8 RDATA5(50),RDATA6(50),RDATA7(50),RDATA8(50)
        COMPLEX * 16 CDATA1(50),CDATA2(50)
        LOGICAL * 4 LDATA1(50),LDATA2(50)
        DATA LDATA1/20*.TRUE.,10*.FALSE.,20*.TRUE./
        DATA LDATA2/20*.FALSE.,10*.TRUE.,20*.TRUE./
        DO 10 I=1,50
          IDATA1(I)=1
          IDATA2(I)=2
          IDATA3(I)=IDATA1(I)
          IDATA4(I)=IDATA2(I)
          RDATA1(I)=0.1
          RDATA2(I)=0.1
          RDATA3(I)=RDATA1(I)
          RDATA4(I)=RDATA2(I)
          RDATA5(I)=3.3
          RDATA6(I)=4.4
          RDATA7(I)=RDATA5(I)
          RDATA8(I)=RDATA6(I)
          CDATA1(I)=(3.3,-1.65)
          CDATA2(I)=CDATA1(I)
          LDATA1(I)=(LDATA1(I).AND.LDATA2(I))
          LDATA1(I)=(LDATA1(I).OR.LDATA2(I))
          LDATA1(I)=(LDATA1(I).NEQV.LDATA2(I))
  10   CONTINUE
       WRITE(6,*) IDATA3,IDATA4,RDATA3,RDATA4,RDATA7,RDATA8
       WRITE(6,*) CDATA1,CDATA2

       DO 20 I=1,50
         IF (LDATA1(I)) THEN
           RDATA1(I)=RDATA1(I)+RDATA2(I)
           RDATA2(I)=RDATA1(I)-RDATA2(I)
           RDATA3(I)=RDATA1(I)*RDATA2(I)
           RDATA4(I)=RDATA1(I)/RDATA2(I)
           LDATA1(I)=(.NOT.LDATA1(I))
           RDATA1(I)=RDATA1(I)**2
           RDATA1(I)=RDATA1(I)/2
           RDATA2(I)=RDATA2(I)**3
           RDATA2(I)=RDATA2(I)/3
           RDATA3(I)=RDATA3(I)**4
           RDATA3(I)=RDATA3(I)/4
           LDATA2(I)=(.NOT.LDATA1(I))
           LDATA2(I)=(LDATA1(I).AND.LDATA2(I))
           LDATA2(I)=(LDATA1(I).OR.LDATA2(I))
           LDATA2(I)=(.NOT.LDATA2(I))
           LDATA2(I)=(.TRUE..AND.LDATA2(I))
           LDATA2(I)=(LDATA1(I).OR.LDATA2(I))
         ELSE
           IDATA1(I)=INT(RDATA1(I))
           IDATA2(I)=IFIX(RDATA2(I))
           IDATA3(I)=INT(RDATA3(I))
           IDATA4(I)=INT(RDATA4(I))
           RDATA1(I)=SIN(RDATA1(I))
           RDATA2(I)=SIN(RDATA2(I))
           RDATA3(I)=FLOAT(IDATA1(I))
           RDATA4(I)=FLOAT(IDATA2(I))
           IDATA=RDATA4(I)
         ENDIF
  20    CONTINUE
        DO 30 I=1,50
          IF (LDATA2(I)) THEN
            IDATA1(I)=IABS(IDATA1(I))
            IDATA2(I)=IABS(IDATA2(I))
            IDATA3(I)=IABS(IDATA3(I))
            IDATA4(I)=IABS(IDATA4(I))
            RDATA1(I)=ABS(RDATA1(I))
            RDATA2(I)=ABS(RDATA2(I))
            RDATA3(I)=ABS(RDATA3(I))
          ENDIF
  30    CONTINUE
        DO 40 I=1,50
          IF (IDATA1(I).LT.IDATA2(I)) THEN
            IDATA1(I)=IDATA2(I)
          ENDIF
          IF (IDATA3(I).LE.IDATA4(I)) THEN
            IDATA3(I)=IDATA4(I)
          ENDIF
          IF (RDATA1(I).EQ.RDATA2(I)) THEN
            RDATA1(I)=RDATA2(I)
          ENDIF
          IF (RDATA3(I).NE.RDATA4(I)) THEN
            RDATA3(I)=RDATA4(I)
          ENDIF
          IF (RDATA1(I).GT.RDATA2(I)) THEN
            CDATA1(I)=CDATA2(I)
          ENDIF
          IF (RDATA1(I).GE.12.12) THEN
            CDATA1(I)=CDATA2(I)
          ENDIF
 40     CONTINUE
        WRITE(6,*) IDATA4,RDATA1,RDATA4,RDATA6,RDATA8
        WRITE(6,*) CDATA1,CDATA2,LDATA1,LDATA2
        STOP
        END
