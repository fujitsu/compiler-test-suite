CHARACTER(LEN=2) B(4)
DATA B(2),B(3),B(4)/'AB','CD','E'/
IF(ICHAR(B(1))==0 .AND. B(2)=='AB' .AND. &
  &B(3)=='CD' .AND. B(4)=='E') THEN
  PRINT *,'*** ok ***'
END IF
END
