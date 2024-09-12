       REAL * 4 RDATA1(50),RDATA2(50),RDATA3(50),RDATA4(50)
       REAL * 8 RDATA5(50),RDATA6(50),RDATA7(50),RDATA8(50)
       LOGICAL * 4 LDATA1(50),LDATA2(50)
       DATA LDATA1/20*.TRUE.,10*.FALSE.,19*.TRUE.,.FALSE./
       DATA LDATA2/50*.FALSE./
       data RDATA1,RDATA2,RDATA3,RDATA4/200*0/
       data RDATA5,RDATA6,RDATA7,RDATA8/200*0/
       A=1.0
       DO 10 I=1,50
        IF (LDATA1(I)) THEN
         RDATA1(I)=A
         RDATA2(I)=1+1.1
         RDATA3(I)=A+2.1
         RDATA4(I)=A+3.1
         RDATA4(I)=A+4.1
         A=A+1.0
        ENDIF
  10   CONTINUE
       AA=5.5
       DO 20 I=1,50
        IF (LDATA1(I)) THEN
         RDATA5(I)=AA
         RDATA6(I)=AA
         RDATA7(I)=AA
         RDATA8(I)=AA
         LDATA1(I)=.TRUE.
         LDATA2(I)=.FALSE.
         RDATA1(I)=RDATA2(I)-RDATA3(I)+RDATA4(I)
         RDATA2(I)=RDATA4(I)-RDATA3(I)
         RDATA3(I)=RDATA1(I)*RDATA1(I)/RDATA1(I)
         RDATA4(I)=RDATA3(I)*RDATA3(I)/RDATA3(I)
         RDATA3(I)=RDATA3(I)**3
         RDATA4(I)=RDATA4(I)/2
        ENDIF
 20    CONTINUE
       WRITE(6,999)   RDATA1,RDATA2,RDATA3,RDATA4,LDATA1,LDATA2
 100   FORMAT(1H ,F11.2,F11.2,F11.2,F11.2,
     *         10(I8),10(I8))
       DO 30 I=1,50
        IF (LDATA1(I)) THEN
         LDATA1(I)=(LDATA1(I).AND.(.NOT.LDATA2(I)))
         LDATA2(I)=(LDATA2(I).OR.(.NOT.LDATA1(I)))
         LDATA1(I)=(LDATA1(I).NEQV.LDATA2(I))
        ENDIF
  30   CONTINUE
       WRITE(6,200) LDATA1,LDATA2
 200   FORMAT(1H ,10(L4),10(L4))
       INDEX=0
       DO 40 I=1,50
         IF (LDATA1(I)) THEN
           RDATA1(I)=RDATA1(I)+RDATA2(I)+RDATA1(I)
           LDATA2(I)=.TRUE.
           IF (LDATA2(I)) THEN
             RDATA2(I)=RDATA2(I)*RDATA2(I)/RDATA2(I)
             INDEX=I
           ELSE
             IF (RDATA1(I).EQ.RDATA2(I)) GOTO 40
           ENDIF
           IF (RDATA1(I).LT.RDATA2(I)) THEN
             RDATA1(I)=RDATA2(I)+RDATA1(I)
           ENDIF
           IF (RDATA1(I).LE.RDATA2(I)) THEN
             RDATA1(I)=RDATA3(I)+RDATA3(I)
           ENDIF
             IF (RDATA3(I).EQ.0.0) GOTO 40
             IF (RDATA4(I).NE.0.0) GOTO 40
             IF (RDATA5(I).GT.RDATA6(I)) THEN
               RDATA5(I)=RDATA6(I)
             ENDIF
             IF (RDATA5(I).GE.RDATA6(I)) THEN
               RDATA5(I)=RDATA6(I)
              ENDIF
              ENDIF
  40     CONTINUE
         RDATA1(INDEX)=0.0
         RDATA2(INDEX-1)=0.0
         RDATA3(INDEX+1)=0.0
         WRITE(6,300) RDATA1,RDATA2,RDATA3,RDATA4,RDATA5,RDATA6,
     *              RDATA7,RDATA8
 300     FORMAT(1H ,F7.2,F7.2,F7.2,F7.2,F7.2,
     *         F7.2,F7.2,F7.2)
         DO 60 I=1,50
          IF (LDATA2(I)) THEN
           RDATA1(I)= ABS(RDATA2(I))
           RDATA3(I)= ABS(RDATA4(I))
           RDATA5(I)= ABS(RDATA6(I))
           RDATA7(I)= ABS(RDATA8(I))
          ENDIF
  60     CONTINUE
         WRITE(6,400) RDATA1,RDATA3,RDATA5,RDATA7
 400     FORMAT(1H ,F7.2,F7.2,F7.2,F7.2)
999      format(10g20.6)
         STOP
         END
