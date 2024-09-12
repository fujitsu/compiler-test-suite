        REAL * 8 RDATA1(50),RDATA2(50),RDATA3(50),RDATA4(50)
        REAL * 8 RDATA
        LOGICAL * 4 LDATA(50)
        DATA RDATA1/50*1.1/,RDATA2/50*3.3/,RDATA3/50*5.5/
        DATA LDATA/20*.TRUE.,10*.FALSE.,20*.TRUE./
        RDATA=0
        DO 10 I=1,50
          IF (.NOT.LDATA(I)) GOTO 10
          RDATA=MAX(RDATA,RDATA1(I))
  10    CONTINUE
        DO 20 I=1,50
          IF(.NOT.LDATA(I)) GOTO 20
          RDATA=MIN(RDATA,RDATA1(I))
  20    CONTINUE
        DO 60 I=1,50
          DD=RDATA-RDATA2(I)
          IF(DD.LT.0.0) GOTO 60
          RDATA=RDATA2(I)
          ADATA=RDATA1(I)
  60    CONTINUE
        DO 50 K=1,2
        DO 30 I=1,50
          IF (.NOT.LDATA(K)) GOTO 30
          RDATA=MAX(RDATA,RDATA1(I))
  30    CONTINUE
        DO 40 I=1,50
          IF(.NOT.LDATA(K)) GOTO 40
          RDATA=MIN(RDATA,RDATA1(I))
  40    CONTINUE
  50    CONTINUE
        WRITE(6,100)   RDATA
 100    FORMAT(1H ,F27.4,I8   )
        STOP
        END
