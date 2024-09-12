      DO 30 I=1,100
        IF(I.NE.0) goto 999
  30  CONTINUE
 998  WRITE(6,*) '*****  NG  *****'
      STOP
 999  WRITE(6,*) '*****  OK  *****'
      STOP
      END
