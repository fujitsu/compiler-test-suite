       REAL * 8 RDATA1(50),RDATA2(50),RDATA3(50),RDATA4(50)
       REAL * 8 RDATA5(50),RDATA
       LOGICAL * 4 LDATA(50)
       DATA RDATA1/50*1.1/,RDATA2/50*2.1/,RDATA3/50*3.1/
       DATA RDATA5/50*0.0/
       DATA LDATA/20*.TRUE.,10*.FALSE.,20*.TRUE./
       DO 10 I=1,50
         IF(LDATA(I)) THEN
         RDATA = RDATA1(I)+RDATA2(I)
         RDATA4(I)=SIN(RDATA)
         RDATA5(I)=RDATA+RDATA4(I)
         ENDIF
 10    CONTINUE
       WRITE(6,100) RDATA5
 100   FORMAT(1H ,10(F7.3))
       DO 20 I=1,50
         IF(LDATA(I)) THEN
         RDATA = RDATA1(I)-RDATA2(I)
         RDATA4(I)=SIN(RDATA)
         RDATA5(I)=RDATA-RDATA4(I)
         ENDIF
 20   CONTINUE
      WRITE(6,100) RDATA5
       DO 30 I=1,50
         IF(LDATA(I)) THEN
         RDATA = RDATA1(I)
         RDATA4(I)=SIN(RDATA)
         ENDIF
 30   CONTINUE
      WRITE(6,100) RDATA5
       DO 40 I=1,50
         IF(LDATA(I)) THEN
         RDATA=RDATA4(I)
         RDATA = RDATA1(I)/RDATA2(I)
         RDATA4(I)=SIN(RDATA)
         RDATA=RDATA4(I)/RDATA4(I)
         ENDIF
  40   CONTINUE
      WRITE(6,100) RDATA5
       DO 60 I=1,50
         RDATA = RDATA1(I)
         RDATA3(I)=RDATA+RDATA1(I)
         RDATA4(I)=SIN(RDATA)
         RDATA5(I)=RDATA+RDATA4(I)
 60   CONTINUE
      WRITE(6,100) RDATA5
       DO 70 I=1,50
         RDATA = RDATA1(I)
         RDATA5(I)=RDATA-RDATA1(I)
         RDATA4(I)=SIN(RDATA)
         RDATA5(I)=RDATA-RDATA4(I)
 70   CONTINUE
      WRITE(6,100) RDATA5
       DO 80 I=1,50
         RDATA = RDATA1(I)
         RDATA4(I)=SIN(RDATA)
         RDATA5(I)=RDATA-RDATA4(I)
 80   CONTINUE
      WRITE(6,100) RDATA5
       DO 90 I=1,50
         RDATA = RDATA1(I)
         RDATA = RDATA/RDATA1(I)
         RDATA4(I)=SIN(RDATA)
         RDATA5(I)=RDATA/RDATA4(I)
 90   CONTINUE
      WRITE(6,100) RDATA5
       WRITE(6,1000) RDATA3,RDATA4,RDATA5
 1000  FORMAT(1H ,F7.3,F7.3,F7.3)
       STOP
       END
