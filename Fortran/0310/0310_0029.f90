CHARACTER(LEN=4),DIMENSION(5):: HA
NAMELIST/NAMEH/HA
HA='ABCD'
WRITE(1,*) '&NAMEH HA=2*"NAMELIST READ STATEMENT"/'
REWIND 1
READ(1,NML=NAMEH)
IF (HA(1)=='NAME' .AND. HA(2)=='NAME' .AND. &
   &HA(3)=='ABCD' .AND. HA(4)=='ABCD' .AND. &
   &HA(5)=='ABCD') THEN
  PRINT *,'*** ok ***'
END IF
CLOSE(1,STATUS='DELETE')
END
