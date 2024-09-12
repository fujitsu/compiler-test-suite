          DIMENSION A(16),B(16)
          INTEGER   M
      DATA A /' TES','T FO','R DA','TA S','ET R','EFER','ENCE',
     *        ' NUM','BER ','WHIC','H IS',' INT','EGER',' VAR',
     *        'IABL','E . '/
          DO 10 M=1,2
               WRITE(M,100) A
               REWIND M
   10     CONTINUE
          READ(1,100) B
          I=1
          DO 20 L=1,16
               IF(A(L).NE.B(L)) GO TO 999
   20     CONTINUE
   99     WRITE(6,200) I,A
          WRITE(6,300) B
  200     FORMAT(' ','UNIT',I2,' ... ','DATA-A(',16A4,')')
  300     FORMAT(' ',8X,'OK ','DATA-B(',16A4,')' /)
          IF(I.NE.1) GO TO 9999
   40     N=I+1
          READ(N,100) B
          I=I+1
          DO 30 L=1,16
               IF(A(L).NE.B(L)) GO TO 999
   30     CONTINUE
          GO TO 99
  999     WRITE(6,200) I,A
          WRITE(L,400) B
  400     FORMAT(' ',8X,'NG ','DATA-B(',16A4,')' /)
          IF(I.EQ.1) GO TO 40
  100     FORMAT (16A4)
 9999     STOP
      E N D
