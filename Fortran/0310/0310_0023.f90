CHARACTER(LEN=10) CH
OPEN(1,RECL=80)
INQUIRE(1,ACCESS=CH)
IF (CH=='SEQUENTIAL') THEN
  PRINT *,'*** ok ***'
END IF
CLOSE(1,STATUS='DELETE')
END