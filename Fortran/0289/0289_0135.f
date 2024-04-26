      PROGRAM MAIN
      INTEGER*4 DAYMT(12),DAYT(12,7,6),COLUMN,ROW
      INTEGER*4 WDAYT(12,7,6),WCOLUMN,WROW
      DATA DAYMT/31,28,31,30,31,30,31,31,30,31,30,31/
      POINTER (PDAYT,DAYT),(PCOLUMN,COLUMN),(PROW,ROW)
      PDAYT=LOC(WDAYT(1,1,1))
      PCOLUMN=LOC(WCOLUMN)
      PROW=LOC(WROW)
      DO 10 I=1,12
      DO 10 J=1,7
      DO 10 K=1,6
           DAYT(I,J,K)=0
   10 CONTINUE
      ROW=1
      DO 20 I=1,12
        COLUMN=1
        DO 21 J=1,DAYMT(I)
           IF(ROW.EQ.8) THEN
             ROW=1
             COLUMN=COLUMN+1
           ENDIF
           DAYT(I,ROW,COLUMN)=J
           ROW=ROW+1
   21   CONTINUE
   20 CONTINUE
      IMONTH=4
      IDAY=18
      DO 30 I=1,7
        IF(DAYT(IMONTH,I,1).NE.0) GOTO 31
   30 CONTINUE
   31 ROW=MOD((IDAY+I-1),7)
      IF(ROW.EQ.3) THEN
         WRITE(6,*) '*** OK ***'
      ELSE
         WRITE(6,*) '*** NG ***'
      ENDIF
      IF(ROW.EQ.1) THEN
         WRITE(6,*) '**** SUNDAY ***'
      ELSE IF(ROW.EQ.2) THEN
         WRITE(6,*) '**** MONDAY ***'
      ELSE IF(ROW.EQ.3) THEN
         WRITE(6,*) '**** TUESDAY ***'
      ELSE IF(ROW.EQ.4) THEN
         WRITE(6,*) '**** WEDNESDAY ***'
      ELSE IF(ROW.EQ.5) THEN
         WRITE(6,*) '**** THURSDAY ***'
      ELSE IF(ROW.EQ.6) THEN
         WRITE(6,*) '**** FRIDAY ***'
      ELSE IF(ROW.EQ.0) THEN
         WRITE(6,*) '**** SATURDAY ***'
      ENDIF
      STOP
      END
